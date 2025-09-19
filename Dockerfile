# pull a base image which gives all req tools and libraries

FROM openjdk:17-jdk-alpine

# create a folder where the app code will be stored

WORKDIR /app

# copy the src code from your HOST machine to your computer

COPY src/Main.java /app/Main.java

# compile the app code

RUN javac Main.java

# run the app

CMD ["java","Main"]

