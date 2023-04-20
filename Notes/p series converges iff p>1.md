---
mathLink: $p$-series converges $\Leftrightarrow$ $p>1$
---

<div class="topSpace"></div>

Date Created: 16/03/2023 10:15:25
Tags: #Proposition #Topics/Analysis

Proved by: [[Cauchy's Condensation Test]], [[Geometric series converges iff r less than 1]]
References: _Not Applicable_
Justifications: _Not Applicable_

Specializations: _Not Applicable_
Generalizations: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Fix $p\in\R$. Then the infinite series_ $\sum_{k=1}^{\infty}1/k^p$ _converges iff $p>1$._

```

**Remark.** In particular, with $p=1$, the **harmonic series** $\sum_{k=1}^{\infty}1/k$ diverges.<span style="float:right;">$\blacklozenge$</span>

---

_Proof_. Clearly the series $\sum_{k=1}^{\infty}1/k^p$ diverges if $p\leq0$. Otherwise, if $p>0$, the sequence $\tpl{1/k^p}$ is non-increasing. By Cauchy Condensation, we consider the series
$$\begin{equation}
    \sum_{k=0}^{\infty}2^k\cdot\frac{1}{\l(2^k\r)^p}=\sum_{k=0}^{\infty}\frac{2^k}{2^{kp}}=\sum_{k=0}^{\infty}2^{\l(1-p\r)k}.
\end{equation}$$
This is a geometric series with common ratio $2^{\l(1-p\r)}$, so it converges iff $p>1$.<span style="float:right;">$\blacksquare$</span>