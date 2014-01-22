# @author: Vikesh Khanna
# Fetch Gmail unread message count

SCREEN=$HOME/.screen
PWD=$SCREEN/.gmail.pwd

if [ ! -f $PWD ]; then
	echo "NA";
	exit 1;
fi

# To create 
# openssl aes-256-cbc -a -salt -in config.plain -out config.aes

pass=`openssl aes-256-cbc -d -a -salt -in $PWD -k "vikesh"`;
curl -su khanna.vikesh:$pass "https://mail.google.com/mail/feed/atom"| grep "<fullcount>.*</fullcount>" | cut -c12- | awk -F '<' '{print $1}'
