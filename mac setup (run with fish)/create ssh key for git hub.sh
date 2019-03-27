# generating an ssh key with fish

ssh-keygen -t rsa -b 4096 -C "biduffey@gmail.com"

eval (ssh-agent -c)

ssh-add ~/.ssh/id_rsa

# use cat to view key:
cat ~/.ssh/id_rsa.pub

# now copy the key above and paste it into git hub!

ssh -T git@github.com
# >>Hi biduffey! You've successfully authenticated, but GitHub does not provide shell access.
