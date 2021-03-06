<br />
<br />

Date Created: 27/01/2022 13:45:27
Tags: #Proposition #Closed 

Proved by: [Invertible $\Leftrightarrow$ bijective](Invertible%20iff%20bijective.md), [[Composition of relations is associative]], [[Identity function is the identity of function composition]]
Justifications: _Not Applicable_

Generalizations: [[Composition of isomorphims are isomorphisms]]
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $f:X\to Y$ and $g:Y\to Z$ be bijections. Then the composite function $g\circ f:X\to Z$ is also a bijection._

```

_Proof_. It suffices to show that $g\circ f$ has an inverse. Indeed, since $f$ and $g$ are bijections, the inverse (relations) $f^{-1}$ and $g^{-1}$ are functions and thus $f^{-1}\circ g^{-1}$ is also a function; we claim that $\l(g\circ f\r)^{-1}=f^{-1}\circ g^{-1}$. To see this, compute
$$\begin{equation}
    \begin{alignedat}{2}
        \l(g\circ f\r)\circ\l(f^{-1}\circ g^{-1}\r)&=g\circ\l(f\circ f^{-1}\r)\circ g^{-1}\ \ \ \ \ \ \ \ &&\textrm{Composition is associative}\\
        &=g\circ\id_Y\circ g^{-1}&&\textrm{Definition of the inverse}\\
        &=g\circ g^{-1}&&\textrm{Identity function is the identity of function composition}\\
        &=\id_Z&&\textrm{Definition of the inverse}
    \end{alignedat}
\end{equation}$$
and
$$\begin{equation}
    \begin{alignedat}{2}
        \l(f^{-1}\circ g^{-1}\r)\circ\l(g\circ f\r)&=f^{-1}\circ\l(g^{-1}\circ g\r)\circ f\ \ \ \ \ \ \ \ &&\textrm{Composition is associative}\\
        &=f^{-1}\circ\id_Y\circ f&&\textrm{Definition of the inverse}\\
        &=f^{-1}\circ f&&\textrm{Identity function is the identity of function composition}\\
        &=\id_X&&\textrm{Definition of the inverse}
    \end{alignedat}
\end{equation}$$
from which it follows that $f^{-1}\circ g^{-1}$ is both a left and a right-inverse of $g\circ f$.<span style="float:right;">$\blacksquare$</span>
