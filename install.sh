#!/bin/bash
set -e

CONFIG_DIR="$HOME/.config/myenv"
REPO_URL="https://github.com/emersonml/myenv.git"

# Clone ou atualiza
if [ -d "$CONFIG_DIR/.git" ]; then
    echo "Atualizando repositório existente..."
    cd "$CONFIG_DIR" && git pull
else
    echo "Clonando repositório..."
    git clone "$REPO_URL" "$CONFIG_DIR"
fi

# Verifica se load existe
[ -f "$CONFIG_DIR/load" ] || {
    echo "Erro: Arquivo load não encontrado!" >&2
    exit 1
}

# Adiciona ao bashrc se não existir
BASHRC="$HOME/.bashrc"
MARKER="# myenv configuration"
if ! grep -q "$MARKER" "$BASHRC" 2>/dev/null; then
    echo "Configurando bashrc..."
    cat >> "$BASHRC" << EOF

$MARKER
if [ -f ~/.config/myenv/load ]; then
    . ~/.config/myenv/load
fi
EOF
    echo "Execute: source ~/.bashrc"
fi

echo "Concluído!"
