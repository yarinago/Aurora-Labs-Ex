FROM python:3.7-slim-buster as requirements

ENV PYTHON_APP_PATH="/Aurora-Labs-Ex/python-app"
# TODO: FIND WHAT IS THE PATH FOR WORKDIR
WORKDIR ${PYTHON_APP_PATH}
RUN python -m venv ${PYTHON_APP_PATH}/venv
ENV PATH="${PYTHON_APP_PATH}/venv/bin:$PATH"
COPY requirements.txt .
RUN pip install -r requirements.txt


FROM python:3.7-slim-buster
RUN groupadd -g 999 python && \
    useradd -r -u 999 -g python python && \
    chown python:python ${PYTHON_APP_PATH}
WORKDIR ${PYTHON_APP_PATH}

COPY --chown=python:python --from=build ${PYTHON_APP_PATH}/venv ./venv
COPY --chown=python:python . .
USER 999

ENV PATH="${PYTHON_APP_PATH}/venv/bin:$PATH"
CMD [ "py", "aurora-labs.py" ] 