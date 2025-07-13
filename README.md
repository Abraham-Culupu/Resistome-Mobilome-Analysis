
# Resistome-Mobilome-Analysis 🧬

This repository provides Bash scripts for the detection and analysis of **resistance genes (resistome)** and **mobile genetic elements (mobilome)** in bacterial genomes or contigs. These tools are useful for genomic surveillance studies and One Health-based antimicrobial resistance research.

## 📁 Repository Structure

```
Resistome-Mobilome-Analysis/
├── scripts/
│   ├── amrfinder.sh         # AMRFinderPlus batch analysis for resistome
│   └── mobilome.sh          # Mobilome analysis using MOB-suite and placeholders for CheckV, ISEScan
├── test_data/               # Example FASTA genomes (optional)
└── README.md
```

## 🛠 Requirements

- Unix-based system (Linux or WSL recommended)
- Conda environment (recommended)
- Tools:
  - [AMRFinderPlus](https://github.com/ncbi/amr)
  - [MOB-suite](https://github.com/phac-nml/mob-suite)
  - [CheckV](https://bitbucket.org/berkeleylab/checkv)
  - [ISEScan](https://github.com/xiezhq/ISEScan) 
  - [IntegronFinder](https://github.com/gem-pasteur/Integron_Finder) 

## ⚙️ Setup

Create a conda environment and install key tools:
```bash
conda create -n amr_env python=3.10 -y
conda activate amr_env

# Install AMRFinderPlus
conda install -c bioconda ncbi-amrfinderplus

# Install MOB-suite
conda install -c bioconda mob_suite
```

## 🚀 Usage

### Run Resistome Analysis

```bash
bash scripts/amrfinder.sh
```

- Input directory: `genomes/` with `.fasta` files
- Output directory: `amrfinder-results/` with TSV results per genome

### Run Mobilome Analysis

```bash
bash scripts/mobilome.sh
```

- Input directory: `Genomes/` with `.fasta` files
- Output directory: `mobilome_results/` with parsed summaries


## 👨‍🔬 Author

**Abraham Espinoza Culupú**  UNMSM - 
Molecular biologist and researcher in microbial genomics and antimicrobial resistance (One Health).

## 📄 License

This project is licensed under the MIT License.
