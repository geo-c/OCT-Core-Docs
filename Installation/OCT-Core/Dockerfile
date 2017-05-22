###################################
# Dockerfile to run Open City Toolkit
# Based on Ubuntu Image
###################################

# Set the base image to use Ubuntu
FROM ubuntu



# Set the file maintainer
MAINTAINER Jonas Wissing

# Port to expose
Expose 8080
Expose 5432

# Update the default application repository sources list
RUN apt-get update

# Create User
#RUN adduser oct --home /home/oct
#RUN echo "oct" | passwd oct

# Instal git
RUN apt-get install -y git
# Download from Github
RUN git clone https://github.com/geo-c/OCT-Core.git /home/oct/OCT-Core

# Work Dir
WORKDIR /home/oct/OCT-Core

# Install Nodejs
RUN apt-get -y install nodejs
RUN apt-get -y install npm

#link node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Start Server
RUN npm install
RUN npm install bcrypt --save

CMD ["nodejs", "server.js", "--api_port=8080", "--database_name=oct", "--postgres_user=oct", "--postgres_password=oct", "--email_user=sitcomlab245@gmail.com", "--email_password=Heisenbergstrasse2"]