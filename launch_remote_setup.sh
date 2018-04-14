scp -i $1 ubuntu@$2:~/

ssh -i $1 ubuntu@$2 'bash -s' < remote_setup.sh