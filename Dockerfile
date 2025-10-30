FROM python:3.12.0-alpine3.17

# Install build dependencies
RUN apk add --no-cache gcc musl-dev git

COPY . /app
WORKDIR /app

RUN pip install .[http]

ENTRYPOINT ["datamodel-codegen"]
