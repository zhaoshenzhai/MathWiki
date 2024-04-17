---
mathLink: Löwenheim-Skolem Theorem
mathLink-blocks:
    Skolem-paradox: Skolem Paradox
---

<div class="topSpace"></div>

Date Created: 21/12/2023 16:03:46
References: #Ref/Anu23
Tags: #Type/Theorem #Topic/Logic/Model_Theory

Proved by: [[Tarski-Vaught Test]], [[Compactness Theorem]], [[Elementarity#^embeddings-via-diagrams]], [[Cantor-Schroder-Bernstein Theorem]]
References: <i>Not Applicable</i>
Justifications: <i>Not Applicable</i>

Specializations: <i>Not Applicable</i>
Generalizations: <i>Not Applicable</i>

``` ad-Theorem
title: Theorem (Löwenheim-Skolem).

If $\mc{M}$ be an infinite $\mc{L}$-structure, then $\mc{M}$ admits an elementary substructure/extension of any cardinality $\kappa\geq\l|\mc{L}\r|+\aleph_0$. More precisely:
* (Downward Löwenheim-Skolem). For any subset $A\subseteq M$, there is an elementary substructure $\mc{M}_0\elemembed\mc{M}$ with $M_0\supseteq A$ such that $\l|M_0\r|\leq\l|A\r|+\l|\mc{L}\r|+\aleph_0$.
* (Upward Löwenheim-Skolem). For any cardinal $\kappa\geq\l|\mc{M}\r|+\l|\mc{L}\r|+\aleph_0$, there is an elementary extension $\mc{M}'\elemextend\mc{M}$ of cardinality $\kappa$.

```

<b>Remark.</b> With $S\coloneqq\em$, the Downward Löwenheim-Skolem theorem gives us that any satisfiable $\mc{L}$-theory has a model of cardinality at-most $\max\l\{\l|\mc{L}\r|,\aleph_0\r\}$. This has the (at first) striking consequence, called <i>Skolem paradox</i>, that if $\ZFC$ is satisfiable, then it has a countable model $\mc{M}$. But $\mc{M}$ has its own version of reals $\R^\mc{M}$, which by Cantor’s theorem is uncountable! To resolve this ‘paradox’ one needs to observe that countability refers to the existence of a bijection $\R^\mc{M}\to\N$, which does exist for us, but this bijection, viewed as a subset of $\R^\mc{M}\times\N$, is not an element of $M$. Within $\mc{M}$, one cannot ‘see’ this bijection, so $\R^\mc{M}$ is uncountable in $\mc{M}$.<span style="float:right;">$\blacklozenge$</span> ^Skolem-paradox

---

<i>Proof.</i> For the Downward Löwenheim-Skolem theorem, we use the Tarski-Vaught Test to observe that for $\mc{M}_0\elemembed\mc{M}$ to be elementary, the underlying set $M_0$ needs to witness the existence of $\mc{M}\models\ex y\phi(\vec{a},y)$ for every $\mc{L}$-formula $\phi(\vec{x},y)$ and every $\vec{a}\in A^{|\vec{x}|}$.

To ‘throw in’ such witnesses, we consider a <i>Skolem function</i> $f_{\phi(\vec{x},y)}$ for $\phi(\vec{x},y)$, which is any partial function $f_{\phi(\vec{x},y)}:A^{|\vec{x}|}\parto A$ such that for every $\vec{a}\in A^{|\vec{x}|}$, if $\mc{M}\models\ex y\phi(\vec{a},y)$, then $f_{\phi(\vec{x},y)}(\vec{a})$ witnesses this existence, in the sense that $\vec{a}\in\,\dom f_{\phi(\vec{x},y)}$ and $\mc{M}\models\phi(\vec{a},f_{\phi(\vec{x},y)}(\vec{a}))$. Using the Axiom of Choice, let $f_{\phi(\vec{x},y)}$ be a Skolem function for the $\mc{L}$-formula $\phi(\vec{x},y)$. We build an increasing sequence $\tpl{S_n}$ of subsets of $A$ by setting $S_0\coloneqq S$ and $S_{n+1}\coloneqq S_n\cup\bigcup_{\phi(\vec{x},y)}f_{\phi(\vec{x},y)}\big(S_n^{|\vec{x}|}\big)$ assuming $S_n$ is defined. Set $M_0\coloneqq\bigcup_nS_n$, which we claim supports an elementary $\mc{L}$-substructure of $\mc{M}$.
* Indeed, let $\phi(\vec{x},y)$ be an $\mc{L}$-formula and take $\vec{a}\in M_0^{|\vec{x}|}$. Since there are $n_j\in\N$ such that each $a_j\in S_{n_j}$, we see that $\vec{a}\in S_n$ where $n\coloneqq\max_jn_j$. By construction, the assumption $\mc{M}\models\ex y\phi(\vec{a},y)$ gives us a witness $f_{\phi(\vec{x},y)}(\vec{a})\in S_{n+1}\subseteq M_0$, so $\mc{M}_0\elemembed\mc{M}$ by the Tarski-Vaught Test.

For the Upward Löwenheim-Skolem theorem, let $\mc{L}'\coloneqq\mc{L}_A\sqcup\l\{c_\alpha\r\}_{\alpha<\kappa}$ and consider the $\mc{L}'$-theory $T'\coloneqq\Diag_\textrm{el}\mc{M}\cup\l\{c_\alpha\neq c_\beta\st\alpha\neq\beta,\alpha<\beta<\kappa\r\}$. Since $\mc{M}$ is infinite, $T'$ is finitely-satisfiable by interpreting the finitely-many constants $c_{\alpha_1},\dots,c_{\alpha_n}$ in some finite $\Delta\subseteq T'$ as distinct elements, so Compactness furnishes obtain an elementary extension $\mc{M}'\elemextend\mc{M}$ of cardinality at-least $\kappa$. Using the Downwards Löwenheim-Skolem Theorem, we may assume that $\l|\mc{M}'\r|\leq\kappa$, so $\l|\mc{M}'\r|=\kappa$ as desired.<span style="float:right;">$\blacksquare$</span>
