<div class="topSpace"></div>

Date Created: 05/02/2024 18:27:21
References: #Ref/Mar02
Tags: #Type/Definition #In_Progress

Types: <i>Not Applicable</i>
Examples: <i>Not Applicable</i>
Constructions: [[Saturated Model]]
Generalizations: <i>Not Applicable</i>

Properties: [[Omitting Types Theorem]], [[Realizing Types]]
Sufficiencies: <i>Not Applicable</i>
Equivalences: <i>Not Applicable</i>
Justifications: <i>Not Applicable</i>

``` ad-Definition
title: Definition (Realizing and Omitting Types).

Let $\mc{M}$ be a $\sigma$-structure and fix $A\subseteq M$. A set $p(\vec{x})$ of $\sigma_A$-formulas in $n$-variables is an <b>$n$-type</b> in $\mc{M}$ over $A$ if $p(\vec{x})\cup\Th_A\mc{M}$ is satisfiable.
* An $n$-type $p(\vec{x})$ is said to be <b>complete</b> if either $\phi\in p$ or $\lnot\phi\in p$ for all $\sigma_A$-formulas $\phi(\vec{x})$. We write $S_n^\mc{M}(A)$ for the set of all complete $n$-types over $\mc{M}$.
* A tuple $\vec{a}\in M^n$ <b>realizes</b> $p(\vec{x})$ if $\mc{M}\models\phi(\vec{a})$ for all $\phi\in p$. Otherwise, if $p$ is not realized in $\mc{M}$, we say that $\mc{M}$ <b>omits</b> $p$.
* A $\sigma_A$-formula $\phi\in p$ is said to <b>isolate</b> $p(\vec{x})$ if $T\proves(\phi(\vec{x})\rightarrow\psi(\vec{x}))$ for all $\psi\in p$.

For any $\vec{a}\in M^n$, the <b>type</b> of $\vec{a}$ over $p$ is the (complete) type $\tp^\mc{M}(\vec{a}/A)\coloneqq\l\{\phi(\vec{x})\in\Form(\sigma_A)\st\mc{M}\models\phi(\vec{a})\r\}$. We write $\tp^\mc{M}(\vec{a})\coloneqq\tp^\mc{M}(\vec{a}/\em)$.

```

<b>Remark.</b> We may also define types without reference to a $\sigma$-structure, but rather to a complete $\sigma$-theory $T$, as a collection $p(\vec{x})$ of $\sigma$-formulas in the free variables $\vec{x}$ that is <i>$T$-consistent</i> in the sense that $T\proves\ex\vec{x}\bigwedge p_0(\vec{x})$ for all finite subsets $p_0\subseteq p$. Note that the theory $T\coloneqq\Th_A\mc{M}$ is complete, and the set $S_n(T)$ of all complete $n$-types in $T$ coincides with $S_n^\mc{M}(A)$.<span style="float:right;">$\blacklozenge$</span>