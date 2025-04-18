# Setup

- make sure to copy `env.template` to `.env` and fill it with the corresponding api keys

## Local

- create and activate a new python v3.10 conda environment:
  - source: [how-to-create-conda-environment-with-specific-python-version](https://stackoverflow.com/questions/56713744/how-to-create-conda-environment-with-specific-python-version)

```bash
conda create -n "sxi_challenge" python=3.10 ipython
conda activate sxi_challenge
```

- install dependencies

```bash
pip install -r requirements.txt
```

## Docker

- build and run the environment with:

```bash
docker compose up --build
```

- go to localhost:8888 to access jupyter notebook and open the notebook `multi_source_rag_chatbot.ipynb`

### Troubleshooting

- pro tip: open a terminal inside the container to troubleshoot and inspect closely the codebase

```
> docker ps
CONTAINER ID   IMAGE                                                  COMMAND                  CREATED          STATUS          PORTS                                       NAMES
69f90eae8fdd   scalex-innovation-technical-challenge-research-agent   "jupyter notebook --…"   17 minutes ago   Up 17 minutes   0.0.0.0:8888->8888/tcp, :::8888->8888/tcp   scalex-innovation-technical-challenge-research-agent-1

> docker exec -it scalex-innovation-technical-challenge-research-agent-1 bash

root@69f90eae8fdd:/app# nano /usr/local/lib/python3.9/site-packages/semantic_router/encoders/__init__.py
```
