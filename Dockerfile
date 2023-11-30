FROM python:3.7
WORKDIR /app
COPY . .
RUN sudo apt install python
RUN sudo apt install pythonpy
RUN sudo apt install python3-pip
RUN sudo apt install python3-virtualenv
RUN virtualenv flask
RUN cd flask/
RUN source bin/activate
RUN pip install flask
RUN cd ..
RUN pip install gunicorn
RUN pip install -r requirements.txt
# ENV PORT=80
# CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app
CMD ["python", "main.py"]
