# specify our base image
FROM python:3.9.6

COPY ./project/ /project/

WORKDIR /project/

RUN pip3 install mkdocs

EXPOSE 8080

ENTRYPOINT [ "mkdocs" ]
CMD ["serve"]
