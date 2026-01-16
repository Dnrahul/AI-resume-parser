#!/bin/bash
mkdir -p ~/.streamlit/
echo "[server]
headless = true
port = \$PORT
enableXsrfProtection = false" > ~/.streamlit/config.toml
