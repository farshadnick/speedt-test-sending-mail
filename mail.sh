!#/bin/bash
MAIL=./email_test.txt
DATE=$(date '+%Y-%m-%d %H:%M:%S')
speedtest > speedres
UPLOAD=$(cat speedres    | awk 'NR==9' | awk '{print $3}')
DOWNLOAD=$(cat speedres  | awk 'NR==8' | awk '{print $3}')
TO="mrnickfetrat@gmail.com"

echo "Subject: Bandwith Test in $DATE" > $MAIL
echo "To: $TO " >> $MAIL
echo "From: mrfarshadnick@gmail.com" >> $MAIL
echo "" >> $MAIL
echo "Download is  $DOWNLOAD and upload is $UPLOAD" >> $MAIL
echo "Test sent on $DATE" >> $MAIL
echo "" >> $MAIL
echo "Have a nice day!" >> $MAIL


cat $MAIL |  ssmtp -vvvvv $TO
