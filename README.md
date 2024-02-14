# Benchmark dataset for bacterial genome analyses

updated at 2024-02-14

Results of quality check and SNP analyses of
Shiga toxin-producing E. coli (STEC).  STEC genome from three indepenedent outbreaks were used for the analyses. These dataset can be used for benchmarking your bacterial genome analyses.

## Dataset
* Outbreak 1: E. coli O157:H7. DRR149584, DRR149590, DRR149598, DRR149646, DRR149690  (Ref. 1)
* Outbreak 2: E. coli O157:H7. DRR149748, DRR149750, DRR149762, DRR149766, DRR149771  (Ref. 1)

* Outbreak 3: E. coli O121:H19. DRR147067, DRR147069, DRR147072, DRR147075, DRR147079  (Ref. 2)

***

## Content
1. ***SNPcaster*** folder

    Result files by the SNPcater program. The SNPcaster is our in-house SNP analyses suit, which is planning to be publish. 

2. ***grape_qc_assembly*** folder

    Results files by grape_qc_assembly, which is our in-house programs for de novo assembly and quality check. 

**Some result files were not uploaded due to size limitation** 

***
## How to download  short-read files
1. Install SRA toolkit and use fasterq-dump.sh
`fasterq-dump_2023-05-30.sh list THREADS`
* Note that proxy setting may be required for sra-tools.
* The dependencies are shown in **fasterq-dump_2023-05-30.sh**.

2. Manually download from SRA site

    1. Access the NCBI SRA site
https://www.ncbi.nlm.nih.gov/sra/

    2. Enter SRA ID
    3. Select Run ID, and then select "FASTA/FASTQ download"

***
#### Reference
1. Lee K., Izumiya H., Iyoda S., and Ohnishi M. Effective surveillance using multilocus variable-number tandem-repeat analysis and whole-genome sequencing for enterohemorrhagic Escherichia coli O157. 2019. Appl Environ Microbiol 85:e00728-19.

2. Kikuchi K., Lee K., Ueno H., Tomari K., Kobori S., Kaetsu A., Matsui M., Suzuki S., Sekizuka T., Kuroda M., Miyazaki M., and Ohnishi M. Enterohaemorrhagic Escherichia coli O121:H19 acquired an extended-spectrum beta-lactamase gene during the development of an outbreak in two nurseries. 2019. Microbial genomics 5:e000278.



