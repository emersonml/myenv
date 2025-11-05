#!/bin/bash
if [ ! -z "$PS1" ]; then
    echo ""
    echo "=== SERVIDOR $(hostname | tr 'a-z' 'A-Z') ==="
    echo "Sistema: $(lsb_release -d | cut -f2)"
    echo "Uptime: $(uptime -p)"
    echo "Avisos: Manutenção programada para Sábado 14:00"
    echo ""
fi
