FROM mongo:4.4

COPY ./storage /data/db

EXPOSE 27017

CMD ["mongod", "--bind_ip_all"]
