<div class="topSpace"></div>

Date Created: 17/03/2023 01:09:59
Tags: #Proposition #Later/Linear_Algebra/Module

Proved by: [[Bezout's Identity]]
References: _Not Applicable_
Justifications: _Not Applicable_

Specializations: _Not Applicable_
Generalizations: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $T:V\to V$ be a linear operator on a finite-dimensional $K$-vector space $V$ and let $f\in K\l[x\r]$ be such that $f\l(T\r)=0$. Decomposing $f=f_1^{n_1}\cdots f_r^{n_r}$ into irreducibles, we have that_ $V=\bigoplus_{i=0}^{r}\hat{K}_{f_i}^T$_._

```

_Proof_. Let $g\coloneqq f_1^{n_1}$ and $h\coloneqq f_2^{n_2}\cdots f_r^{n_r}$, so $g\perp h$ and $f=gh$. By Bézout$\textrm{'}$s Identity, there exist $a,b\in K\l[x\r]$ such that $ag+bh=1$. Applied to $T$ and $v$, we get
$$\begin{equation}
    v=\underbrace{a\l(T\r)g\l(T\r)v}_{\mathclap{\coloneqq v_1}}+\underbrace{b\l(T\r)h\l(T\r)v}_{\mathclap{\coloneqq v_2}}.
\end{equation}$$
Then $h\l(T\r)v_1=a\l(T\r)f\l(T\r)v=0$ and $g\l(T\r)v_2=b\l(T\r)f\l(T\r)v=0$, so $v_1\in K_h^T$ and $v_2\in K_g^T$. This shows that $V=K_g^T+K_h^T$. But any $v\in K_g^T\cap K_h^T$ is forced by the equation above to vanish, so $V=K_g^T\oplus K_h^T$. The result follows by induction.<span style="float:right;">$\blacksquare$</span>