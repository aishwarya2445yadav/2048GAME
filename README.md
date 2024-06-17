to Dockerize the game 2048 .
Load the docker file 
then, run the following the shell commands 
Build the docker image by using "C:\Users\aishw\2048> docker build -t 2048-game ."
Check if the image has been succesfully created "C:\Users\aishw\2048> docker images"
This command will give you the image create along with its image id
then to run it on local host I've used "C:\Users\aishw\2048> docker run -d -p 80:80 img id"
After this you will need to open the aws Elastci bean stalk console and configure the IAM roles, create an environment , load your dockerfile and deploy it on aws
![image](https://github.com/aishwarya2445yadav/2048GAME/assets/64578654/6c2dd249-446d-47be-a884-9cdf93aca93c)

