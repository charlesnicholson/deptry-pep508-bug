#!/usr/bin/env bash
set -eEuo pipefail

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

python3.11 -m venv "$SCRIPT_DIR/venv"
"$SCRIPT_DIR/venv/bin/python" -m pip install deptry 
"$SCRIPT_DIR/venv/bin/python" -m pip install -e "$SCRIPT_DIR/company.repro"

echo "Running deptry..."
$(cd "$SCRIPT_DIR/company.repro" && "$SCRIPT_DIR/venv/bin/python" -m deptry .)
