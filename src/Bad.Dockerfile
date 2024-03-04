FROM mcr.microsoft.com/dotnet/sdk:8.0 AS final
EXPOSE 8080
EXPOSE 8081
WORKDIR /src
COPY . .
RUN dotnet publish "Database.AspNetCoreExample.csproj" -c Release -o /app/publish /p:UseAppHost=false
WORKDIR /app
ENTRYPOINT ["dotnet", "Database.AspNetCoreExample.dll"]