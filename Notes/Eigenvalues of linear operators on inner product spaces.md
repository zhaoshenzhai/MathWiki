<div class="topSpace"></div>

Date Created: 05/04/2023 11:34:56
References: #Ref/Axl24
Tags: #Type/Proposition #Topic/Functional_Analysis

Proved by: <i>Not Applicable</i>
References: [[Eigenvalue#^eigenvalue-iff-root-of-characteristic]]
Justifications: <i>Not Applicable</i>

Specializations: <i>Not Applicable</i>
Generalizations: <i>Not Applicable</i>

``` ad-Proposition
title: Proposition.

Let $T:V\to V$ be a linear operator on an inner product space $V$ and let $\lambda\in K$ be an eigenvalue of $T$.
* If $T$ is self-adjoint, then $\lambda\in\R$.
* If $T$ is positive, then $\lambda\geq0$.
* If $T$ is positive-definite, then $\lambda>0$.
* If $T$ is unitary, then $\l|\lambda\r|=1$.

```

<b>Remark.</b> In particular, this shows that the characteristic polynomial $\chi$ of a self-adjoint operator $T$ splits over $\R$ (since $\chi$ splits over $\C$ and all roots are real).<span style="float:right;">$\blacklozenge$</span>

---

<i>Proof.</i> Take a non-zero vector $v\in V$ such that $Tv=\lambda v$, so $\lambda\inprod{v}{v}=\inprod{\lambda v}{v}=\inprod{Tv}{v}$.
* If $T$ is self-adjoint, then $\lambda\inprod{v}{v}=\inprod{Tv}{v}=\inprod{v}{T^\adj v}=\inprod{v}{Tv}=\inprod{v}{\lambda v}=\bar{\lambda}\inprod{v}{v}$, so $\lambda=\bar{\lambda}$ and hence $\lambda\in\R$.
* If $T$ is positive, then $T=S^\adj S$ for some $S\in\End\l(V\r)$. Then $\lambda\|v\|^2=\lambda\inprod{v}{v}=\inprod{Tv}{v}=\inprod{S^\adj Sv}{v}=\inprod{Sv}{Sv}=\|Sv\|^2$ and so $\lambda\geq0$.
* If $T$ is positive-definite, then $\lambda=\|Sv\|^2/\|v\|^2$ as above. But if $S$ is invertible, then $Sv\neq0$ and so $\|Sv\|>0$. Thus $\lambda>0$.
* If $T$ is unitary, then $\l|\lambda\r|\|v\|=\|\lambda v\|=\|Tv\|=\|v\|$, so $\l|\lambda\r|=1$.<span style="float:right;">$\blacksquare$</span>
