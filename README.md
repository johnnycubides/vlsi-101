# Herramientas open source EDA

## Instalación de miniconda

```bash
cd Downloads
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh # Seguir las instrucciones y reiniciar la terminal
```

## Instalación de herramientas con un solo comando

TODO: Crear cópia (spec-file.txt) desde equipo con herramientas instaladas y probadas

## Creación de variable de entorno "vlsi"

```bash
conda update -n base -c defaults conda
conda create --name vlsi python=3.7
conda activate vlsi
```

## Instalación de herramientas para flujo de diseño

```bash
conda install -c conda-forge tcsh
conda install -c conda-forge libstdcxx-ng
conda install -c conda-forge ncurses
conda install -c litex-hub open_pdks.sky130a
conda install -c johnnycubides netgen
conda install -c johnnycubides yosys
conda install -c johnnycubides magic
conda install -c johnnycubides xschem
conda install -c johnnycubides ngspice
conda install -c johnnycubides xcircuit
conda install -c johnnycubides irsim
conda install -c johnnycubides qrouter
conda install -c johnnycubides graywolf
conda install -c johnnycubides qflow
```

## Prueba de flujo

TODO: Realizar prueba de flujo completo

## Referencias

* [opencircuitdesign](http://opencircuitdesign.com/)
* [efabless](https://efabless.com/universities)
* [SkyWater130](https://skywater-pdk.readthedocs.io/en/main/)
* [opencircuits](https://opencircuits.com/)
* [The OpenLane](https://openlane.readthedocs.io/en/latest/index.html)
* [OpenROAD](https://theopenroadproject.org/)
* [tinytapeout](https://tinytapeout.com/)
* [Conda tools](https://anaconda.org/johnnycubides/repo)
