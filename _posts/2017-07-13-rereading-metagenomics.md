---
layout: post
title:  Rereading Microbial Communities Under the Light of Metagenomics
date:   2017-07-13
excerpt: A quick overview of my doctoral dissertation
tag:
- metagenomics
- software
- statistics
- microbial ecology
- commentary
comments: true
---

*An overview of my
[doctoral dissertation](/publication/tools-ecology-metagenomics).*

There is an estimated 5 nonillion prokaryotic cells on Earth. That is a 5
followed by 30 zeroes, a number so large that “astronomic” falls short. For
example, there are about 7 billion prokaryotic cells on Earth for every single
planet in the observable universe (estimated 700 quintillion, a 7 followed by 20
zeroes). However, we know remarkably little about the distribution of
prokaryotic species around the globe, or the ecologic principles that dictate
how these species get to live together in the same environment: how are
communities assembled.

In his seminal 1934 work ‘Geobiology or Introduction to the Science of the
Environment’, professor L.G.M. Baas Becking wrote about microorganisms:

> Everything is everywhere, but the environment selects[^1]

In this elegantly concise dictum (and throughout his work), Baas Becking
provided an early version of the ecologic niche concept as the driver of
community assemblies, while predicting that all microorganisms are
cosmopolitan. Importantly, he understood
from the onset of microbial ecology, that the limit of detection and the
selectiveness of techniques in microbiology hide deeper truths about the real
distribution of microorganisms. Just because we don't see a microbe, it doesn't
mean it’s not there. Since then, there have been enormous advancements in both
microbial ecology theory and microbiology techniques, but the limitations
recognized by Baas Becking continue to hunt the analysis of the growing
observation data. During the past decade, a novel set of techniques collectively
known as metagenomics has allowed the study of genetic material directly
extracted from environmental samples. By allowing the direct observation of
genomic fragments from microorganisms, bypassing cultivation and targeted
amplification, metagenomics offers unique opportunities to close the gaps that
exist between theory and empirical testing in microbial ecology. However,
realizing the full potential of metagenomics requires the advancement of
computational and statistical techniques for data analyses accounting for the
detection limits inherent to the sampling methods.

So how much can we see in a metagenomic sample? Not a trivial question that
could be tackled in different ways. For example, one could simply estimate the
fraction of successfully sequenced fragments of DNA from all the prokaryotic
cells in an ecosystem. One of the microbial communities we have studied is that
of Lake Lanier, located in the Southeast of the USA. In Lake Lanier, we estimate
the sampling fraction in each one of our metagenomes at about 2 in 1,019. This
is akin to attempting to describe all insects on Earth from a random sample of
two, likely a couple of ants. This exercise helps visualizing the magnitude of
the problem, but could be misleading because not all cells in a community are
uniformly different. Rather, they reflect their evolutionary history, and tend
to cluster in tractable and genetically distinct groups (species) that can be
detected and characterized using metagenomics[^2]. Therefore, the fraction of
species in the community normalized by abundance is much more informative, as it
reflects the descriptive power of a sample as well as the accuracy in sample
comparisons[^3]. This problem, measuring metagenomic coverage, has been
previously explored from a theoretical standpoint, typically by modeling or
assuming parameters describing the community and the sample taken (reviewed by
Luo *et al*[^4]). However, no scalable implementations that could be applied to
the large numbers of sequences in metagenomes were available. We proposed an
alternative approach that didn't attempt to directly model the community or the
sample, but instead leveraged a more general statistical result spotted by
Allan Turing and formalized by his assistant Irving J. Good: a random sample
from large categories tends to be more redundant when it's more comprehensive.
*I.e.*, coverage can be estimated from redundancy[^5]. This principle has been
previously applied to other related problems, such as the estimation of richness
or other metrics of diversity[^6]<sup>,</sup>[^7], but not for the estimation of
metagenomic coverage. Our approach, Nonpareil, does exactly
that[^8]<sup>,</sup>[^9]. And the results are much more encouraging than the
bleak image of two ants representing all insects: our metagenomes from Lake
Lanier have over 60% abundance-weighted average coverage.

