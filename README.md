# BIO00058M-case-study

[Report output](https://3mmarand.github.io/BIO00058M-case-study/report/main.html)

# Functional Heterogeneity in Mesenchymal Stromal Cell (MSC) Subtypes

## Project Description
This project investigates the functional heterogeneity of mesenchymal stromal cell (MSC) subtypes using proteomic analysis. MSCs are a subset of non-hematopoietic adult stem cells with the potential to differentiate into multiple cell types, making them crucial for regenerative medicine. However, MSC populations exhibit heterogeneity in their differentiation and immunomodulatory capacities. This study analyzes the soluble protein fraction of five immortalized MSC lines using mass spectrometry to understand differences in protein expression. The analysis includes data preprocessing, normalization, principal component analysis (PCA), hierarchical clustering, and visualization.

## Start Date: 02-10-2018  
## Last Updated: Analysis 24-11-2021, README 28-02-2025  
## Contact Information: Emma Rand (emma.rand@york.ac.uk)

---

## Project Organisation

```
/BIO00058M-case-study
│── data-raw/          # Raw data files
│   ├── Y101_Y102_Y201_Y202_Y101-5.csv  # Normalized protein abundances
│   ├── comparison_p_and_q.csv          # Pairwise comparisons p/q values
│── data/              # Processed data
│── reports/           # Final report i(HTML) linked above
│── R/                 # R scripts for analysis
│   ├── 00-pkg.R       # Loads required packages
│   ├── data_summary.R # Functions for summary statistics
│   ├── 01-labels.R    # Cell lineage and functionality labels
│   ├── 02-palette.R   # Color scheme for visualization
│   ├── 03-banner.R    # Generates a cell-type banner
│── sessioninfo.md     # R session information
│── README.md          # Project documentation
│── BIO00058M-case-study.Rproj  # RStudio project file

```

---

## Software Requirements

### **Programming Languages and Environments**
- **R (version 4.1.1, 2021-08-10)**
- **RStudio 2021.09 "Ghost Orchid"**
- **Platform:** Windows 10 x64 (build 18363)

### **R Packages Used**
- `tidyverse` (1.3.1)
- `janitor` (2.1.0)
- `ggplot2` (3.3.5)
- `GGally` (2.1.2)
- `heatmaply` (1.3.0)
- `plotly` (4.10.0)
- `VennDiagram` (1.7.0)
- `patchwork` (1.1.1)
- `bookdown` (0.24)
- `sessioninfo`

To install all required packages, use:

```r
install.packages(c("tidyverse", "janitor", "ggplot2", "GGally", 
                   "heatmaply", "plotly", "VennDiagram", "patchwork", 
                   "bookdown", "sessioninfo"))
```


---

## Data Description

The dataset consists of mass spectrometry data from five MSC subtypes, focusing on soluble protein fractions.

### **Data Files**
1. **`Y101_Y102_Y201_Y202_Y101-5.csv`** (Normalized protein abundances)
   - **Rows:** Proteins
   - **Columns:** 
     - `Accession`: Protein identifier (Uniprot ID)
     - `Peptide count`: Number of peptides used to identify the protein
     - `Unique peptides`: Number of unique peptides used for identification
     - `Confidence score`: Score representing confidence in protein identification
     - `Anova (p)`: P-value from one-way ANOVA for the effect of cell line
     - `q Value`: False discovery rate (FDR)-adjusted p-value (Benjamini-Hochberg correction)
     - `Max fold change`: Maximum fold-change between the highest and lowest mean expression across cell lines
     - `Power`: Statistical power of the ANOVA test
     - `Highest mean condition`: Cell line with the highest mean expression
     - `Lowest mean condition`: Cell line with the lowest mean expression
     - `Mass`: Protein mass
     - `Description`: Protein description (includes species origin)
     - **Normalized Abundance Columns**:
       - `Y101_A, Y101_B, Y101_C`: Replicates for cell line Y101
       - `Y102_A, Y102_B, Y102_C`: Replicates for cell line Y102
       - `Y201_A, Y201_B, Y201_C`: Replicates for cell line Y201
       - `Y202_A, Y202_B, Y202_C`: Replicates for cell line Y202
       - `Y1015_A, Y1015_B, Y1015_C`: Replicates for cell line Y101.5
     - `>1pep`: Binary indicator for whether at least two peptides were detected for a protein.

2. **`comparison_p_and_q.csv`** (Pairwise comparisons between cell lines)
   - **Columns:**
     - Pairwise p-values and q-values for differential protein abundance tests


## Instructions for Use

### **Running the Analysis**
1. **Set up the environment**
   - Open `BIO00058M-case-study.Rproj` in RStudio.

2. **Generate the report**
   - Knit `main.Rmd` in RStudio to generate reports in **HTML, PDF, or Word**.
   - Knit directory of report/main.Rmd is document directory.


