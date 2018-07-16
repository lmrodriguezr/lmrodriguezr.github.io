---
layout: publication
title:  "ROCker"
date:   2017-02-01
excerpt: "ROCker: accurate detection and quantification of target genes in short-read metagenomic data sets by modeling sliding-window bitscores."
authors: 'Orellana LH•, Rodriguez-R LM•, Konstantinidis KT.'
citation: 'Nucleic Acids Research 45(3):e14. 2017.'
equal_contribution: true
category: Publication
tag:
- metagenomics
- software
- statistics
doi: 10.1093/nar/gkw900
comments: true
---

## Abstract
Functional annotation of metagenomic and metatranscriptomic data sets relies on similarity searches based on e-value thresholds resulting in an unknown number of false positive and negative matches. To overcome these limitations, we introduce ROCker, aimed at identifying position-specific, most-discriminant thresholds in sliding windows along the sequence of a target protein, accounting for non-discriminative domains shared by unrelated proteins. ROCker employs the receiver operating characteristic (ROC) curve to minimize false discovery rate (FDR) and calculate the best thresholds based on how simulated shotgun metagenomic reads of known composition map onto well-curated reference protein sequences and thus, differs from HMM profiles and related methods. We showcase ROCker using ammonia monooxygenase (*amoA*) and nitrous oxide reductase (*nosZ*) genes, mediating oxidation of ammonia and the reduction of the potent greenhouse gas, N<sub>2</sub>O, to inert N<sub>2</sub>, respectively. ROCker typically showed 60-fold lower FDR when compared to the common practice of using fixed e-values. Previously uncounted ‘atypical’ *nosZ* genes were found to be two times more abundant, on average, than their typical counterparts in most soil metagenomes and the abundance of bacterial *amoA* was quantified against the highly-related particulate methane monooxygenase (*pmoA*). Therefore, ROCker can reliably detect and quantify target genes in short-read metagenomes.
