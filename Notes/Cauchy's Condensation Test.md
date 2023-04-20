---
mathLink: auto
---

<div class="topSpace"></div>

Date Created: 02/04/2023 14:18:12
Tags: #Proposition #Topics/Analysis

Proved by: [[Monotone Convergence Theorem]]
References: _Not Applicable_
Justifications: _Not Applicable_

Specializations: _Not Applicable_
Generalizations: _Not Applicable_

``` ad-Proposition
title: Proposition (Cauchy$\textrm{'}$s Condensation Test).

_Let $\tpl{a_k}$ be a non-increasing sequence in $\R$. Then_ $\sum_{k=1}^{\infty}a_k$ _converges iff_ $\sum_{k=0}^{\infty}2^ka_{2^k}$ _converges, in which case_ $\sum_{k=0}^{\infty}2^ka_{2^k}\leq2\sum_{k=1}^{\infty}a_k$_._

```

_Proof_. Let $\tpl{s_n}$ and $\tpl{t_m}$ be the sequence of partial sums of $\tpl{a_k}$ and $\tpl{2^ka_{2^k}}$, respectively.
* Choosing $m,n\in\N$ so that $n>2^m$, we may regroup the terms of $s_n$ as
$$\begin{equation}
    s_n\geq a_1+a_2+\l(a_3+a_4\r)+\cdots+\l(a_{2^{m-1}+1}+\cdots a_{2^m}\r)\geq\frac{1}{2}a_1+a_2+2a_4+\cdots+2^{m-1}a_{2m}=\frac{1}{2}t_m.
\end{equation}$$
Then $t_m\leq 2s_n$, so the convergence of $\sum_{k=1}^{\infty}a_k$ implies the convergence of $\sum_{k=0}^{\infty}2^ka_{2^k}$.

* Conversely, choose $m,n\in\N$ so that $n<2^m$ and regroup the terms of $s_n$ as
$$\begin{equation}
    s_n\leq a_1+\l(a_2+a_3\r)+\cdots\l(a_{2^m}+\cdots+a_{2^{m+1}-1}\r)\leq a_1+2a_2+\cdots+2^ma_{2^m}=t_m.
\end{equation}$$
Then $s_n\leq t_m$, so the convergence of $\sum_{k=0}^{\infty}2^ka_{2^k}$ implies the convergence of $\sum_{k=1}^{\infty}a_k$.<span style="float:right;">$\blacksquare$</span>