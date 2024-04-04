---
mathLink-blocks:
    eigenvalue-iff-root-of-characteristic: Operator $\alpha$ has eigenvalue $\lambda$ $\Leftrightarrow$ $\chi_\alpha\!\l(\lambda\r)=0$
---

<div class="topSpace"></div>

Date Created: 20/06/2022 15:01:38
References: #Ref/Alu09
Tags: #Type/Definition #Topic/Rings_and_Modules/Module_Theory

Types: <i>Not Applicable</i>
Examples: [[Eigenvalues of linear operators on inner product spaces]]
Constructions: [[Diagonalization Test]]
Generalizations: <i>Not Applicable</i>

Properties: <i>Not Applicable</i>
Sufficiencies: <i>Not Applicable</i>
Equivalences: <i>Not Applicable</i>
Justifications: [[Vanishing of determinant]], [[Characteristic Polynomial#^degree-of-characteristic-polynomial]], [[Polynomial has at most degree-many roots]], [[Polynomial over algebraically closed field splits]]

``` ad-Definition
title: Definition.

Let $\alpha\in\End\l(M\r)$ be a linear operator on a fin-gen. free $R$-module $M$ over an integral domain $R$. A scalar $\lambda\in R$ is called an <b>eigenvalue of $\alpha$</b> if $\alpha\l(m\r)=\lambda m$ for some non-zero $m\in M$.
* If $\lambda\in R$ is an eigenvalue of $\alpha$, the <b>eigenspace of $\lambda$</b> is the submodule $E_\lambda\coloneqq\ker\l(\lambda\id-\alpha\r)=\l\{m\in M\st\alpha\l(m\r)=\lambda m\r\}$ consisting of <b>$\lambda$-eigenvectors of $\alpha$</b>.
* The collection of all eigenvalues of $\alpha$ is called the <b>spectrum of $\alpha$</b>, denoted $\sigma\l(\alpha\r)$.

```

<b>Remark.</b> The spectrum $\sigma\l(\alpha\r)$ is the set of roots of the characteristic polynomial $\chi_\alpha$, so $\sigma\l(\alpha\r)$ depends very explicitly on how $R$ splits.
^eigenvalue-iff-root-of-characteristic
* Indeed, $\lambda\in\sigma\l(\alpha\r)$ iff $\alpha\l(m\r)=\lambda m$ for some non-zero $m\in M$, iff $\lambda\id-\alpha$ is not injective. This occurs iff $\chi_\alpha\!\l(\lambda\r)=\det\l(\lambda\id-\alpha\r)=0$.

This allows us to define the <i>algebraic multiplicity</i> of an eigenvalue $\lambda\in\sigma\l(\alpha\r)$ as its multiplicity as a root of $\chi_\alpha$. Since $\deg\chi_\alpha=n$, we see that $\l|\sigma\l(\alpha\r)\r|\leq n$, and equality holds (as a multiset) if $R$ is an algebraically closed field. A different notion of multiplicity is the <i>geometric multiplicity</i> of an eigenvalue $\lambda\in\sigma\l(\alpha\r)$, which is defined as $\rk E_\lambda$. The geometric multiplicity of every $\lambda\in\sigma\l(\alpha\r)$ is no more than its algebraic multiplicity, and considerations of the converse gives us the <i>diagonalization test</i>.<span style="float:right;">$\blacklozenge$</span>

---

<b>Remark.</b> The spectrum of an operator is invariant under similarity. Indeed, if $\beta=\pi\alpha\pi^{-1}$ for some $\pi\in\Aut\l(M\r)$ and $\alpha\l(m\r)=\lambda m$ for some non-zero $m\in M$, then
$$\begin{equation}
    \beta\l(\pi\l(m\r)\r)=\pi\alpha\pi^{-1}\l(\pi\l(m\r)\r)=\pi\l(\alpha\l(m\r)\r)=\pi\l(\lambda m\r)=\lambda\pi\l(m\r).
\end{equation}$$
In particular, this shows that the algebraic multiplicity of $\lambda$ is invariant under similarity.<span style="float:right;">$\blacklozenge$</span>

---

<b>Remark.</b> If $\lambda_1,\dots,\lambda_n\in\sigma\l(\alpha\r)$ are <i>pairwise distinct</i> eigenvalues of $\alpha$, then any collection $\l\{m_i\r\}_{i=1}^n$ of $\lambda_i$-eigenvectors are linearly independent. Indeed, if $\l\{m_i\r\}$ is linearly dependent, then, after reindexing, there is a shortest relation $\sum_{i=1}^{k}r_im_i=0$ for some non-zero $r_i\in R$ and $1\leq k\leq n$. Then
$$\begin{equation}
    0=\sum_{i=1}^{k}\l(\lambda_k\id-\alpha\r)\l(r_im_i\r)=\sum_{i=1}^{k}\lambda_kr_im_i-r_i\alpha\l(m_i\r)=\sum_{i=1}^{k}\lambda_kr_im_i-\lambda_ir_im_i=\sum_{i=1}^{k-1}r_i\l(\lambda_k-\lambda_i\r)m_i,
\end{equation}$$
which is impossible since $r_i\neq0$ and $\lambda_i\neq\lambda_k$ for every $1\leq i\leq k-1$.<span style="float:right;">$\blacklozenge$</span>
