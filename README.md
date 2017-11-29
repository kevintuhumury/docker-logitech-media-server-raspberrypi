# Docker container for Logitech Media Server

Docker image for the [Logitech Media Server](https://github.com/Logitech/slimserver) which can be used to control the Logitech Squeezebox players (e.g. Squeezebox Boom or Squeezebox Classic). This server is also called Slim Server, Squeezebox Server or Squeeze Center.

To build the image, run the following:

```
docker build -t <image_name> .
```

Now run it:

```
docker run -d \
  -p 9000:9000 \
  -p 3483:3483 \
  -v <local_state_dir>:/logitech_media_server/ \
  --restart=always \
  --hostname logitech_media_server \
  --name logitech_media_server <image_name>
```

Profit.
