FROM python:3.11

RUN python3 -m pip config set global.index-url https://mirrors.bfsu.edu.cn/pypi/web/simple
RUN python3 -m pip install gradio requests[socks] mdtex2html pymupdf pdfminer beautifulsoup4

COPY . /gpt
WORKDIR /gpt


CMD ["python3", "main.py"]