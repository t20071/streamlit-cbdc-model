#!/bin/bash
echo "Activating virtual environment..."
source venv/bin/activate
echo "Starting CBDC Banking Simulation..."
streamlit run app.py