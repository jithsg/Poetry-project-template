FROM python:3.11

WORKDIR /app

RUN pip install poetry

COPY pyproject.toml poetry.lock setup.cfg ./

# Disable virtualenv creation by Poetry
RUN poetry config virtualenvs.create false

# Install project dependencies
RUN poetry install --no-dev

COPY . .

CMD ["python", "app.py"]