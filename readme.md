# CBDC Banking Simulation

## Overview

This is an agent-based simulation built with Python that models the impact of Central Bank Digital Currency (CBDC) on commercial banking intermediation. The application uses the Mesa framework for agent-based modeling and Streamlit for the web interface, providing an interactive platform to explore how CBDC introduction affects traditional banking operations.

## System Architecture

The application follows a Model-View architecture pattern:
- **Model Layer**: Mesa-based agent simulation with three agent types (Central Bank, Commercial Banks, Consumers)
- **View Layer**: Streamlit web interface for parameter configuration and visualization
- **Data Layer**: In-memory data structures with NumPy and Pandas for analysis

### Core Technologies
- **Mesa**: Agent-based modeling framework
- **Streamlit**: Web application framework
- **NetworkX**: Graph-based agent interactions
- **Plotly**: Interactive data visualization
- **NumPy/Pandas**: Numerical computing and data analysis

## Key Components

### Agent Classes
1. **CentralBank** (`agent/central_bank.py`): Manages CBDC introduction, monetary policy, and system monitoring
2. **CommercialBank** (`agent/commercial_bank.py`): Handles deposits, loans, and competitive responses to CBDC
3. **Consumer** (`agent/consumer.py`): Makes financial decisions between traditional banking and CBDC
4. **Merchant** (`agent/merchant.py`): Represents businesses accepting payments with realistic transaction scenarios

### Model Framework
- **CBDCBankingModel** (`model.py`): Main simulation engine that orchestrates agent interactions
- Uses Mesa's RandomActivation scheduler for agent execution
- NetworkGrid topology for agent relationships based on Erdős-Rényi random graphs

### Web Interface
- **Streamlit App** (`app.py`): Interactive parameter configuration and visualization dashboard
- Real-time simulation controls with parameter sliders
- Plotly-based charts for results visualization

## Data Flow

1. **Initialization**: Create agents with specified parameters and network topology
2. **Simulation Steps**: 
   - Agents execute their step() methods in random order
   - Central bank monitors system and may introduce CBDC
   - Commercial banks adjust strategies and process transactions
   - Consumers make portfolio allocation decisions
3. **Data Collection**: Mesa's DataCollector gathers metrics at each step
4. **Visualization**: Streamlit displays results through Plotly charts

## External Dependencies

### Core Simulation Framework
- **Mesa (>=3.2.0)**: Agent-based modeling platform providing the foundation for multi-agent simulations
- **NetworkX (>=3.5)**: Graph library for modeling agent interaction networks

### Data Processing & Analysis
- **NumPy (>=2.3.0)**: Numerical computing for agent calculations and random processes
- **Pandas (>=2.3.0)**: Data manipulation and analysis for simulation results

### Web Interface & Visualization
- **Streamlit (>=1.45.1)**: Web framework for the interactive simulation dashboard
- **Plotly (>=6.1.2)**: Interactive visualization library for charts and graphs

### Additional Dependencies (auto-resolved)
- **Altair**: Alternative visualization backend
- **NetworkX**: Graph algorithms for agent networks
- **Jinja2, Blinker**: Streamlit web framework dependencies

## Deployment Strategy

###  Configuration
- **Runtime**: Python 3.11 with Nix package manager
- **Deployment Target**: Autoscale deployment for web serving
- **Port Configuration**: Streamlit server on port 5000
- **Module Management**: UV package manager for dependency resolution

### Workflow Setup
- **Development**: Parallel workflow execution with automatic dependency installation
- **Production**: Streamlit web server with headless configuration
- **Dependencies**: Automatic installation of Mesa and Plotly via UV package manager

### Configuration Files
- `.: Main configuration with deployment and workflow settings
- `.streamlit/config.toml`: Streamlit server configuration for headless operation
- `pyproject.toml`: Python package configuration with dependency specifications

## Model Documentation

- **model_assumptions.md**: Comprehensive documentation of all model assumptions, agent behaviors, and academic references
- **initial_conditions.md**: Detailed documentation of all initial conditions, parameter values, and empirical sources
- **agent_interactions_mermaid.md**: Detailed Mermaid charts showing all agent interactions, network structures, and decision processes
- **agent_behaviors_detailed.md**: Complete list of all agent behaviors with detailed explanations and academic references
- **cbdc_hypotheses.md**: Complete framework of all hypotheses (H1, H3, H4, H6) with theoretical foundations and measurement approaches
- **Agent Flow Chart**: Interactive visualization of agent interactions available in the simulation interface

## Changelog

```
Changelog:
- June 15, 2025. Initial setup
- June 15, 2025. Enhanced CBDC substitution analysis with dynamic time-series visualizations
- June 15, 2025. Fixed Mesa 3.2.0 compatibility issues and agent initialization
- June 15, 2025. Improved deposit substitution tracking and market share calculations
- June 15, 2025. Implemented network centrality analysis for 6 CBDC hypotheses testing
- June 15, 2025. Added bank size differentiation (large vs small/medium) and systemic risk metrics
- June 15, 2025. Created dedicated visualization tabs for H1, H3, H4, H6 hypothesis testing
- June 16, 2025. Implemented 37% initial bank deposit baseline for consumer wealth allocation
- June 16, 2025. Converted all monetary displays to percentage-based wealth allocation tracking
- June 16, 2025. Fixed LSP type annotation errors throughout agent classes for proper model access
- June 16, 2025. Enhanced transfer mechanics to draw from both bank deposits and other assets
- June 24, 2025. Created interactive agent flow chart visualization
- June 24, 2025. Added comprehensive VS Code setup with requirements.txt and configuration files
- June 24, 2025. Documented all model assumptions with academic references
- June 25, 2025. Created detailed agent behavior documentation with academic references
- June 27, 2025. Documented complete hypothesis testing framework with theoretical foundations
- June 27, 2025. Updated initial conditions to reflect 2025 banking environment (5.25% fed funds, $8.4k wealth, higher digital adoption)
- June 27, 2025. Implemented 2025-calibrated bank balance sheets as initial conditions (Basel III compliance, realistic asset/liability structure)
- June 30, 2025. Clarified balance sheet initialization process: banks start with zero values, then get realistic 2025-calibrated portfolios after customer assignment in initialize_bank_balance_sheets()
- July 1, 2025. Enhanced network analysis with multiple centrality measures: Added Degree, Betweenness, Closeness, and Eigenvector centrality tracking for both commercial banks and central bank, with comprehensive visualization dashboard
- July 4, 2025. Implemented comprehensive Merchant agent system with real-world economic scenarios: Added 5 business types (retail, restaurant, online, utility, grocery), realistic payment processing costs, dynamic economic conditions tracking, and consumer-merchant transaction flows
- July 4, 2025. Added advanced real-world complexities based on 2024-2025 academic research: Implemented Risk Manager agent with cybersecurity threat modeling, Basel III compliance monitoring, operational risk management, and stress testing scenarios based on IMF, ECB, Federal Reserve, and BIS research findings
- July 4, 2025. Implemented direct consumer-merchant CBDC payment system: Enhanced Consumer and Merchant agents with bank account integration, CBDC wallet functionality, and direct peer-to-peer payments that bypass traditional banking intermediation after CBDC launch
- July 4, 2025. Added comprehensive Three-Tier Monetary System visualization tab: Interactive dashboard showing liability structure differentiation between banknotes (central bank), deposits (commercial banks), and CBDC (central bank) with conversion flow tracking and financial system impact analysis
```

## User Preferences

```
Preferred communication style: Simple, everyday language.
```