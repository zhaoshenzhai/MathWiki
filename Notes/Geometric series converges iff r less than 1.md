---
mathLink: Geometric series converges $\Leftrightarrow$ $\l|r\r|<1$
---

<div class="topSpace"></div>

Date Created: 01/09/2022 17:00:29
Tags: #Proposition #Topics/Analysis

Proved by: [[Limit of geometric]]
References: _Not Applicable_
Justifications: _Not Applicable_

Specializations: _Not Applicable_
Generalizations: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $K$ denote either $\R$ or $\C$ and consider a geometric sequence $a_n\coloneqq a_0r^n$ for some fixed $a_0,r\in K\comp\l\{0\r\}$. Then the geometric series_ $\sum_{n=0}^\infty a_0r^n$ _converges iff $\l|r\r|<1$, in which case_
$$\begin{equation}
    \sum_{n=0}^\infty a_0r^n=\frac{a_0}{1-r}.
\end{equation}$$

```

_Proof_. Let $s_n\coloneqq\sum_{k=0}^na_0r^k$ be the sequence of partial sums of $\tpl{a_n}$. Note that $\l(1-r\r)s_n=a_0\l(1-r^{n+1}\r)$, so, if $r\neq 1$, we have
$$\begin{equation}
    s_n=\frac{a_0\l(1-r^{n+1}\r)}{1-r}.
\end{equation}$$
Observe then that
$$\begin{equation}
    \l|s_n-\frac{a_0}{1-r}\r|\leq\l|\frac{a_0r^{n+1}}{1-r}\r|,
\end{equation}$$
which converges (to $0$) iff $\l|r\r|<1$. If $r=1$, then $a_n=a_0$; since $a_0\neq0$, we see that the series diverges.<span style="float:right;">$\blacksquare$</span>