FROM python:3.7-slim-buster as requirements

# TODO: FIND WHAT IS THE PATH FOR WORKDIR
WORKDIR /usr/Aurora-Labs-Ex
RUN python -m venv /usr/Aurora-Labs-Ex/venv
ENV PATH="/usr/Aurora-Labs-Ex/venv/bin:$PATH"
COPY requirements.txt .
RUN pip install -r requirements.txt


FROM python:3.7-slim-buster
RUN groupadd -g 999 python && \
    useradd -r -u 999 -g python python && \
    mkdir /usr/Aurora-Labs-Ex && \
    chown python:python /usr/Aurora-Labs-Ex
WORKDIR /usr/Aurora-Labs-Ex

COPY --chown=python:python --from=build /usr/Aurora-Labs-Ex/venv ./venv
COPY --chown=python:python . .
USER 999

ENV PATH="/usr/Aurora-Labs-Ex/venv/bin:$PATH"
CMD [ "py", "aurora-labs.py" ] 