#!/bin/bash
# 1. Criando ambiente virtual
# 2. Ativando Ambiente Virtual
# 3. Atualizando pip (Pacote de instalação do Python)
# 4. Instalando dependências do projeto

# Detect the OS
if [[ -d ".venv" ]]; then
    echo ".venv already exists"
else
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        python3.8 -m venv .venv &&
        source .venv/bin/activate &&
        python -m pip install -U pip &&
        python -m pip install -r requirements.txt
        deactivate
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        python3 -m venv .venv &&
        source .venv/bin/activate &&
        python -m pip install -U pip &&
        python -m pip install -r requirements.txt
        deactivate
    elif [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
        # Windows
        python -m venv .venv &&
        source .venv/Scripts/activate &&
        python -m pip install -U pip isort blue pytest bandit &&
        python -m pip install -r requirements.txt
        deactivate
    fi
    mkdir -p data src/config src/prod_lib tests logs scripts
    chmod +x scripts/run.sh
    git flow init -d
    echo "project installed"
fi