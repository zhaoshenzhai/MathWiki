<br />
<br />

Date Created: 19/01/2022 17:07:30
Tags: #Proposition #Closed

Proved by: _Not Applicable_
Justifications: _Not Applicable_

Generalizations: _Not Applicable_
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $A$ and $B$ be sets. If $A\subseteq B$, then $C\setcomp B\subseteq C\setcomp A$ for any set $C$._

```

_Proof_. Take $x\in C\setcomp B$. The result follows from the following chain of implications:

$\begin{alignat}{2}
    x\in C\setcomp B&\Leftrightarrow x\in C\land x\not\in B\ \ \ \ \ \ \ \ &&\textrm{Definition of relative complement}\\
    &\Rightarrow x\in C\land x\not\in A&&\textrm{Contraposition of }A\subseteq B\\
    &\Leftrightarrow x\in C\setcomp A.&&\textrm{Definition of relative complement}\qedin
\end{alignat}$
