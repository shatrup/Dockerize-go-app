## Dockerize-go-app </br>

Step 1: First the clone this repository ``$ docker clone https://github.com/shatrup/Dockerize-go-app.git `` </br>

Step 2: Run the go application using `` go run main.go ``  </br>

Once run this application then we will make docker image </br>

Step 3: Now make docker image `` $ docker build -t hello:v1 . ``</br>

Step 4: Now run this image on container `` $ docker run -it --rm hello:v1 `` </br>

After the we can check docker image using this command `` $ docker images | grep hello `` 
