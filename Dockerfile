FROM python:3.6.5

WORKDIR /home/app/

COPY requirements.txt main.py ./

RUN pip install --upgrade pip && \
pip install -r requirements.txt

ENTRYPOINT ["/bin/bash"]

CMD ["-c", "python main.py"]
