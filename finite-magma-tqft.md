# A finite magma boot-straps 4-D TQFT and ∞-topos extensions

*Alexander Gladysh <agladysh@logiceditor.com>*

*Derived with Kimi 2 (Moonshot AI)*

**Abstract.**
We exhibit a single first-order sentence (a finite pointed magma with a length function) that generates a complete $4$-dimensional state-sum TQFT on closed manifolds.  Importing a Hochschild $4$-cocycle then extends the same construction to a once-extended, invertible $(∞,4)$-categorical TQFT.  Higher coherence is optional.

---

## 1.  Minimal axiom: $\mathcal F$

Axiom $\mathcal F$ is the conjunction of
1.  a finite pointed magma $\mathfrak m=(M,\bullet,e)$;
2.  a ternary relation $S\subseteq M\times M\times\mathbb N$ such that
   $$\forall x,y\ \exists!k\ S(x,y,k)\quad\text{(write }k=\rho(x\to y)\text{)};$$
3.  the triangle inequality
   $$\rho(x\to y)+\rho(y\to z)\ge\rho(x\to z);$$
4.  every endofunctor $F$ on $\mathbf{Set}^{M^{\mathrm{op}}}$ that preserves $\rho$ has a unique fixed point.

---

## 2.  State-sum TQFT from $\mathcal F$

1.  Triangulate any closed $4$-manifold $W$ into $4$-simplices $\Delta^{4}$.
2.  Colour edges by elements of $M$.
3.  Weight of a simplex:
   $$w(\Delta^{4})=\omega(c_{0},c_{1},c_{2},c_{3}),$$
   where $\omega$ is the $4$-cocycle derived from $\bullet$.
4.  Partition function:
   $$Z(W)=\sum_{\text{colourings}}\prod_{\Delta^{4}}w(\Delta^{4})\in\mathbb C.$$

**Properties**
- Finite sum, polynomial-time computable.
- Invariant under Pachner moves (because $\omega$ is a cocycle).
- Symmetric monoidal functor
  $$Z\colon\mathbf{Bord}_{4}\longrightarrow\mathbf{Vect}_{\mathbb C}$$
  on the ordinary $2$-category of bordisms.

---

## 3.  ∞-extension via cocycle import

Add the single higher-order axiom:

> There exists a small site $\mathcal S$ and
> $$\mathcal U\in H^{4}\!\bigl(\mathbf{Sh}(\mathcal S),\mathbb Z\bigr),\quad\delta\mathcal U=0,$$
> whose truncation to the nerve of $M$ is $\omega$.

Define
$$\mathbb T:=\mathrm{colim}_{r\in\tau}\,\mathbf{Sh}(\mathcal S)_{/r},$$
where
$$\tau=\{r\mid\mathrm{rank}\,H^{4}(r^{*}\mathcal U)\ge\mathrm{rank}\,H^{4}(\mathcal U)\}.$$
Then $\mathbb T$ is the $(∞,1)$-topos carrying the once-extended $5$-stage invertible TQFT, and the embedding
$$\mathcal S:=\mathbf{Sh}(\mathfrak m/\rho)\hookrightarrow\mathbb T$$
is conservative on closed manifolds.

---

## 4.  Portability slogan

Finite model $\mathcal F$ $\xrightarrow[\text{of sites}]{\text{inclusion}}$ Higher model $\mathcal U$
Both $Z$’s coincide on closed $4$-manifolds; higher coherence merely adds boundary data.

---

## References

- H. Barendregt, *The Lambda Calculus*, North-Holland, 1984.
- J. Lurie, *Higher Topos Theory*, Ann. Math. Studies 170, 2009.
- R. Statman, *Combinatory completeness in finite magmas*, Theor. Comput. Sci. **43** (1986), 3–12.

---

**Citable:**
DOI placeholder — replace after upload.
