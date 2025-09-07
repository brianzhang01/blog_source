---
title: A zkSNARK Syllabus
author: Brian Zhang
date: '2025-09-06'
slug: zksnark-syllabus
categories: []
tags: []
description: 'This is a backfill note from 2025-06-19. Perhaps the most powerful cryptographic technology to come out of the last decade is general-purpose succinct zero knowledge proofs, usually called zk-SNARKs'

---

This is a backfill note from 2025-06-19.

> *Perhaps the most powerful cryptographic technology to come out of the last decade is general-purpose succinct zero knowledge proofs, usually called zk-SNARKs*
> - [Vitalik Buterin, 2021](https://vitalik.eth.limo/general/2021/01/26/snarks.html)

I’m starting to learn about zkSNARKs, and while there’s a lot I don’t know, I feel I have a basic map of where things fall in the landscape. So I thought I’d write it down for myself and others. This is not meant to be a self-contained primer, but rather to point to what needs to be studied.

There are some nice popular-level illustrations of zero-knowledge proofs. In order of the amount of math / reasoning required:
- Where's Waldo ([WIRED video](https://www.youtube.com/watch?v=fOGdb1CTu5c), Level 1)
- Ali Baba's Cave ([Wikipedia](https://en.wikipedia.org/wiki/Zero-knowledge_proof#The_Ali_Baba_cave))
- Sudoku ([Christian Reitwiessner talk](https://www.youtube.com/watch?v=jr95o_k_SwI))
- 3-coloring of a graph ([WIRED video](https://www.youtube.com/watch?v=fOGdb1CTu5c), Level 3, and [Goldreich / Micali / Wigderson 1991]([Proofs that yield nothing but their validity or all languages in NP have zero-knowledge proof systems | Journal of the ACM](https://dl.acm.org/doi/10.1145/116825.116852)))

To implement these sorts of protocols in code, one needs a **commitment scheme**, for instance [Pedersen commitment](https://zcash.github.io/halo2/background/groups.html).

All of the above zero-knowledge proof protocols are **interactive**. For practical applications, we would prefer non-interactive proofs. Skipping over a lot of research, this train of thought leads to **zkSNARKs**. zkSNARK stands for "zero-knowledge Succinct Non-interactive ARgument of Knowledge". [This review](https://arxiv.org/abs/2202.06877) will have more about the history of developments that led to zkSNARKs.

For a first exposure to zkSNARKs, I used this [Christian Reitwiessner talk](https://www.youtube.com/watch?v=jr95o_k_SwI); [Vitalik Buterin’s introduction](https://vitalik.eth.limo/general/2021/01/26/snarks.html) also looks great. This all takes some time to digest and flesh out.

Then the next level to take is, [Vitalik Buterin](https://vitalik.eth.limo/general/2021/11/05/halo.html) and [this Halo forums post](https://forum.zcashcommunity.com/t/halo-evaluation-without-pairing-check/40790) both divide up current zkSNARK implementations into 3 streams:
- **FRI** with Merkle trees = **STARKs**. (FRI stands for "Fast Reed-Solomon Interactive oracle proof of proximity", STARK stands for "Scalable Transparent ARgument of Knowledge")
- **Elliptic curve inner products** = bulletproofs
- **Elliptic curve pairings** = Kate, very math-intensive

So one can go and learn each of these areas, or just one depending on interest. Each of these has its advantages and disadvantages, and each is being actively pushed forward.

Here are some nice zkSNARK learning resources.
- Overview / series
    - [Vitalik Buterin’s introduction](https://vitalik.eth.limo/general/2021/01/26/snarks.html) to zkSNARKs and [other posts by Vitalik](https://vitalik.eth.limo/categories/cryptography.html)
    - [Christian Reitwiessner talk](https://www.youtube.com/watch?v=jr95o_k_SwI)
    - [ZK Learning Resources](https://learn.0xparc.org/) by 0xPARC
    - [Stanford CS 355: Applied Zero Knowledge Proofs](https://cs355.stanford.edu/syllabus.html) by Dan Boneh (Spring 2025)
- Applications of zkSNARKs
    - [Stanford CS 355 Lecture 1](https://cs355.stanford.edu/lectures/lecture1.pdf)
    - A [review paper I'm reading](https://arxiv.org/abs/2202.06877), by Chen / Lu / Kunpittaya / Luo (2022), points to zkRollups and private financial transactions as the two main applications today
    - [Zcash](http://zerocash-project.org/paper) (2014), the first widely adopted use of zero-knowledge proofs / zkSNARKs
- Math
    - [Elliptic Curve Cryptography](https://web.math.ucsb.edu/~kylehansen/Elliptic_Curve_Cryptography.pdf) by Alar, Hansen, Young (2021): a great first introduction to elliptic curves. Minimal math with a focus on protocols.
    - [Background Material - The halo2 Book](https://zcash.github.io/halo2/background.html): a broad general math resource for zkSNARKs, including elliptic curves and inner products.
    - [Pairings for Beginners by Craig Costello](https://static1.squarespace.com/static/5fdbb09f31d71c1227082339/t/5ff394720493bd28278889c6/1609798774687/PairingsForBeginners.pdf): a hefty resource on a hefty topic! This seems to build the math of pairings from the ground up.
    - [Groth 2016](https://eprint.iacr.org/2016/260.pdf): an influential paper on zkSNARKs via pairings, though this seems harder to read than the Costello book.
