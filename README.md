# Example snakemake pipeline 


## Useful links
- [Snakemake documentation](https://snakemake.readthedocs.io/en/stable/)
- [Short overview](https://slides.com/johanneskoester/snakemake-short#/)
- [More detailed overview](https://slides.com/johanneskoester/snakemake-tutorial#/)

## Benefits of snakemake
- Your analysis is reproducible.
- You don't have to re-perform computationally intensive tasks early in the pipeline to change downstream analyses or figures.
- You can easily combine shell, R, python, etc. scritps into one pipeline.
- You can easily share your pipeline with others.
- You can submit a single slurm job and snakemake handles submitting the rest of your jobs for you.

## Conda

To [download miniconda](https://docs.conda.io/en/latest/miniconda.html) for linux if you don't already have it:
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
```

To create and activate the conda environment:
```
conda env create -f config/env.yaml # you only have to do this once
conda activate snakemake # you have to do this every time 
```

## A few basics

Useful snakemake arguments:
- `snakemake -n` dry-run (to test it out before running it)
- `snakemake` runs the pipeline
- ` snakemake --dag | dot -Tsvg > dag.svg` creates a dag (this can be super difficult to read with large complex pipelines)

## Running snakemake on the cluster

To run snakemake on the cluster, you have to modify your email address in:
- `sample.sbat`
- `config/cluster.yaml`

Then run
```
sbatch sample.sbat
```
