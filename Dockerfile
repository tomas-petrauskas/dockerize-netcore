FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env

WORKDIR /app/WebApplication

# Since we need to Restore Packages only when Project File is changed, we need to copy project file separately
COPY ./WebApplication/*.csproj ./
RUN dotnet restore

WORKDIR /app
COPY ./WebApplication/. ./WebApplication
WORKDIR /app/WebApplication
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/WebApplication/out .

# Expose 80 Port
EXPOSE 80

# Execute Application
ENTRYPOINT ["dotnet", "WebApplication.dll"]
