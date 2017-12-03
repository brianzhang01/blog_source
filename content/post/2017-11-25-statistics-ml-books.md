---
title: Statistics / ML Books
author: Brian Zhang
date: '2017-11-25'
slug: statistics-ml-books
categories: []
tags:
  - general
---

At the start of the last post, I talked briefly about courses I’ve been working through. Here are some follow-up thoughts on good books!^[This post is strategically placed so I can cite some of these textbooks in later posts.]

This post will focus on textbooks with a machine learning focus. I’ve read less of the classic statistics textbooks, as I hadn’t specialized much in statistics until my PhD. However, these are a few texts that are on my radar to consult:

* [*The Elements of Statistical Learning: Data Mining, Inference, and Prediction*](https://web.stanford.edu/~hastie/ElemStatLearn/) (2009, 2nd Ed.) by Trevor Hastie, Robert Tibshirani, and Jerome Friedman
* [*Statistical Inference*](https://www.amazon.com/Statistical-Inference-George-Casella/dp/0534243126) (2001, 2nd Ed.) by George Casella and Roger L. Berger
* [*All of Statistics: A Concise Course in Statistical Inference*](http://www.springer.com/us/book/9780387402727) (2004) by Larry Wasserman

My favorite textbook when it comes to machine learning has been Christopher Bishop’s [*Pattern Recognition and Machine Learning*](http://www.springer.com/us/book/9780387310732) (2006). It’s a book that rewards multiple readings, as there is a great overview of concepts suitable for undergraduates, but also subtler details baked in. PRML was an assigned textbook when I took Harvard’s CS 181, and while there are still many sections I haven’t read, I should really try to go through it cover-to-cover over my PhD. The end-of-chapter exercises are quite mathy, but this can be a useful approach for getting more familiar with machine learning algorithms.

As an example of the benefits of rereading, I was personally really helped by the presentation in chapters 9 and 10 on expectation maximization (EM) and variational inference. In chapter 9, Bishop effectively presents the EM algorithm four times, each with layering complexity! These are:

1. The K-means algorithm, a very special case of EM (Section 9.1)[^em-note]
2. EM for a mixture of Gaussians (Section 9.2)
3. EM as a general algorithm for latent variable models (Section 9.3)
4. EM as an optimization procedure for the evidence lower bound (Section 9.4)

[^em-note]: The connection between K-means and EM is explained in Bishop Section 9.3.2, and I plan to explore this further in a future post.

In my first time covering this material, I probably understood 1 and 2 well, and could see how to implement them to cluster data points. But that doesn’t explain why the EM algorithm works (4), how to derive EM updates in a general setting (3), and also the connections between EM and variational inference. A few years later, when Jacob Menick and I were self-studying variational inference at DeepMind, I again consulted these chapters. Along the way, I realized there was more complexity to EM than I had first ascribed, which builds into variational methods. Even now, there’s still lots in the equations for both of these algorithms that I find difficult, but Bishop’s presentation was helpful for seeing a spectrum of concrete cases to more abstract formulation.

As a second book, I’ve found useful Kevin P. Murphy’s [*Machine Learning: A Probabilistic Perspective*](https://mitpress.mit.edu/books/machine-learning-0) (2012). Again, this was chosen for a Harvard course with Ryan Adams, CS 281 (graduate machine learning). I would personally recommend Murphy, though not without reservations. Most fundamentally, there is a finer level of detail which made it hard for me to separate out high-level ideas from advanced extensions. Some sections are filled with pages of intimidating equations. Also, when I first was reading through the book, I lacked some of the understanding of the Bayesian paradigm that was used, like the significance of the posterior predictive and marginal likelihood, which made it a bit harder to follow as that paradigm was assumed throughout. It turns out that this background is split between Chapter 3 on “Generative models for discrete data” and Chapter 5 on “Bayesian statistics”, and I didn’t read those parts closely enough.^[One of the choices I’m most confused by with this book is why Chapters 3 (“Generative models for discrete data”) and 4 (“Gaussian models”) are placed before Chapters 5 (“Bayesian statistics”) and 6 (“Frequentist statistics”).]

However, there are many strengths to the book. In my opinion, the level of detail makes Murphy an ideal reference book for graduate students, though not really as a book for undergraduates.^[I therefore disagree with Kevin Murphy’s [assessment](https://www.cs.ubc.ca/~murphyk/MLbook/) that “MLaPP is more accessible to undergrads.”] I really enjoyed Chapter 1: “Introduction”, for doing a better job introducing the field of machine learning than I thought Bishop did. The book also covers deep learning in more detail (Chapter 28), and the sections on inference are very complete (Chapter 20 on “Exact inference for graphical models”, Chapters 21-22 on variational inference, and Chapters 23-24 on Monte Carlo methods).

The last book I’ve read significant parts of and enjoyed has been [*Information Theory, Inference, and Learning Algorithms*](http://www.inference.org.uk/itprnn/book.html) (2003) by the late David J.C. MacKay. It’s freely available online and is very fun to read. The exercises are approachable and it feels like MacKay put a lot of effort into making the book accessible for the self-studier. MacKay’s book doesn’t try to cover all of machine learning, but does a masterful job at the subjects it treats.
