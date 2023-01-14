FROM python:3.7-slim-buster as requirements
#ENV PYTHON_APP_PATH="/Aurora-Labs-Ex/python-app"

# TODO: FIND WHAT IS THE PATH FOR WORKDIR
WORKDIR /Aurora-Labs-Ex/python-app
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt


FROM python:3.7-slim-buster
RUN groupadd -g 987 python && \
    useradd -u 1000 -g python worker
WORKDIR /Aurora-Labs-Ex/python-app

COPY --chown=worker:python . .
USER 999

ENV PATH="worker/Aurora-Labs-Ex/python-app/bin:$PATH"
CMD [ "py", "aurora-labs.py" ] 