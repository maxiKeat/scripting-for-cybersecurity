#!/bin/bash

# 1. Store the number of lines in case/logs/access.log in WEB_LINES and print it
WEB_LINES=$(wc -l < case/lab04-data/logs/access.log)
echo "Total lines in access.log: $WEB_LINES"

# 2. Store the number of BLOCK decisions in case/logs/firewall.log and print a sentence
BLOCK_COUNT=$(grep -c "BLOCK" case/lab04-data/logs/firewall.log)
echo "There were $BLOCK_COUNT blocked connections recorded in the firewall log."

# 3. Store the single most common failed-login source IP and print a sentence
TOP_IP=$(grep "Failed password" case/lab04-data/logs/auth.log | awk '{print $11}' | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')
echo "The single most common failed-login source IP is $TOP_IP."

# 4. Difference between wc -l file and wc -l < file
echo " Explanation (wc -l):"
echo " 'wc -l case/lab04-data/logs/auth.log' passes the filename as an argument, therefore wc prints both the count and the filename."
echo " 'wc -l < case/lab04-data/logs/auth.log' redirects the file content into standard input so wc has no filename to display and prints only the number."

# 5. Effect of removing quotes around "$TOP_ATTACKERS"
echo "Removing the double quotes around "$TOP_ATTACKERS" causes the shell to perform word splitting on newlines and extra spaces, collapsing the 3-line output onto a single horizontal line separated by single spaces."

# 6. Single echo for sqlmap request count and percentage using $(( ))
SQLMAP_COUNT=$(grep -c "sqlmap" case/lab04-data/logs/access.log)
echo "There were $SQLMAP_COUNT requests from sqlmap, which accounts for $(( SQLMAP_COUNT * 100 / WEB_LINES ))% of all web traffic."
