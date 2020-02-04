---
title: On NumPy Multithreading
author: Brian Zhang
date: '2020-02-04'
slug: on-numpy-multithreading
categories: []
tags: []
---

Two notes. First, [`numpy` supports multithreading](https://roman-kh.github.io/numpy-multicore/), and this can give you a speed boost in multicore environments! On Linux, I used `top` to verify that my `numpy` was indeed using multithreading, which it was. Second, multithreading can hurt performance when you're running multiple Python / `numpy` processes at once. I was running into this issue, and got significant boost by [limiting the number of `numpy` threads per process](https://stackoverflow.com/questions/17053671/python-how-do-you-stop-numpy-from-multithreading), in my case using `import mkl; mkl.set_num_threads(1)`. The general performance rule of thumb is to aim for the total number of threads running to match the number of cores.
