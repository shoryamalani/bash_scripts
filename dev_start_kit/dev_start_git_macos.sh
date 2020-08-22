echo "this is working from https://docs.github.com/en/enterprise/2.15/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent"
echo "What is your email"
read email
echo 'doing ssh-keygen -t rsa -b 4096 -C "$email"'
ssh-keygen -t rsa -b 4096 -C "$email"
bash
eval "$(ssh-agent -s)"
echo "if you reanamed your ssh file then run this command with the new file name ssh-add -K ~/.ssh/id_rsa so for example ssh-add -K ~/.ssh/new_file"
ssh-add -K ~/.ssh/id_rsa
echo "if you see Error:ssh-add:illegal option --k run the following command ssh-add ~/.ssh/id_rsa(if you changed the file name you still have to do that)"
echo "after that try this https://docs.github.com/en/enterprise/2.15/user/articles/adding-a-new-ssh-key-to-your-github-account"