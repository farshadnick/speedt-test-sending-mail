# speedt-test-sending-mail
Using Speedtest cli and sending result  to Gmail 

Before Running This Script Please be sure your Following Item is configure :

1- install ssmtp for determing  yout SMTP Server that you want to send email from it 

		apt-get install ssmtp
**
**
SMTP Config for Gmail** would be like this 

		echo -n 
		"root=postmaster
		mailhub=smtp.gmail.com:587
		useSTARTTLS=YES
		AuthUser=YOUR_EMAIL@GMAIL.COM
		AuthPass=YOUR_GMAIL_PASSWORD" >> /etc/ssmtp/ssmtp.conf

****2- **important NOTE :**  You Must Turn on **google less secure apps** Your Gmail Account
****
Turning on 'less secure apps' settings as mailbox user

    Go to your (Google Account).
    On the left navigation panel, click Security.
    On the bottom of the page, in the Less secure app access panel, click Turn on access.
    If you don't see this setting, your administrator might have turned off less secure app account access (check the instruction above).
    Click the Save button.

