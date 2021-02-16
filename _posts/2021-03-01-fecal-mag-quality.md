---
layout: publication
title: 'Fecal MAG quality'
date: 2021-03-01
excerpt: 'The Reliability of Metagenome-Assembled Genomes (MAGs) in Representing Natural Populations: Insights from Comparing MAGs against Isolate Genomes Derived from the Same Fecal Sample'
authors: 'Meziti A•, Rodriguez-R LM•, Hatt JK, Peña-Gonzalez A, Levy K, Konstantinidis KT.'
citation: 'Appl Env Microbiol, 87(6):e02593-20. 2021.'
category: Publication
equal_contribution: true
tag:
- genomics
- metagenomics
- binning
- quality
doi: 10.1128/AEM.02593-20
comments: true
---

## Abstract
The recovery of metagenome-assembled genomes (MAGs) from metagenomic data has
recently become a common task for microbial studies.
The strengths and limitations of the underlying bioinformatics algorithms are
well appreciated by now based on performance tests with mock data sets of known
composition.
However, these mock data sets do not capture the complexity and diversity often
observed within natural populations, since their construction typically relies
on only a single genome of a given organism.
Further, it remains unclear if MAGs can recover population-variable genes
(those shared by >10% but <90% of the members of the population) as efficiently
as core genes (those shared by >90% of the members).
To address these issues, we compared the gene variabilities of pathogenic
*Escherichia coli* isolates from eight diarrheal samples, for which the
isolate was the causative agent, against their corresponding MAGs recovered
from the companion metagenomic data set. Our analysis revealed that MAGs
with completeness estimates near 95% captured only 77% of the population core
genes and 50% of the variable genes, on average. Further, about 5% of the genes
of these MAGs were conservatively identified as missing in the isolate and were
of different (non-*Enterobacteriaceae*) taxonomic origin, suggesting errors at
the genome-binning step, even though contamination estimates based on commonly
used pipelines were only 1.5%. Therefore, the quality of MAGs may often be
worse than estimated, and we offer examples of how to recognize and improve
such MAGs to sufficient quality by (for instance) employing only contigs longer
than 1,000 bp for binning.

## Importance
Metagenome assembly and the recovery of metagenome-assembled genomes (MAGs)
have recently become common tasks for microbiome studies across environmental
and clinical settings.
However, the extent to which MAGs can capture the genes of the population they
represent remains speculative.
Current approaches to evaluating MAG quality are limited to the recovery and
copy number of universal housekeeping genes, which represent a small fraction
of the total genome, leaving the majority of the genome essentially
inaccessible.
If MAG quality in reality is lower than these approaches would estimate, this
could have dramatic consequences for all downstream analyses and
interpretations.
In this study, we evaluated this issue using an approach that employed
comparisons of the gene contents of MAGs to the gene contents of isolate
genomes derived from the same sample.
Further, our samples originated from a diarrhea case-control study, and thus,
our results are relevant for recovering the virulence factors of pathogens from
metagenomic data sets.
