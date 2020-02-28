# Sample Application

Use sample code to create .NET Core Web Application

![](Resources/1.png)
![](Resources/2.png)

# Docker Ignore
To build an application we only need Source Code, let's ignore unnecessary files like *./obj* or *./bin*.

# Dockerfile
We will use Microsoft official [SDK](https://hub.docker.com/_/microsoft-dotnet-core-sdk/) and [Runtime](https://hub.docker.com/_/microsoft-dotnet-core-aspnet/) Docker Containers to Build and Run .NET Core Application. This will make Application Container lighter since it will not include Source Code, only artifacts and libraries etc.

# Build

Build Docker Container from *Dockerfile* file in current directory:
`docker build -t web-application .`

![](Resources/3.png)

# Execute

Run built web-application container in detached mode with *api* name and *Port 80* accessible to *localhost*:
`docker run -d -p 80:80 --name api web-application`

![](Resources/4.png)

# Test

To test if Application runs, open [http://localhost](http://localhost) URL in a Web Browser.

![](Resources/5.png)

# Stop and Remove Container

`docker stop api && docker rm api`

![](Resources/6.png)
