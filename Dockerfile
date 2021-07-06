# using ubundu server to run python. pyhon3 is installed by default 
FROM ubuntu:latest  

# updatting the packages and upgrade using update command 
RUN apt-get update -y

#prerequisets for the ml packages 
RUN apt-get install -y python3-pip python3-dev build-essential

#copy the content to a folder 
COPY . /app

#working location is app folder 
WORKDIR /app 

# install the packages that are needed to run the application 
RUN pip3 install -r requirements.txt

#entry point make an executable 
ENTRYPOINT ["python3"]

# you maked python as executing point now rin the command 
CMD ["app.py"]