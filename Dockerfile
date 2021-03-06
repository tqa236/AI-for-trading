FROM python:3.6.12

MAINTAINER TRINH Quoc Anh "trinhquocanh94@gmail.com"

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN jupyter contrib nbextension install --user

RUN pip install black
RUN jupyter nbextension install https://github.com/drillan/jupyter-black/archive/master.zip --user

WORKDIR /workspace

# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
