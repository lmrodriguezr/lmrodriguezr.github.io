---
layout: publication
title:  "MiGA Webserver"
date:   2018-07-01
excerpt: "The Microbial Genomes Atlas (MiGA) webserver: taxonomic and gene diversity analysis of Archaea and Bacteria at the whole genome level."
authors: 'Rodriguez-R LM, Gunturu S, Harvey WT, Rosselló-Mora R, Cole JR, Tiedje JM, Konstantinidis KT.'
citation: 'Nucleic Acids Research 46(W1):W282-W288. 2018.'
publication: true
tag:
- genomics
- software
- taxonomy
- microbial ecology
- web app
doi: 10.1093/nar/gky467
comments: true
---

## Abstract
The small subunit ribosomal RNA gene (16S rRNA) has been successfully used to catalogue and study the diversity of prokaryotic species and communities but it offers limited resolution at the species and finer levels, and cannot represent the whole-genome diversity and fluidity. To overcome these limitations, we introduced the Microbial Genomes Atlas (MiGA), a webserver that allows the classification of an unknown query genomic sequence, complete or partial, against all taxonomically classified taxa with available genome sequences, as well as comparisons to other related genomes including uncultivated ones, based on the genome-aggregate Average Nucleotide and Amino Acid Identity (ANI/AAI) concepts. MiGA integrates best practices in sequence quality trimming and assembly and allows input to be raw reads or assemblies from isolate genomes, single-cell sequences, and metagenome-assembled genomes (MAGs). Further, MiGA can take as input hundreds of closely related genomes of the same or closely related species (a so-called ‘Clade Project’) to assess their gene content diversity and evolutionary relationships, and calculate important clade properties such as the pangenome and core gene sets. Therefore, MiGA is expected to facilitate a range of genome-based taxonomic and diversity studies, and quality assessment across environmental and clinical settings. MiGA is available at [http://microbial-genomes.org/](http://microbial-genomes.org/).

{% capture images %}
	/assets/img/MiGA_Graphical_abstract-01.png
{% endcapture %}
{% include gallery images=images caption="MiGA graphical abstract" cols=1 %}
