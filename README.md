# DNA Methylation Analysis Pipeline

This project is a **reproducibility** project of the dna methylation pipeline
presented in the paper https://doi.org/10.1186/s12859-022-04925-2 
by - Kim, H., Sim, M., Park, N

This project was executed on the High Performance Computing (HPC) servers
provided by northeastern university. 

The original authors have provided a way to run the pipeline through docker.
However, most HPC systems do not support docker directly but rather support singularity
due to security reasons.

The work-around for singularity is provided in the
**mspipe_sbatch.sh** file.

## Datasets used
#### *Datasets taken from NCBI GenBank
Sample 1 (Control Sample)\
Accession number: SRR9833670 \
Name: WGBS_24M_rep1 \
Species: Mus musculus \
Age: 24M (24 Months)
https://ncbi.nlm.nih.gov/sra/SRR9833670
 
Sample 2 (Experimental Sample) \
Accession number: SRR9833662 \
Name: WGBS_3M_rep1 \
Species: Mus musculus \
Age: 3M (3 Months)
https://www.ncbi.nlm.nih.gov/sra/SRR9833662

## Files Included
* msPIPE @ 65a63da \
The original DNA Methylation Analysis Pipeline created by the authors.

* mspipe_sbatch.sh \
Batch script to run the pipeline on HPC
servers with singularity
* params_docker.conf \
Configuration file used for the reproducibility
study



## Author
Bhanu Sharma \
email: sbhanu192@gmail.com
