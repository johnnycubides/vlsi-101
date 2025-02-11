# How build

Creación de netlistsvg

```bash
rm -rf ~/miniconda3/envs/builder/conda-bld/
conda-build netlistsvg
```
Instalación de netlistsvg
```bash
conda uninstall netlistsvg
conda install anaconda::nodejs
conda install johnnycubides::netlistsvg 
```
