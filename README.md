# aws_jupyter_anaconda
Script for installing Miniconda, Jupyter Notebook, VowpalWabbit in AWS instance

 - Specify your AWS key-pair pemfile, AWS host
 - run sh launch_remote_setup.sh PEMFILE_PATH HOST_PUBLIC_DNS
 	
 	> example: `sh launch_remote_setup.sh aws.pem ec2-35-156-252-138.eu-central-1.compute.amazonaws.com`
 - go to https://YOUR_AWS_HOST:8888 and have fun!

After end of work run *EC2 -> Instances -> Actions -> Instance State -> Terminate*
 
