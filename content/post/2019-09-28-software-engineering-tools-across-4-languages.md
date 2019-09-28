---
title: Software Engineering Tools Across 4 Languages
author: Brian Zhang
date: '2019-09-28'
slug: software-engineering-tools-across-4-languages
categories: []
tags: []
---

It's been two years since I started blogging, as well as two years since I started my PhD in the Oxford Statistics department. While it's been several months since my last post, I hope to get back into sharing some shorter posts and ideas going forward.

To get myself writing again, I thought I'd broaden the scope of my posts beyond [statistics and machine learning](2017/11/blogging-aims/). In particular, over the past two years, I've found myself getting more interested in abstract math as well as software engineering. Compared to machine learning, which can be a pretty heuristic science (think about the process of writing tests for machine learning code), both math and computer science tend to be built on modular components, each with a precise, testable description. Learning about these principles has been a nice break from research.

So here goes with a software engineering-related post!

## Software Engineering Tools

> Every craftsman starts his or her journey with a basic set of good-quality tools. A woodworker might need rules, gauges, a couple of saws, some good planes, fine chisels, drills and braces, mallets, and clamps. These tools will be lovingly chosen, will be built to last, will perform specific jobs with little overlap with other tools, and, perhaps most importantly, will feel right in the budding woodworker's hands....

> Tools amplify your talent. The better your tools, and the better you know how to use them, the more productive you can be. Start with a basic set of generally applicable tools.... If you come across a situation where you feel your current tools can't cut it, make a note to look for something different or more powerful that would have helped. Let need drive your acquisitions.^[*The Pragmatic Programmer: From Journeyman to Master* by Andrew Hunt and David Thomas, preface of Chapter 3: "Basic Tools"]

As the above quote illustrates, good tools improve the enjoyment and efficiency of one's craft. When writing software, there are many best practices that one can integrate into a project -- like documentation, unit tests, or speed benchmarks. The rationale of software engineering tools is to automate or simplify these processes so that they can be more easily adopted.

As I've taken time to learn about some of these tools, I've discovered that there are a few universal tools that transcend a particular language or environment, like Git for source code control and Travis CI for continuous integration. For most tools, however, you'll make different choices depending on the programming language you're using. For instance, you would want to use a language-specific unit testing library; many IDEs are designed around a particular language; and while doxygen supports a variety of languages, it's primarily used as a documentation generator for C++.

During my PhD, I've touched 4 popular programming languages, though I now focus exclusively on C++ and Python. Here's a table I compiled a month ago where I went through these 4 languages and tried to list the tools that were usually recommended for each.^[The table unfortunately does not yet scroll on mobile.]

| Type of tool | Rationale | C++ | Python | R | Java |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Packaging / build system | Release code and install packages | CMake | pip | CRAN / [R Packages](http://r-pkgs.had.co.nz/) | JAR files, [Ant / Maven / Gradle](https://www.baeldung.com/ant-maven-gradle) |
| IDE | Visual environment and tools | Visual Studio / XCode / QtCreator | PyCharm | RStudio | IntelliJ |
| Unit testing | Ensuring new changes don't break things | Catch2, googletest, Boost.Test | pytest, unittest, nose: [comparison](https://pythontesting.net/transcripts/2-pytest-vs-unittest-vs-nose/) | RStudio | JUnit, TestNG, Spock |
| Code coverage tool | Track what lines get hit by unit tests | gcov / lcov | coverage.py, [examples](https://github.com/codecov/example-python) | covr | [IntelliJ](https://www.jetbrains.com/help/idea/viewing-code-coverage-results.html) |
| Documentation generator | Explain code to end users and developers | doxygen | Sphinx | roxygen2 | javadoc |
| Debugger | Step through code statement by statement, get stack trace information | gdb | pdb | [RStudio debugger](https://support.rstudio.com/hc/en-us/articles/205612627-Debugging-with-RStudio), [Hadley's recs](https://adv-r.hadley.nz/debugging.html) | IntelliJ (use [this](https://medium.com/@rosolko/сurbing-slow-intellij-idea-debugging-1e2b9d5d7eff)) |
| Linter | Enforce uniform code style | clang-format, cpplint | Flake8, Pylint | lintr, styler |  |
| Advanced static analyzer^[Linting is technically a form of static analysis, hence the word "advanced" here.] | Fix bad / outdated code design | clang-tidy, cppcheck |  |  |  |
| Memory checker | Avoid memory leaks | `valgrind --tool=memcheck` | memory_profiler, tracemalloc | [pryr::mem_used, lineprof](http://adv-r.had.co.nz/memory.html) |  |
| Runtime profiler | Find most time-consuming functions | perf, Intel VTune Amplifier | cProfile, line_profiler | [profvis](https://adv-r.hadley.nz/perf-measure.html), [lineprof](http://adv-r.had.co.nz/Profiling.html) |  |
| Microbenchmarking tool | Consistent timing and comparison across history | [google/benchmark](https://github.com/google/benchmark), Hayai and [others](https://www.bfilipek.com/2016/01/micro-benchmarking-libraries-for-c.html) | timeit | [bench](https://adv-r.hadley.nz/perf-measure.html), [microbenchmark](http://adv-r.had.co.nz/Performance.html) |  |

I hope seeing these in matrix format communicates: 1) that each of these practices (first column) is so fundamental that there is great demand for a designated tool in each language, 2) explains why each practice is important (second column), and 3) helps experts in one language translate their understanding to find the best-suited tools in another language.

The above is not meant to be comprehensive, includes a few notes to myself, and is a bit lacking in the Java column which I have the least experience with. If you have comments or would like to add additional entries, feel free to reach out!
