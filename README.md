# pokemeraldex

## Dockerfiles

1. Database container

To build the image arch-duckdb:

```bash
docker build -t arch-duckdb -f arch-duckdb.Dockerfile .
```

To run a container with the image arch-duckdb:

```bash
docker run -it arch-duckdb
```

2. App container

To build the image uvpy:

```bash
docker build -t uvpy -f uv-py.Dockerfile .
```

```bash
docker run -it uvpy
```