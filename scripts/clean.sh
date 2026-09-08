#!/bin/bash
set -euo pipefail

GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Resolve project root independent of where the script is invoked from.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo ""

echo -e "${GREEN}***Cleaning build and dist directories***${NC}"

rm -rf "${PROJECT_ROOT}/build" "${PROJECT_ROOT}/dist"

echo -e "${GREEN}***Clean complete***${NC}"

echo ""
