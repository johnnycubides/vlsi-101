# Conda builder

BUILDER ENVIROMENT

```bash

conda update -n base -c defaults conda

conda create --name builder

# To activate this environment, use
#
#     $ conda activate builder
#
# To deactivate an active environment, use
#
#     $ conda deactivate

```
Instalando el conda-build

```bash

conda install conda-build

# update condabuild (cuando sea requerido)
# conda update conda
# conda update conda-build

ERROR:
conda.exceptions.InvalidVersionSpec: Invalid version '': empty version string
RESOLVE:
rm -rf conda-bld/*

To remove them, you can run the ```conda build purge``` command

# To have conda build upload to anaconda.org automatically, use
# conda config --set anaconda_upload yes
anaconda upload \
    /home/johnny/miniconda3/envs/builder/conda-bld/linux-64/ngspice-40-0.tar.bz2
anaconda_upload is not set.  Not uploading wheels: []

```
Instalando el anconda cliente

```bash

conda install anaconda-client
anaconda upload \
    /home/johnny/miniconda3/envs/builder/conda-bld/linux-64/ngspice-40-0.tar.bz2

```

## References

https://docs.anaconda.com/anacondaorg/user-guide/tasks/work-with-packages/#uploading-packages

https://github.com/Anaconda-Platform/anaconda-client

https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html

https://docs.conda.io/projects/conda-build/en/latest/user-guide/tutorials/build-pkgs.html

https://docs.conda.io/projects/conda-build/en/stable/user-guide/tutorials/build-pkgs-skeleton.html

