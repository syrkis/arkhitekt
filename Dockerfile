FROM python:3.11

WORKDIR /app

COPY poetry.lock pyproject.toml /app/

RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --no-dev --no-interaction --no-ansi

COPY . /app
