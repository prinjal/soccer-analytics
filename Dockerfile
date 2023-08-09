FROM python:3.9

WORKDIR /home/prinjal

RUN apt-get install libpq-dev python-dev

COPY config/requirements.txt /home/prinjal/work/config/requirements.txt

RUN pip install --no-cache-dir -r /home/prinjal/work/config/requirements.txt

COPY . .

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]