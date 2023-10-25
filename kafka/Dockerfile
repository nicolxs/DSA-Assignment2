# Ballerina base image
FROM ballerina/ballerina:latest

# working directory in the container
WORKDIR /home/ballerina

# service code to the container
COPY service.bal .

# port Ballerina service will listen on 
EXPOSE 9090

# Command to run the Ballerina service
CMD ["ballerina", "run", "service.bal"]
