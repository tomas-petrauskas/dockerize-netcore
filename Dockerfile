# Sample Application
Use sample code to create .NET Core Web Application
![nncggk.png](https://img.esteem.app/nncggk.png)
![24q684.png](https://img.esteem.app/24q684.png)

# Docker Ignore
To build an application we only need Source Code, let's ignore unnecessary files like *./obj* or *./bin*.

# Dockerfile
We will use Microsoft official [SDK](https://hub.docker.com/_/microsoft-dotnet-core-sdk/) and [Runtime](https://hub.docker.com/_/microsoft-dotnet-core-aspnet/) Docker Containers to Build and Run .NET Core Application. This will make Application Container lighter since it will not include Source Code, only artifacts and libraries etc. Please replace Application name if needed.


# Build

Build Docker Container from *Dockerfile* file in current directory:
`docker build -t web-application .`

![6wx1dy.png](https://img.esteem.app/6wx1dy.png)

# Execute

Run built web-application container in detached mode with *api* name and *Port 80* accessible to *localhost*:
`docker run -d -p 80:80 --name api web-application`

![x7ltsw.png](https://img.esteem.app/x7ltsw.png)

# Test

To test if Application runs, open [http://localhost](http://localhost) URL in a Web Browser.

![5v73bk.png](https://img.esteem.app/5v73bk.png)

# Stop and Remove Container

`docker stop api && docker rm api`

![oduv34.png](https://img.esteem.app/oduv34.png)
