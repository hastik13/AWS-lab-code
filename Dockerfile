FROM microsoft/aspnetcore

WORKDIR /app

COPY ./publish .

ENV ASPNETCORE_URLS http://+:80

EXPOSE 80


ENTRYPOINT ["dotnet", "First_API.dll"]


# # Use the standard Microsoft .NET Core container
# FROM microsoft/dotnet
# # Copy our code from the "/src/MyWebApi" folder to the "/app" folder in our container
# WORKDIR /app
# COPY /AWS/First_API .
# # Expose port 80 for the Web API traffic
# ENV ASPNETCORE_URLS http://+:80
# EXPOSE 80
# # Restore the necessary packages
# RUN dotnet restore
# # Build and run the dotnet application from within the container
# ENTRYPOINT ["dotnet", "run"]
