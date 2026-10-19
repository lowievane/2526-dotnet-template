FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

WORKDIR /src

COPY . .

RUN dotnet restore Rise.sln
RUN dotnet build Rise.sln --configuration Release --no-restore