<br />
<br />

Date Created: 27/01/2022 17:19:03
Tags: #Proposition #Later/Set_Theory

Proved by: [[Identity function is a bijection]], [[Inverse of bijection is a bijection]], [[Composition of bijections is a bijection]]
Justifications: _Not Applicable_

Generalizations: [[Isomorphism of objects is an equivalence relation]]
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_The relation $\iso$ on any collection of sets is an equivalence relation._

```

_Proof_. Let $X,Y,Z$ be sets.
* (Reflexive): Observe that the identity function $\id_X:X\to X$ is a bijection, so $X\iso X$.
* (Symmetric): If $X\iso Y$, then there exists a bijection $f:X\to Y$. It follows that $f^{-1}:Y\to X$ is also a bijection and hence $Y\iso X$.
* (Transitive): If $X\iso Y$ and $Y\iso Z$, then there exist bijections $f:X\to Y$ and $g:Y\to Z$. It follows that the composition $g\circ f:X\to Z$ is also a bijection and hence $X\iso Z$.<span style="float:right;">$\blacksquare$</span>
