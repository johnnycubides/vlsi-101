# How compile the tools in conda

```bash
conda-build yosys
conda-build xschem
conda-build xcircuit
conda-build sky130a
conda-build qrouter
conda-build ngspice
conda-build netgen
conda-build magic
conda-build irsim
conda-build graywolf
conda-build qflow
```

## How clean conda-build

```bash
conda build purge
```

## Example to upload compiled

```bash
conda-build netgen
anaconda upload /home/johnny/miniconda3/envs/builder/conda-bld/linux-64/netgen-1.5.253-0.tar.bz2

```
