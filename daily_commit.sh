#!/bin/bash

# Skrypt do codziennych commitów
REPO_PATH="$HOME/daily-commits"
cd "$REPO_PATH"

# Dodanie nowej linii z datą
echo "$(date '+%Y-%m-%d %H:%M:%S') - Codzienny commit" >> daily_log.txt

# Commit i push
git add daily_log.txt
git commit -m "Daily commit - $(date '+%Y-%m-%d')"
git push origin main

echo "Codzienny commit wykonany: $(date '+%Y-%m-%d %H:%M:%S')"
