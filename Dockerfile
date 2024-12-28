FROM public.ecr.aws/docker/library/python:3.12-alpine
ENV PYTHONUNBUFFERED=1

WORKDIR /src

COPY / ./

RUN pip3 install --upgrade pip && pip3 install fastapi uvicorn

ENTRYPOINT ["uvicorn", "fast-api:app", "--host", "0.0.0.0", "--reload", "--port", "80"]