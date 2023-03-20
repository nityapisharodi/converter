FROM python:3.8-alpine3.16 as build
#ENV VIRTUAL_ENV=/opt/venv
#RUN python3 -m venv ${VIRTUAL_ENV}
#ENV PATH="${VIRTUAL_ENV}/bin:$PATH"
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
RUN python3 manage.py test
EXPOSE 8000
ENTRYPOINT [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]



