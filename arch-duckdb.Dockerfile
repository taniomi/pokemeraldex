FROM archlinux

# update native arch programs, install wget and unzip, get duckdb and unzip it
RUN pacman -Syu --noconfirm && pacman -S --noconfirm wget unzip && wget https://github.com/duckdb/duckdb/releases/download/v1.1.3/duckdb_cli-linux-amd64.zip && unzip duckdb_cli-linux-amd64.zip
RUN pacman -Sc

# open duckdb
RUN ./duckdb