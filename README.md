## Instructions

1. Fill out appropriate default values for the variables in `variables.tf`

2. Via terraform, create an s3 bucket and an ec2 instance.
    - The ec2 instance should be able to write to the bucket.
    - You will need to SSH into the instance once it is online.

3. SSH into the ec2 instance
    - Install docker

4. On the EC2 instance, run an nginx container on port 80. Curl it and confirm that it returns the nginx default page.

5. On the EC2 instance, create a file, add some content to it, upload it to the s3 bucket you created earlier.

6. On your local system, write a script using the language of your choice to:
    - find all SSM parameters whose name ends with "/test"
    - if their value ends with "/invalid", replace it with "/valid" and write it back to SSM.
    - you should add some helpful logging messages
