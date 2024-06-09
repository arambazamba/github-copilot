# Deployment

- Create a dockerfile:

    ```dockerfile
    # Build Image
    FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build
    WORKDIR /build

    COPY . .
    RUN dotnet restore "config-api.csproj"
    RUN dotnet publish -c Release -o /app

    # Runtime Image
    FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
    WORKDIR /app
    COPY --from=build /app .
    ENTRYPOINT ["dotnet", "config-api.dll"]
    ```

- Publish the image to Docker Hub:

    ```bash
    docker build --rm -f dockerfile -t catalog-service .
    docker tag catalog-service arambazamba/catalog-service
    docker push arambazamba/catalog-service
    ```

- Create an Azure Container Apps Environment and deploy the image:

    ```bash
    env=dev
    grp=az204-m05-containers
    loc=westeurope
    acr=az204demos$env
    acaenv=az204-demo-$env

    az group create -n $grp -l $loc
    az containerapp env create -n $acaenv -g $grp -l $loc
    az containerapp create -n $apiApp-$env -g $grp --image $apiImg \
    --environment $acaenv \
    --target-port 8080 --ingress external 
    ```        