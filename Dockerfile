FROM microsoft/dotnet:2.2-sdk

WORKDIR /source

COPY *.csproj .
RUN ["dotnet", "restore"]

COPY . .
RUN ["dotnet", "build"]

EXPOSE 3000/tcp

ENTRYPOINT ["dotnet", "run"]
