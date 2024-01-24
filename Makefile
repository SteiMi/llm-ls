.PHONY: install build

install:
        rustup update --no-self-update stable
        apt-get update -y
        apt-get install clang
        cargo build

build: install
        cargo xtask dist

copy:
        gunzip -fk dist/llm-ls-x86_64-unknown-linux-gnu.gz && mv dist/llm-ls-x86_64-unknown-linux-gnu ../iav-copilot-vscode/server/llm-ls