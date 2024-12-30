FROM archlinux

# Update system and install necessary tools
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm wget unzip \
    && wget https://github.com/duckdb/duckdb/releases/download/v1.1.3/duckdb_cli-linux-amd64.zip \
    && unzip duckdb_cli-linux-amd64.zip \
    && mv duckdb /usr/local/bin/ \
    && rm duckdb_cli-linux-amd64.zip \
    && pacman -Sc --noconfirm

# Set default command to DuckDB
CMD ["duckdb"]
