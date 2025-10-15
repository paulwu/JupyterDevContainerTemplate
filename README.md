# Jupyter Data Science DevContainer

This repository contains a complete DevContainer setup for Jupyter Data Science development, providing a consistent and reproducible environment for data analysis, visualization, and machine learning projects.

## 🚀 Quick Start

### Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- [Visual Studio Code](https://code.visualstudio.com/) with the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Getting Started
1. **Clone this repository**:
   ```bash
   git clone <your-repo-url>
   cd JupyterTemplate
   ```

2. **Open in DevContainer**:
   - Open the folder in VS Code
   - When prompted, click "Reopen in Container" 
   - Or use Command Palette: `Dev Containers: Reopen in Container`

3. **Wait for container build** (first time may take 5-10 minutes)

4. **Start working**:
   - Open `sample_data_science_demo.ipynb` to verify the environment
   - Create new notebooks in the workspace
   - All your work is automatically saved to your local machine

## 📦 What's Included

### Base Environment
- **Image**: `jupyter/datascience-notebook:latest`
- **Python**: 3.11+ with conda package manager
- **User**: `jovyan` with sudo privileges
- **Working Directory**: `/home/jovyan/work`

### Pre-installed Libraries
- **Data Manipulation**: pandas, numpy, polars
- **Visualization**: matplotlib, seaborn, plotly, bokeh, altair
- **Machine Learning**: scikit-learn, scipy, tensorflow, pytorch
- **Jupyter**: jupyter, jupyterlab, ipywidgets
- **Development Tools**: black, flake8, pytest, mypy
- **Database**: sqlalchemy, psycopg2, pymongo
- **Web**: requests, beautifulsoup4, aiohttp

### VS Code Extensions
- Python support (Python, Pylance)
- Jupyter notebook support
- Code formatting (Black, isort, Ruff)
- Linting (Flake8)
- Python environment management
- JSON language support

### Development Features
- **Port Forwarding**: 8888, 8889, 8890 (Jupyter servers)
- **Git Integration**: Git and GitHub CLI pre-installed
- **Automatic Package Installation**: Requirements installed on container creation
- **Persistent Storage**: Your code is mounted and persisted locally

## 🛠️ Configuration Files

### `.devcontainer/devcontainer.json`
Main DevContainer configuration specifying:
- Base Docker image
- VS Code extensions to install
- Port forwarding settings
- Container environment variables
- Mount points and working directory

### `requirements.txt`
Python packages installed automatically when container is created. Modify this file to add new dependencies.

## 📊 Sample Notebook

The included `sample_data_science_demo.ipynb` demonstrates:
- Library imports and version verification
- Sample data generation and manipulation
- Static visualizations with matplotlib/seaborn
- Interactive plots with plotly
- Basic machine learning workflow
- Environment summary and verification

## 🔧 Customization

### Adding New Python Packages
1. **Method 1**: Add to `requirements.txt` and rebuild container
2. **Method 2**: Install directly in terminal:
   ```bash
   pip install package-name
   # or
   conda install package-name
   ```

### Adding VS Code Extensions
Edit `.devcontainer/devcontainer.json` and add extension IDs to the `extensions` array:
```json
"extensions": [
    "ms-python.python",
    "your-new-extension-id"
]
```

### Environment Variables
Add environment variables in `devcontainer.json`:
```json
"containerEnv": {
    "YOUR_VARIABLE": "your-value"
}
```

## 🐳 Container Details

### Ports
- **8888**: Primary Jupyter Lab server
- **8889**: Secondary Jupyter server
- **8890**: Additional Jupyter server

### File System
- **Host**: Your local project directory
- **Container**: `/home/jovyan/work`
- **Sync**: Bidirectional, real-time

### Jupyter Access
Once the container is running:
1. Jupyter Lab is available at `http://localhost:8888`
2. Use VS Code's integrated Jupyter support for notebooks
3. Terminal access via VS Code integrated terminal

## 🚨 Troubleshooting

### Container Won't Start
1. Ensure Docker Desktop is running
2. Check Docker has sufficient memory (4GB+ recommended)
3. Try rebuilding: `Dev Containers: Rebuild Container`

### Package Installation Issues
1. Update `requirements.txt` and rebuild container
2. For conda packages, add to a `environment.yml` file
3. Check container logs for specific error messages

### Port Conflicts
If port 8888 is already in use:
1. Stop other Jupyter instances
2. Modify port forwarding in `devcontainer.json`
3. Rebuild container

### Performance Issues
1. Allocate more memory to Docker Desktop
2. Use `.dockerignore` for large directories
3. Consider using local Python environment for development

## 📝 Best Practices

### Project Organization
```
JupyterTemplate/
├── .devcontainer/          # DevContainer configuration
├── data/                   # Data files (add to .gitignore)
├── notebooks/              # Jupyter notebooks
├── src/                    # Python modules
├── tests/                  # Unit tests
├── requirements.txt        # Python dependencies
└── README.md              # This file
```

### Version Control
- Add `data/` and `*.ipynb_checkpoints` to `.gitignore`
- Consider using notebook cleaning tools for commits
- Keep requirements.txt updated

### Security
- Don't commit sensitive data or credentials
- Use environment variables for API keys
- Consider using `.env` files (excluded from git)

## 🤝 Contributing

1. Fork the repository
2. Make your changes
3. Test in the DevContainer environment
4. Submit a pull request

## 📜 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For issues and questions:
1. Check the troubleshooting section above
2. Review VS Code Dev Containers documentation
3. Open an issue in this repository

---

**Happy Data Science! 🔬📊✨**