# Bayesian Genome-wide (BGW) TWAS Software Usage

Tool **BGW-TWAS** tool is developed for leveraging both **cis-** and **trans-** eQTL based on a Bayesian variable selection model to predict genetically regulated gene expression (**GReX**) and then conduct **TWAS**. This tool is implemented through several command-line argument described in this manual.

Please cite our BGW-TWAS paper if you use the tool:
>[*Bayesian Genome-wide TWAS Method to Leverage both cis- and trans-eQTL Information through Summary Statistics.* 2020 AJHG.](https://www.cell.com/ajhg/pdfExtended/S0002-9297(20)30291-3)

---
- [Software Installation](#software-installation)
- [Input Files](#input-files)
	- [1. Training Gene Expression File](#1-training-gene-expression-file)
	- [2. Training VCF Genotype Files](#2-training-vcf-genotype-files)
- [Example Usage](#example-usage)
	- [Step 1. Obtain Summary Statistics](#step-1-obtain-summary-statistics)
	- [Step 2. Prune Genome Segments](#step-2-prune-genome-segments)
	- [Step 3. Training Gene Expression Prediction Model](#step-3-training-bgw-twas)
	- [Step 4. Predict GReX](#step-4-predict-grex)
---

## Software Installation

### 1. Compile **Estep_mcmc**
* Install required C++ libraries C++ libraries *zlib*, *gsl*, *eigen3*, *lapack*, *atlas*, *blas* are used to develop this tool. Please install these libraries to your system and include the library path `-I[path to libraries]` accordingly in the C++ compilation command line in the `Makefile`.

* Compile C++ library *./libStatGen/libStatGen.a* under your system by using the following commands:
```
cd libStatGen
make clean
make
```

* Compile C++ source code for *./bin/Estep_mcmc* that will be used to run the Estep MCMC algorithm to estimate eQTL effect sizes and the posterior causal probabilities (PCP) to be an eQTL, by using the following commands under `BGW-TWAS/` directory:
```
make clean
make
```

### 2. Additional Requirements
* Tool [**tabix**](https://www.htslib.org/doc/tabix.html)
* R library [**data.table**](https://github.com/Rdatatable/data.table/wiki/Installation)

## Input Files

The following information is required, stored in various text files with pre-defined formats: a gene expression file, genotype files for the training sample, a list of filenames for training genotype files, genotype files for the prediction sample, a list of filenames for prediction genotype files, and phenotype files for the prediction sample.

### 1. Gene Expression File for Training

A file containing gene expression levels for training samples as in `./Example/ExampleData/Gene_Exp_example.txt`, with one gene per row, and one sample per column starting from the 6th column. The first five columns are required to be gene annotation information including chromosome number, starting position, ending position, Gene ID, and Gene Name or Gene ID. An example of one gene and first 6 columns is below:

| CHROM |	GeneStart |	GeneEnd |	    TargetID     | GeneName |	 ROS20275399 |
| ----- | --------- | ------- | ---------------- | -------- | ------------ |
|  19	  |  1040101	| 1065571 |	 ENSG00000064687 |	 ABCA7  | 0.6707739044 |


### 2. Training VCF Genotype Files

* **[VCF Genotype files](http://samtools.github.io/hts-specs/VCFv4.1.pdf)** are required for training gene expression prediction models. The VCF genotype files should be one per genome block (variants of the same chromosome should be in the same block), sorted by position, and then zipped by `bgzip` (file names are of `[filehead].vcf.gz`), e.g., `./Example/ExampleData/genotype_data_files/Cis_geno_block.vcf.gz`. Genome blocks are expected to be approximately independent with ~5K-10K SNPs per block. All VCF genotype files should be put under the same parent directory, `${geno_dir}`, which should also be provided. For example, see `./Example/ExampleData/genotype_data_files/*_geno_block.vcf.gz`.

* **List of file heads** of VCF genotype files as in `./Example/ExampleData/geno_block_filehead.txt` is required. Each row of the list file is the file head of the VCF file of one genome block as in `[filehead].vcf.gz`. For example,

| -------------------------------- |
| Cis_geno_block    |
| Trans_geno_block |

Note that the VCF file extension suffix `.vcf.gz` should not be included.


### 3. Test Individual-level GWAS Data

* **Test [VCF Genotype files](http://samtools.github.io/hts-specs/VCFv4.1.pdf)** are required for predicting GReX values of test samples. Different from the training VCF genotype files, these test genotype files should be one per chromosome containing `CHR[chr_num]` in their file name, sorted by position, zipped by `bgzip`, and indexed by `tabix`. For example, see `./Example/ExampleData/genotype_data_files/Test_CHR*.vcf.gz`.

* **Test phenotype file** contains two columns without header: the first column is a list of sample IDs that have genotype data in the test VCF files, and the second column is phenotype values. Second column will not be used for predicting GReX values, thus random values from `N(0, 1)` can also be used here without known phenotype values. For example, see `./Example/ExampleData/Test_pheno.txt`


## Example Usage

Set up bash variables:

```
BGW_dir=~/GIT/BGW-TWAS # tool directory
gene_name=ABCA7
GeneExpFile=${BGW_dir}/Example/ExampleData/Gene_Exp_example.txt
geno_dir=${BGW_dir}/Example/ExampleData/genotype_data_files
wkdir=${BGW_dir}/Example/ExampleWorkDir
LDdir=${BGW_dir}/Example/ExampleData/LDdir
Genome_Seg_Filehead=${BGW_dir}/Example/ExampleData/geno_block_filehead.txt
GTfield=DS # specify genotype field "GT" for genotype
num_cores=2 # number of cores to be used
```

### Step 1. Obtain Summary Statistics
Shell script `Step1_get_sum_stat.sh` will obtain single variant eQTL summary statistics (aka Score Statistics) in required formats.

#### Input arguments
- `--BGW_dir` : Specify the directory of BGW-TWAS tool
- `--wkdir` : Specify a working directory
- `-GeneExpFile` : Specify gene expression file directory
- `--gene_name` : Specify the gene name that should be the same used in `GeneExpFile`
- `--geno_dir` : Specify the directory of all genotype files
- `--LDdir` : Specify the directory of all LD files
- `--Genome_Seg_Filehead` : Specify the genome segmentation file
- `--GTfield` : Specify the genotype format in the vcf file that should be used: `GT` (default) or e.g., `DS` for dosage
- `--num_cores` : Specify the number of parallele sessions, default `1`.

#### Example command:
```
${BGW_dir}/bin/Step1_get_sumstat.sh --BGW_dir ${BGW_dir} \
--wkdir ${wkdir} --gene_name ${gene_name} --GeneExpFile ${GeneExpFile} \
--geno_dir ${geno_dir} --LDdir ${LDdir} --Genome_Seg_Filehead ${Genome_Seg_Filehead} \
--GTfield ${GTfield} --num_cores ${num_cores}
```

#### Output files
- This shell script will create a directory called `${gene}_scores/` under the specified working directory `${wkdir}/`, where results for each genome segment will be stored.

- This script will also generate LD files under `${LDdir}/` for all genome blocks. Since LD files will be the same per genome block, these files will only be generated once and used for training prediction models for all gene expression traits.

- These summary statistics files and LD files will be used for implementing the MCMC algorithm to fit the Bayesian model


### Step 2. Prune Genome Segments
Step 2 selects a subset of genome blocks (up to `${max_blocks}`) for joint model training by BGW-TWAS, where Cis blocks are always selected. Trans blocks with minimum single-variant eQTL `p-value < ${p_thresh}` will first be ranked by the smallest p-value within block (from the smallest to the largest), where top ranked trans blocks will be selected up to `${max_blocks}`.


#### Input arguments
- `--wkdir` : Specify a working directory
- `--gene_name` : Specify the gene name that should be the same used in `GeneExpFile`
- `-GeneExpFile` : Specify gene expression file directory
- `--Genome_Seg_Filehead` : Directory of the file containing a list of fileheads of segmented genotype files
- `--p_thresh` : Specify p-value threshold for pruning, default `1e-5`
- `--max_blocks` : Specify the maximum number of genome blocks for jointly training gene expression prediction models, default `100`

#### Example command:
```
${BGW_dir}/bin/Step2_prune.sh --wkdir ${wkdir} --gene_name ${gene_name} \
--GeneExpFile ${GeneExpFile} --Genome_Seg_Filehead ${Genome_Seg_Filehead} \
--p_thresh 0.001 --max_blocks 100
```

#### Output files
A list of filehead of selected genome blocks is given in the file of `${wkdir}/${gene_name}_scores/${gene_name}_select_segments.txt`, which will be used in next step (model training).

### Step 3. Training Gene Expression Prediction Model
Step 3 will use summary statistics generated from Step 1 for genome blocks pruned from Step 2 to carry out Bayesian variable selection regression with EM-MCMC algorithm, with the goal of fitting a gene expression prediction model. Bayesian posterior causal probability (PCP) to be an eQTL and effect sizes for SNPs with `PCP>${PCP_thresh}` will be saved for predicting GReX.

#### Example commands:
```
N=499 # sample size
hfile=${BGW_dir}/Example/hypval.txt
PCP_thresh=0.0001

${BGW_dir}/bin/Step3_EM-MCMC.sh  --BGW_dir ${BGW_dir} \
--wkdir ${wkdir} --gene_name ${gene_name} \
--GeneExpFile ${GeneExpFile} --LDdir ${LDdir} \
--N 499 --hfile ${BGW_dir}/Example/hypval.txt \
--em 5 --burnin 10000 --Nmcmc 10000 \
--PCP_thresh 0.0001 --num_cores 2
```

#### Output files
Bayesian estimates of eQTL PCP and effect sizes from the final EM-MCMC iteration will result in the output `${gene_name}_BGW_eQTL_weights.txt` file under specified `${wkdir}` that lists all SNPs with `PCP>${PCP_thresh}`. The BGW weight file (`${gene_name}_BGW_eQTL_weights.txt`) will be used for predicting GReX values with individual-level GWAS data as in Step 4 or conducting gene-based association test with GWAS summary statistics.

[//]: <> (Numerous arguments can be used to modify the EM-MCMC algorithm in Step 3, but should be done with caution. These arguments are detailed in Yang et al. 2017 https://github.com/yjingj/bfGWAS/blob/master/bfGWAS_Manual.pdf)

### Step 4: Predict GReX
Step 4 will use the BGW weight file (`${gene_name}_BGW_eQTL_weights.txt`) generated from Step 3 and provided individual-level GWAS data to predict GReX values for test samples. Both test genotype VCF files (saved per chromosome, each file name containing `CHR[chr_num]`) and test phenotype file should be provided.

#### Example commands:
```
BGW_weight=${wkdir}/${gene_name}_BGW_eQTL_weights.txt
test_geno_dir=/mnt/YangFSS/data2/AMP-AD/Mayo/Genotype/Impute2_1KG
test_geno_filehead=/mnt/YangFSS/data2/AMP-AD/Mayo/Genotype/Impute2_1KG/vcf_filehead.txt
test_pheno=/mnt/YangFSS/data2/AMP-AD/Mayo/Phenotype/MayoPhenoAD.txt
GTfield=GT #or DS

${BGW_dir}/bin/Step4_get_test_grex.sh --BGW_dir ${BGW_dir} \
--wkdir ${wkdir} --gene_name ${gene_name} \
--BGW_weight ${BGW_weight} --test_geno_dir ${test_geno_dir} \
--test_geno_filehead ${test_geno_filehead} \
--GTfield ${GTfield} --test_pheno ${test_pheno} \
--num_cores 2
```
#### Output
This step will generate predicted GReX values in `${gene_name}_pred_grex.txt` and the sum of PCP (estimating the expected number of eQTL) with respect to cis-, trans-, all eQTL as in `${gene_name}_sumPCP.txt`.



