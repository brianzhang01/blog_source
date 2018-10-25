---
title: Missing Heritability and Microaggressions
author: Brian Zhang
date: '2018-10-24'
slug: missing-heritability-and-microaggressions
categories: []
tags:
  - general
---

Missing heritability is like microaggressions: many seemingly insignificant effects can add up.

Two weeks ago, as I was taking a journey back to London Heathrow / Oxford, I came across a small connection in a journal article and a podcast. It was a nice moment of seeing two ideas click together.

The podcast, which came second, was [an episode of Nomad](https://www.nomadpodcast.co.uk/paula-gooder-phoebe-patriarchy-and-faithful-improvisation-n180/), a British podcast discussing Christian faith outside the institutional church. The show's hosts were interviewing [Paula Gooder](https://www.gooder.me.uk), a theologian / lay reader in the Church of England, who recently came out with a work of historical fiction based on the character of Phoebe in the Christian New Testament. Over the course of the discussion, Gooder was asked about her experiences in Christian ministry as a woman, and brought up some of the challenges with being regularly challenged about her appearance and matter of speaking when she would preach on Sundays (roughly 29:30 - 32:30).

Later while debriefing the interview, the co-hosts David Benjamin Blower and Tim Nash took time to reflect on that segment:

[Starting 1:10:05] *"I think one of the most shocking and disturbing things in the interview is just hearing how much, what kind of criticism Paula Gooder and I imagine many other women in similar roles get. I mean it's got to wear you down, just getting picked at, nitpicked at, you know, you're doing this wrong, you're doing that wrong." -Blower*

*"Yeah, I was really surprised by that. I kind of expected her to say that perhaps people were harder on her in terms of her theology and what she was saying, but actually picking on her appearance and her tone of voice, I wasn't expecting that at all. [Blower: Yeah.] That kind of stuff would really, that would grind you down over time, wouldn't it? ..." -Nash*

[Starting 1:11:45] *"It feels to me like there's this, just this weird kind of culture of judgment that surrounds women, you know, when a woman does something, or stands somewhere, you know, there's just this sort of permission to perpetually judge." -Blower*

*"Yeah, yeah there really is." -Nash*

*"Yeah, and it's one of those things, because it's really,* ***it's been buried under a barrage of little subtleties that are very hard to nail down as a systemic issue, but it is, it's a systemic issue, isn't it?"*** *-Blower* [Emphasis mine.]

While I'm not very familiar with psychology / social science, the sorts of comments Gooder mentioned seem to classify as microaggressions. They are small ("micro") in nature, and don't necessarily arise from malicious intent. Furthermore, an individual incident taken on its own, if explained to a friend, might be seen as something trivial and not worth making a fuss about. Yet for the person encountering such behavior, the combination of incidents becomes a salient part of their lived experience which they need to deal with / manage on a regular basis. Over the long term, they would affect one's sense of belonging and likelihood to stay in a profession.

## Missing heritability

Earlier while on a flight, I had been reading a journal article related to my research in statistical genetics. The article, "[Genomic inflation factors under polygenic inheritance](https://www.nature.com/articles/ejhg201139)" (Yang et al. 2011), had the following introductory paragraph:

*"Genome-wide assocation studies (GWAS) have led to the discovery of hundreds of genetic variants that are associated with complex diseases and traits. In total, however, the identified variants explain only a fraction of total risk or phenotypic variance, resulting in the so-called 'missing heritability'. One explanation is that* ***most complex diseases and traits are caused by a large number of variants, the effects of which are too small to pass a stringent genome-wide significance level.*** *Therefore, large sample sizes are required and many collaborations have been established to achieve this, resulting in published meta-analyses for a range of diseases and traits."* [Emphasis mine.]

The context of that paragraph is what was known as the "missing heritability" problem in genetics. In the first decade of the 2000's, when DNA sequencing first became possible at scale, myriad efforts sought to collect large cohorts of participants, measure DNA variation throughout the genome, then screen for correlations against diseases to determine genetic associations. From the results of these GWAS, one can output a number between 0 and 1 called the heritability, which is essentially a measure of how genetic vs. environmental the trait is (1 = "nature", 0 = "nurture").

The problem is that GWAS heritability numbers were often much smaller (perhaps 2-10x) compared to the established heritability numbers, as measured through [studies involving fraternal vs. identical twins](https://en.wikipedia.org/wiki/Twin_study). This "missing heritability problem" led to [a variety of explanations](https://www.nature.com/news/2008/081105/full/456018a.html)--insufficient coverage of the genome, a need to include epigenetic effects, or problems with twin study methodology--while raising concerns about the large amounts of funding invested in GWAS efforts.

The discrepancy was more or less conclusively settled by the paper "[Common SNPs explain a large proportion of the heritability for human height]((https://www.nature.com/articles/ng.608))" (Yang et al. 2010)^[SNP, short for "single nucleotide polymorphism", just means a mutation in the genome.], which contains many of the same authors as the paper I was reading. Previous estimates of heritability only factored in statistically significant genetic markers (based on p-value), while Yang et al. sought to capture all markers at once. Because the number of genetic markers exceeds the number of individuals, it is not possible to estimate effect sizes / coefficients for all of them, since the system is underdetermined. This would be a fixed effects model. Instead, the authors used a random effects or variance components model that was only interested in fitting one number, the heritability. For human height, the twin study heritability is around 0.8, and using these methods, Yang et al. were able to push the heritability measured by GWAS up from merely 0.05 to 0.45. They also established that the rest of the gap was mostly due to incomplete genotyping.

## Thinking about small effects

As humans, we are often drawn to simple explanations. The world is a messy place and can be difficult to parse. On the social policy side, when it comes to inequalities around gender or race, we might look for clear cases of sweeping discrimination. Not finding those, some might gravitate to opposite explanations grounded completely in intrinsic human differences. [Our narratives are often reductionistic](https://www.ted.com/talks/chimamanda_adichie_the_danger_of_a_single_story), and yet human culture is a complex soup of interactions and chance events.

From a statistical perspective, this way of thinking might be captured as expecting few effects of large size. And scientists can fall into it too. To give a simplisitic retelling of GWAS history, geneticists entered the GWAS era having only been able to study diseases which were caused by at most a few genes, since they were limited in their methodology. For instance, hemophilia and cystic fibrosis are both caused by single genetic mutations. This probably built up an expectation that most diseases would look similar, with their genetic component coming from a few possibly interacting genes. [Boyle et al. 2017](https://www.cell.com/cell/fulltext/S0092-8674(17)30629-3) have this vivid nugget explaining that when GWAS first started out,

*“...human geneticists expected that even complex traits would be driven by a handful of moderate-effect loci--thus giving rise to large numbers of mapping studies that were, in retrospect, greatly underpowered. For example, an elegant 1999 analysis of allele sharing in autistic siblings concluded from the lack of significant hits that there must be 'a large number of loci (perhaps ≥ 15).' This prediction was strikingly high at the time, but seems quaintly low now ([Risch et al., 1999](https://www.cell.com/ajhg/fulltext/S0002-9297(07)62066-7); [Weiner et al., 2016](https://www.nature.com/articles/ng.3863))."*

To return to the example of microaggressions, I was trying to illustrate that a skeptic might hear one example of a "sexist" / "racist" incident and shrug it off. Perhaps the response is, "that wasn't as bad as you set it up to be," or, "I've heard of people who are not X who go through the same thing." But just because you can't see an effect, does that mean it's not there?

One of the conclusions from the missing heritability saga is that the power to explain human diseases does lie in the genome, if we just continue searching. To requote Yang et al. 2011, "large sample sizes are required." With initial GWAS of hundreds to thousands of individuals, many genetic markers may have factored into the "missing heritability," but could not be called with statistical significance. But as GWAS now approach millions of individuals, the heritability from known significant hits (that 0.05 number earlier) will continue to grow and approach the variance components estimate.

So perhaps if this imagined skeptic had access to more anecdotes, or a wider survey of workplace / university experiences and satisfaction, this increased sample would say something that an individual anecdote could not sufficiently convey. The dual problem of "small effects" is to be comfortable with "many effects." Each of us is buffeted by many small forces which add up to produce our personal experience. In GWAS, a collection of causal genes can be effectively modeled statistically, but for social science, perhaps a better way to convey this is not through a linear model but [a personal narrative](https://en.wikipedia.org/wiki/Between_the_World_and_Me).

I'll end with the David Benjamin Blower quote above. What features of our society might be "buried under a barrage of little subtleties that are very hard to nail down as a systemic issue, but it is, it's a systemic issue, isn't it?"
