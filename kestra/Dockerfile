FROM kestra/kestra:latest

USER root
RUN pip install duckdb gcsfs

CMD ["server", "standalone"]