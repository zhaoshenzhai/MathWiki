---
mathLink: Extension of $f:A\into_e\mc{N}$ to $f:\mc{M}\elemembed\mc{N}'$ for some $\mc{N}'\elemextend\mc{N}$
---

<div class="topSpace"></div>

Date Created: 11/02/2024 18:05:46
References: #Ref/Mar02
Tags: #Type/Proposition #In_Progress

Proved by: [[Compactness Theorem]], [[Elementarity#^embeddings-via-diagrams]]
References: <i>Not Applicable</i>
Justifications: <i>Not Applicable</i>

Specializations: <i>Not Applicable</i>
Generalizations: <i>Not Applicable</i>

``` ad-Proposition
title: Proposition (Extension of partial elementary embeddings).

Let $\mc{M}$ and $\mc{N}$ be $\sigma$-structures and fix $A\subseteq M$. Then any partial elementary map $f:A\into_e\mc{N}$, i.e. a map such that $\mc{M}\models\phi(\vec{a})$ iff $\mc{N}\models\phi(f(\vec{a}))$ for all $\sigma$-formulas $\phi$ and all $\vec{a}\in A$, extends to an elementary embedding $f':\mc{M}\to\mc{N}'$ for some elementary extension $\mc{N}'\elemextend\mc{N}$.

```

<i>Proof.</i> We first prove that if $b\in M$, then there is a partial elementary map $f_1:A\cup\l\{b\r\}\into_e\mc{N}_1$ extending $f$ for some elementary extension $\mc{N}_1\elemextend\mc{N}$.
* Indeed, consider the $\sigma_N$-theory $T\coloneqq\Diag_\textrm{el}\mc{N}\cup\l\{\phi(x,f(a_1),\dots,f(a_n)))\st\mc{M}\models\phi(b,a_1,\dots,a_n),a_i\in A\r\}$, which we claim is satisfiable. To this end, let $\Delta\subseteq T$ be finite, which, by taking conjunctions, we may assume that $\Delta\subseteq\Diag_\textrm{el}\mc{N}\cup\l\{\phi(x,f(a_1),\dots,f(a_n))\r\}$. Since $\mc{M}\models\ex x\phi(x,a_1,\dots,a_n)$ and $f$ is a partial elementary map, we see that $\mc{N}\models\ex x\phi(x,f(a_1),\dots,f(a_n))$, so interpreting the $\sigma_M$-constant symbol $f(b)$ as any witness thereof gives us the desired $\sigma_N$-model of $T$.

Now, let $\kappa\coloneqq\l|M\r|$ and let $\l\{b_\alpha\r\}_{\alpha<\kappa}$ be an enumeration of $M$. For each $\alpha$, let $A_\alpha\coloneqq A\cup\l\{b_\beta\st\beta<\alpha\r\}$. We construct an elementary chain $\tpl{\mc{N}_\alpha}_{\alpha<\kappa}$ and an increasing sequence of partial elementary maps $f_\alpha:A_\alpha\to N_\alpha$, with $\mc{N}_0\coloneqq\mc{N}$, $f_0\coloneqq f$, and $A_0\coloneqq A$. At a successor step $\beta\coloneqq\alpha+1$, that $f_\alpha:A_\alpha\into_e\mc{N}_\alpha$ gives us an elementary map $f_\beta:A_\beta\into_e\mc{N}_\beta$ extending $f_\alpha$ for some elementary extension $\mc{N}_\beta\elemextend\mc{N}_\alpha$. If $\beta$ is a limit ordinal, let $\mc{N}_\beta\coloneqq\bigcup_{\alpha<\beta}\mc{N}_\alpha$ and $f_\beta\coloneqq\bigcup_{\alpha<\beta}f_\alpha$ and note that each $\mc{N}_\alpha\elemembed\mc{N}_\beta$ and that $f_\beta$ is a partial elementary map. Finally, we obtain the desired by letting $\mc{N}'\coloneqq\bigcup_{\alpha<\kappa}\mc{N}_\alpha$ and $f'\coloneqq\bigcup_{\alpha<\kappa}f_\alpha$.<span style="float:right;">$\blacksquare$</span>