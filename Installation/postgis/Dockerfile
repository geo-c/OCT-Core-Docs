FROM postgres:latest
ENV POSTGRES_USER oct
ENV POSTGRES_PASSWORD oct
ENV POSTGRES_DB oct

ADD tables.sql /docker-entrypoint-initdb.d/

EXPOSE 5433
EXPOSE 5432
ADD zzzsample_data.sql /docker-entrypoint-initdb.d/