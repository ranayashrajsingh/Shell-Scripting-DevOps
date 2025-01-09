#/bin/bash
read -p "Enter the username : " username

echo "Your username is $username create on $(date)"

sudo  useradd -m $username

echo "$username is added"

