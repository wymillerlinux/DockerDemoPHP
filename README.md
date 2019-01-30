# DockerDemoPHP
This is a Docker Demo for a PHP image on Docker Hub. Feel free to follow along.

## Installation
Please note these installation instructions are for Ubuntu Linux 16.04 or higher. Email me if you have a different distribution or operating system.

First, you have to install `git`.<br>
`sudo apt install git`<br>

Also, you have to have Docker.<br>
`snap install docker`<br>
`sudo apt install docker.io`<br>

Next, build the image with Docker.<br>
`docker build -t demo01 .`<br>

You call your Docker image however you like by replacing `demo01` with anything.<br>
If you get a permission denied error, add your user to the Docker group.<br>
`sudo usermod -aG docker wyatt`<br>
Replace `wyatt` with your user.<br>

Finally, run your image with port 80 exposed.<br>
`docker run -p 80:80 demo01`<br>

Open your browser and navigate to localhost. You should see a webpage.
Congratulations! You have built a Docker image and ran a Docker container!

To close or shutdown your container, invoke Control+C.

## Troubleshooting

Email me with the locally downloaded repo and we'll have a disscusion.
