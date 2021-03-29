FROM kittil/aspnetcore5-centos8:latest AS builder 
WORKDIR /src
COPY aspnetcore-deployment.csproj .
RUN dotnet restore aspnetcore-deployment.csproj
COPY . .
WORKDIR /src
RUN dotnet publish --output /app --configuration Release

FROM kittil/aspnetcore5-centos8-runtime:latest
WORKDIR /app
COPY --from=builder /app .
ENTRYPOINT ["dotnet", "aspnetcore-deployment.dll"]