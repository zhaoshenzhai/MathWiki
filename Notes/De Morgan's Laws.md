<br />
<br />

Date Created: 18/01/2022 16:48:35
Tags: #Proposition  #Later/Set_Theory

Proved by: _Not Applicable_
Justifications: _Not Applicable_

Generalizations: _Not Applicable_
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $v$ and $U$ be sets with $U\neq\em$. Then_
$$\begin{equation}
    v\setcomp\bigcup U=\bigcap\l\{v\setcomp u\mid u\in U\r\}\ \ \ \ \textrm{\it{and}}\ \ \ \ v\setcomp\bigcap U=\bigcup\l\{v\setcomp u\mid u\in U\r\}.
\end{equation}$$

```

_Proof_. Take $x\in v\setcomp\bigcup U$. The first result follows from the following chain of equivalences:
$$\begin{equation}
    \begin{alignedat}{2}
        x\in v\setcomp\bigcup U&\Leftrightarrow x\in v\land x\not\in\bigcup U&&\textrm{Definition of relative complement}\\
        &\Leftrightarrow x\in v\land\lnot\l(x\in\bigcup U\r)&&\textrm{Definition of }\not\in\\
        &\Leftrightarrow x\in v\land\lnot\l[\l(\ex u\in U\r)x\in u\r]&&\textrm{Definition of union}\\
        &\Leftrightarrow x\in v\land\l(\fa u\in U\r)x\not\in u&&\textrm{Negation of quantifier}\\
        &\Leftrightarrow\l(\fa u\in U\r)\l(x\in v\land x\not\in u\r)&&u\textrm{ is not free in }x\in v\\
        &\Leftrightarrow\l(\fa u\in U\r)x\in v\setcomp u&&\textrm{Definition of relative complement}\\
        &\Leftrightarrow\l(\fa y\in\l\{v\setcomp u\mid u\in U\r\}\r)x\in y\ \ \ \ \ \ \ \ &&\textrm{Substitution}\\
        &\Leftrightarrow x\in\bigcap\l\{v\setcomp u\mid u\in U\r\}.&&U\neq\em\textrm{; definition of intersection}
    \end{alignedat}
\end{equation}$$
The last equivalence requires that $U\neq\em$, which ensures that $\l\{v\setminus u\mid u\in U\r\}=\l\{x\mid\l(\ex u\in U\r)x=v\setcomp u\r\}$ is non-empty for the intersection to be defined.

Now take $x\in v\setcomp\bigcap U$. Note that $U\neq\em$ ensures that this expression is a set. The second result follows from the following chain of equivalences:

$\begin{alignat}{2}
    x\in v\setcomp\bigcap U&\Leftrightarrow x\in v\land x\not\in\bigcap U&&\textrm{Definition of relative complement}\\
    &\Leftrightarrow x\in v\land\lnot\l(x\in\bigcap U\r)&&\textrm{Definition of }\not\in\\
    &\Leftrightarrow x\in v\land\lnot\l[\l(\fa u\in U\r)x\in u\r]&&\textrm{Definition of intersection}\\
    &\Leftrightarrow x\in v\land\l(\ex u\in U\r)x\not\in u&&\textrm{Negation of quantifier}\\
    &\Leftrightarrow\l(\ex u\in U\r)\l(x\in v\land x\not\in u\r)&&u\textrm{ is not free in }x\in v\\
    &\Leftrightarrow\l(\ex u\in U\r)x\in v\setcomp u&&\textrm{Definition of relative complement}\\
    &\Leftrightarrow\l(\ex y\in\l\{v\setcomp u\mid u\in U\r\}\r)x\in y\ \ \ \ \ \ \ \ &&\textrm{Substitution}\\
    &\Leftrightarrow x\in\bigcup\l\{v\setcomp u\mid u\in U\r\}.&&\textrm{Definition of union}\qedin
\end{alignat}$
