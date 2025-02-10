# Chapter 3 Domain restrictions
Axiom of Domain free domain, might be unnatural. Although it makes sense if we want to define our scf completely neutrally, we no regard of the domain. Pattanaik (1971) and Marglin (1995).

Marglin speaks of culture homogenizing preferences


## Definitions
Reflexive:  for all $x$ $x \geq x$
Complete:  for all $x,y; x\neq y$ $x \geq y$ or $y \geq x$
Transitive: for all $x, y ,z$ $x \geq z \wedge z \geq y \implies x \geq y$  


Let $\mathcal{A}$ denote the set of preferences relations on $X$.
Let $\mathcal{B}$ denote the set of preferences relations which are reflexive and complete on $X$.
Let $\mathcal{C}$ denote the set of preferences relations which are reflexive, complete and acyclical on $X$.
Let $\mathcal{D}$ denote the set of preferences relations which are reflexive, complete, acyclical and quasi-transative on $X$.
Let $\mathcal{E}$ denote the set of preferences orderings on $X$.

(Hint $\mathcal{E} = \mathcal{L}(X)$, $\mathcal{A}$ are the weak linear orders)

A concerned voter is a voter that is no indifferent to any pair of alterantives.

An exclusion condition restricting $\mathcal{E}$ to $\mathcal{E}'$ is sufficient for a SCF if this ensure that all possible $(R_{1} ,\dots R_{n}) \in \mathcal{E}'^{n}$, and is an ordering over any set $N$, in other words it is sufficient to get the domain restriction using the exclusion criterion. 

An exclusion condition is necessary, if for all $N$ and profiles, $\mathcal{E}'\subset \mathcal{E}$ satisfies this condition $C$. In other words, if it violates $C$, there must be some set and profile for which the ordering does not hold.  

## Domain restrictions:
Two classes: 
1. *Arbitrary finite sets of alternatives and a finite voters*
2.  *Set of alternatives has topological structure*

We can further subdivide the class 1 into restrictions such that some profile are prohibited completely, and restrictions on the distribution of the profiles.


### Exclusion conditions
*Extremal restriction* (ER): If there is an individual that strictly prefers $a > b >c$, then for all individual such that $c >a$, it must be that $c > b > a$

Equivalent to the following:
- Single caved: Essentially an inverse of single-peaked. It is obtained reversing single-peakedness. 
- Antagonistic: For any voters, their liner order is transitive, and there are two voters $j,k$ and an ordered triplet $(a,b,c)$ such that $j: a \succ b\succ c$ and $k: c \succ b \succ a$, while for all other i there are indifferent between $a,c$.
- Echoic
- Dichotomous: For any voter, their linear order is transitive, and for some distinct $a,b$ in $(x,y,z)$ this voter is indifferent

*Value restrictions* (VR): Given a triplet of alternatives $a,b,c$, for all concerned voters, they either all agree some alternative $a$ is the best, the worst of in the middle. These describe:
- Single peaked, the case where everyone agrees on a best
- Single Caved, the case were the all agree something would be the worst

*Limited agreement* (LA): There is some ordered pair $(a,b)$ such that every individual regards $a \geq b$. 


*Strict agreement* (SA): There are three distinct alternatives (a,b,c) such that one of the following is true:
1. For all 


# Preference Restrictions
## Definitions
*Hereditary*: A domain restriction on $X$ is hereditary if for every profile $P$ in $X$, and every profile $P'$ that can be obtained from $P$ by deleting voters and alternatives, $P'$ belongs to $X$.
*Majority relation*: The linear order over preferences when looking at the preference profile. $a \succ_{\text{maj}} b$ iff the number of voters who prefer $a$ to $b$ is larger than the number of voters that prefer $b$ to $a$

## Domains
### Condorcet
Let $\mathcal{D}_{\text{Condorcet}}$ be the set of all profiles which have a Condorcet winner. In the case of an odd number of voters, all following domain restrictions, are subsets of $\mathcal{D}_{\text{ Condorcet}}$
- Single-peaked profiles
- ...

> [!abstract] Theorem
> Suppose the number of voters is odd, and $f$ is non-dictatorial and surjective on $\mathcal{D}_{\text{Condorcet}}$, then $f$ is strategyproof iff if $f=f_{\text{Condorcet}}$

### Single-peaked
There are 4 equivalent conditions, let $\succ$ be a vote over $A$, and $\triangleleft$ be a linear order over $A$:
1. The vote $\succ$ is single peaked on $\triangleleft$
2. For all $a,b,c \in A$ such that $a \triangleleft b \triangleleft c$, and there form an interval over $\triangleleft$. We do not have bot $a \succ b$ and $c \succ b$. Thus no local valley
3. For all $a,b,c \in A$ such that $a \triangleleft b \triangleleft c$,  We do not have bot $a \succ b$ and $c \succ b$. Thus no valley
4. For each $c \in A$ the set $\{ a \in A : a \succeq c \}$ is an interval on $\triangleleft$

