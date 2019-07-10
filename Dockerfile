FROM openjdk:8-jdk-alpine
# Update installation utility
RUN apk update

# Create working directory
RUN mkdir /app
WORKDIR /app

RUN wget -O /opt/digdag "https://dl.digdag.io/digdag-latest"
RUN chmod +x /opt/digdag

COPY . .

# run it
#CMD ["/opt/bin/digdag"]
CMD tail -f /dev/null