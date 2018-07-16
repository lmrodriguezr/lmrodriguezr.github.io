---
layout: software
title:  "Nonpareil"
date:   2013-01-01
excerpt: "Metagenomic Read Coverage and Sequence Diversity"
category: Software
tag:
- metagenomics
- statistics
- coverage
- c++
- r
publication: nonpareil-3
github: lmrodriguezr/nonpareil
r_package: nonpareil
comments: true
---

Nonpareil measures read redundancy using different heuristics and (optionally)
exact *k*-mer comparisons to estimate the abundance-weighted average moverage
of a metagenome as well as its sequence diversity (*N<sub>d</sub>*).

The [original publication of Nonpareil](/publication/nonpareil-coverage)
described the base algorithm as well as the statistical basis for coverage
estimation based on redundancy. The *k*-mer kernel and the diversity index are
described in the [Nonpareil 3 manuscript](/publication/nonpareil-3). Additional
biological and statistical context as well as practical relevance are
[discussed commentary on coverage](/publication/coverage-matters).
