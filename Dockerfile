FROM python
COPY /app/. /app
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 8080
STOPSIGNAL SIGINT
ENTRYPOINT ["python3"]
CMD ["api.py"]