Being able to directly address the coverage problem, we next embarked on the use
of metagenomics to describe the influence of different factors on community
assembly. First, we expected that the most conspicuous signs could be detected
after a large disturbance (*cf.* Shade *et al*[^10]). For this, we used the
unintended experiment provided by the 2010 BP oil spill in the Gulf of Mexico,
to describe the succession dynamics in the microbial community of a Florida
beach. We were able to obtain samples before the oil reached the shoreline, as
well as a time series from the oiling extending for a year. We demonstrated
that this secondary succession only had minor lasting effects in community
composition after recovery, and was mainly driven by degradation of
hydrocarbons and nutrient scavenging in concert with the degree of
specialization of community members[^11]. We saw a strong environmental
selection, but we also saw that many of the organisms responding to the
disturbance were either present in the undisturbed community or typically found
in the waters of the Gulf. Perhaps some microorganisms are local, and not
everywhere. With this lingering question in mind we returned to Lake Lanier, a
relatively stable environment offering the perfect natural laboratory: seasonal
cycles and well defined connections to four downstream lakes through the
Chattahoochee River until the estuaries in the Gulf of Mexico. After monitoring
this system for a span of six years, we found strong effects of both season and
geographic distance on the communities, only minor landscape effects, and
documented cases of local and regional endemism, indicating that both historic
and contemporary factors affect community assembly in this system[^12]. In
other words: the environment does select, but there are such things as local
microbes.

## References

[^1]: Baas Becking LGM. 1934. Geobiologie of inleiding tot de milieukunde (W.P. Van Stockum & Zoon, Den Haag).

[^2]: Rodriguez-R LM, Konstantinidis KT. 2014. Bypassing Cultivation To Identify Bacterial Species. *Microbe*. 9, 111–118. [More details](/publication/bypassing-cultivation).

[^3]: Rodriguez-R LM, Konstantinidis KT. 2014. Estimating coverage in metagenomic data sets and why it matters. *ISME J*. [More details](/publication/coverage-matters).

[^4]: Luo C, Rodriguez-R LM, Konstantinidis KT. 2013. A user’s guide to quantitative and comparative analysis of metagenomic datasets. *Methods Enzymol*. 531, 525–547. [More details](/publication/analysis-metagenomes).

[^5]: Good IJ. 1953. The Population Frequencies of Species and the Estimation of Population Parameters. *Biometrika*. 40, 237–264.

[^6]: Chao A. 1984. Nonparametric Estimation of the Number of Classes in a Population. *Scand. J. Stat*. 11, 265–270.

[^7]: Chao A, Shen TJ. 2003. Nonparametric estimation of Shannon’s index of diversity when there are unseen species in sample. *Environ. Ecol. Stat*. 10, 429–443.

[^8]: Rodriguez-R LM, Konstantinidis KT. 2014. Nonpareil: a redundancy-based approach to assess the level of coverage in metagenomic datasets. *Bioinforma*. Oxf. Engl. 30, 629–635. [More details](/publication/nonpareil-coverage).

[^9]:	Rodriguez-R LM, Gunturu S, Cole JR, Tiedje JM, Konstantinidis KT. 2018. Nonpareil 3: Fast Estimation of Metagenomic Coverage and Sequence Diversity. *mSystems* 3(3):e00039-18. [More details](/publication/nonpareil-3).

[^10]: Shade A, *et al*. 2012. Fundamentals of microbial community resistance and resilience. *Front. Microbiol*. 3, 417.

[^11]: Rodriguez-R LM, *et al*. 2015. Microbial community successional patterns in beach sands impacted by the Deepwater Horizon oil spill. *ISME J*. [More details](/publication/oil-spill)

[^12]: Rodriguez-R LM, Tsementzi D, Luo C, Hatt JK, Konstantinidis JK. *In preparation*. Biogeography and seasonal variation disentangled in microbial meta-communities of five connected lakes (Chapter VIII of dissertation).