Any single peaked profile with an odd number of voters has a transitive majority relation.

### Single-crossing preferences
![[Pasted image 20250107113355.png]]
A profile is single-crossing if for all alternatives $a,b \in A$, there is a voter $i$, such that $a \succ_{1} b,\dots, a\succ_{i}b$ and for all $j>i$ the prefer b.

Similar to Single peaked profiles, single crossing profiles enjoy the guarantee that for an odd number of voters, the majority relation is transitive. Not only that, they also always have a representative voter.

> [!abstract] Proposition
> Suppose P is single-crossing. If the number of voters is odd, then the preference order of the median voter $k$ coincides with the majority relation. Thus the majority relation is transitive.

This proposition implies that the median voter's preferred alternative is a Condorcet winner.

For even $n$ the majority relation is quasi-transitive.

The ordering of voters in a single crossing profile which contains pairwise distinct voters, is unique up to reversal.

If a single crossing profile is also *minimally rich*, meaning that each alternative is ranked first at least once, it is also single peaked.

### Euclidean preferences
A $d$-Euclidean profile is a profile such that voters and alternatives can be embedded in a Euclidean space of $d$ dimensions.

A $1$-Euclidean profile is both single peaked and single crossing. The reverse however, is not true. Single peak and single crossing are not sufficient to guarantee $1$-Euclidean profiles.

# Elusive Notion of meta agreement
In this work, they assume the hypothesis of deliberation inducing single-peaked preferences through meta-agreement to be true. In stead of attacking this, they instead show that meta-agreement is not nearly as weak of a requirement as it seems. To accomplish this, they uncover hidden assumptions necessary in the 3-steps required for meta agreement to induce single peakedness.

For meta-agreement we need:
- D1: Agreement on common *semantic* dimension in which to conceptualize the problem
- D2: Agreement on where alternatives fall within this *semantic* dimension
- D3: Voters "update" their linear orders according to where they fall in this structure.

## Space between meta agreement and single peakedness
The authors argue that for meta agreement to induce single peakedness \[D1, D2, D3\] are all necessary. The name each as follows:
- D1: Normative meta-agreement
- D2: Factual meta-agreement
- D3: Rationality meta-agreement

This capture the idea that for D1, all voters need to do it to agree on which norms the alternatives can be judged. For D2 they now only need to agree on the facts of the matter, which alternative satisfies the normative principle X the most. Finally for D3 voters need to agree to be "rational", this means that once steps D1 and D2 have taken place, any voter that tries to be coherent should follow D3.

## How deliberation induces meta-agreement
### Semantic Dimensions
It is unclear in which way agents should exchange different conceptualizations, or communicate these between them. The authors differentiate between semantic dimension (*psychological*), and verbal dimension (*verbal*), the later of which is simply a sentence uttered during the discussion.

### D1 
In order for this step to work it cannot only be that voters agree on a single semantic issue, they need to agree on two semantic issues that are complete opposites. If this is not the case, we simply get substantive agreement, meaning all voters agree. To paint a picture, imagine if voters decided on an issue such as not inflicting unnecessary violence, clearly this is a single dimension, and all voters would likely simply agree that this must be enforced, but this is simply substantive agreement.

Furthermore, it cannot only be that these are opposite, they need opposite justifications as well. Otherwise we can introduce yet another semantic dimension, namely 'balance', however in adding another dimension we lose the desirable properties of single-peakedness.
### D2 
If we let $P$ denote one semantic dimension, and $P'$ the opposite. D2 enforces that under P we have $xPy$ iff $yP'x$. Meaning that on a factual basis, some alternative cannot be "better" in on both $P$ and $P'$, or put more strongly, $P$ is the negation of $P'$ and vice versa.

Furthermore, to all voters, the two semantic dimensions must share the exact same meaning, as other wise they cannot represent opposite dimensions. Not only this, but they also need to completely agree on the facts about the alternatives. Put simply, all voters agree exactly on the outcome associated with each alternative.
### D3 
Although D3 seems to be the weakest of the steps, it presupposes the D1 and D2 have already happened. If D1 or D2 has failed (to take place), D3 cannot be expected.

## Demandingness of meta-agreement
Firstly, we need to remember that meta-agreement is not identical to single-peakedness, it is a much stronger condition. 

Meta-agreement requires unanimity, in the form of how to conceptualize the relations between the alternatives. But not only this, if they manage to agree on the conceptualization, the also need to agree on the facts.
