---
title: 'Notes on an EBV DNAemia paper'
author: Brian Zhang
date: '2026-08-03'
slug: ebv-dnaemia
categories: []
tags: []
description: 'Notes on "Population-scale sequencing resolves determinants of persistent EBV DNA", Nyeo et al., Nature 2026.'

---

Notes on "[Population-scale sequencing resolves determinants of persistent EBV DNA](https://www.nature.com/articles/s41586-025-10020-2)", Nyeo et al., *Nature* 2026.[^source]

Usually in a large biobank, your phenotypes come from electronic health records or surveys of the studied population, including longitudinal follow-ups. In my [PhD paper](https://www.nature.com/articles/s41588-023-01379-x), we tested our method on serum biomarker traits in the UK Biobank, like mean platelet volume and LDL cholesterol: these were measured as byproducts of the blood samples collected for sequencing. This paper (Nyeo et al. 2026) introduces an ingenious new phenotype for biobanks: the level of persistent Epstein-Barr virus (EBV) that can be detected in the collected blood sample.

The win here and the reason this rises to a *Nature* paper is that you get the phenotype for free in UK Biobank and All of Us. It reminds me of Po-Ru Loh's paper, "[Insights into clonal haematopoiesis from 8,342 mosaic chromosomal alterations](https://www.nature.com/articles/s41586-018-0321-x)", that went back to the source intensity data of UK Biobank genotyping and used it to call mosaicism events.[^loh]

The design comes from a serendipitous fact, from the section "Rationale of EBV detection" in the Methods:

> The 171,823-nucleotide EBV genome (NC_007605.1) was first included in December 2013 (hg38 version GCA_000001405.15) as a sink for off-target reads that are often present in sequencing libraries, to account for pervasive EBV reads present from the immortalization of LCLs (as with the 1000 Genomes Project and related consortia). Importantly, WGS in the UKB and AOU consortia was performed on whole blood, reflecting that EBV reads detected would derive from viral DNA from past infections.

I suspect this made it easier for them to get the needed data from UKB and AOU. However, they say it should be possible to extend their approach "to a broad range of viruses ... from the Polyomaviridae, Adenoviridae, Parvoviridae and Anelloviridae families", it just might require more work.

My favorite figures in the paper were Fig. 1b and 1c. After they align reads to the EBV genome, they need to mask out two regions in order to get a stable estimate of circulating EBV DNA, what is called EBV DNAemia in the literature. This ends up correlating very well with serostatus.

I thought the implications of their EBV DNAemia phenotype with other diseases were less striking than I would have expected. Possibly it is because this reflects a single time estimate.

I enjoyed their peptide presentation analysis though. They find that HLA alleles which tend to present EBV peptides more strongly, as measured by NetMHC scores, are associated with lower EBV DNAemia (Fig. 5e and Extended Data Fig. 6e-g). I trust this result. Intuitively, patients with HLA alleles that present EBV more easily will see less circulation of EBV in blood (Fig. 5f). It is interesting that this effect is stronger for class II than class I.

Some additional peptide presentation results:
- One HLA allele they mention is HLA-A*03:01 leading to high levels of EBV DNAemia. This happens to be an HLA I have [worked on in depth](https://www.thelancet.com/journals/ebiom/article/PIIS2352-3964%2825%2900317-2/fulltext), and I wonder if it ties into mechanisms of glatiramer acetate.
- I thought [this file](https://github.com/clareaulab/ebv_biobank_gwas/blob/main/epitope-scoring/data/EBV_proteins_genename.fasta) containing EBV protein sequences was fun. (The text mentions "The amino acid sequences of all 87 unique EBV protein sequences ... of the nuccore NC_007605" but this file seems to have 94 genes, not sure why.)
- Lastly, they point to IEDB EBV epitopes being enriched for high NetMHC scores as a verification of the "capacity for NetMHC to predict viral peptide processing and presentation across HLA alleles". I am wondering if researchers who publish peptides on IEDB routinely use NetMHC as part of their screening, confounding this result.

[^source]: I had seen this paper earlier but took a closer look after seeing it in the [Genetics Podcast](https://sanogenetics.com/resources/genetics-podcast) list of [episodes](https://www.youtube.com/watch?v=MJozamwevZQ).

[^loh]: "The core intuition is to harness long-range phase information to search for local imbalances between maternal vs. paternal allelic fractions in a cell population (Extended Data Fig. 1)." Free text [here](https://pmc.ncbi.nlm.nih.gov/articles/PMC6054542/).
