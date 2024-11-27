# Use Python 3.9 image as a base
FROM python:3.9-slim

# Install dependencies for dbt and PostgreSQL
RUN pip install --upgrade pip \
    && pip install dbt-core dbt-postgres \
    && pip install psycopg2-binary

# Set the working directory
WORKDIR /usr/src/app

# Set the default command
CMD ["dbt", "--help"]
