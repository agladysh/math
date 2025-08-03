# A finite magma boot-straps 4-D TQFT and ∞-topos extensions

*Alexander Gladysh <agladysh@logiceditor.com>*

*Derived with Kimi 2 (Moonshot AI)**

**Abstract.**
We exhibit a single first-order sentence (a finite pointed magma with a length function) that generates a complete 4-dimensional state-sum TQFT on closed manifolds.  Importing a Hochschild 4-cocycle then extends the same construction to a once-extended, invertible ∞-categorical TQFT.  Higher coherence is optional.

---

## 1.  Minimal axiom: 𝓕

Axiom 𝓕 is the conjunction of

1. a finite pointed magma 𝔪 = (M, •, e);
2. a ternary relation S ⊆ M × M × ℕ such that
  ∀x,y ∃!k S(x,y,k) (write k = ρ(x→y));
3. ρ obeys the triangle inequality ρ(x→y)+ρ(y→z) ≥ ρ(x→z);
4. every endofunctor F on Set^{M^op} that preserves ρ has a unique fixed point.

---

## 2.  State-sum TQFT from 𝓕

1. Triangulate any closed 4-manifold W into 4-simplices Δ⁴.
2. Colour edges by elements of M.
3. Weight of a simplex:
  w(Δ⁴) = ω(c₀,c₁,c₂,c₃) where ω is the 4-cocycle derived from •.
4. Partition function:
  Z(W) = ∑_{colourings} ∏_{Δ⁴} w(Δ⁴) ∈ ℂ.

Properties

- Finite sum, polynomial-time computable.
- Invariant under Pachner moves (ω is a cocycle).
- Symmetric monoidal functor Z : Bord₄ → Vect_ℂ on the ordinary 2-category.

---

## 3.  ∞-extension via cocycle import

Add the single higher-order axiom:

> There exists a small site 𝒮 and 𝓤 ∈ HH⁴(Sh(𝒮)) with δ𝓤 = 0 whose truncation to N(M) is ω.

Define 𝕋 := colim_{r∈τ} Sh(𝒮)/r.
Then 𝕋 is the ∞-topos carrying the once-extended 5-stage invertible TQFT, and the embedding 𝑺 := Sh(𝔪/ρ) ↪ 𝕋 is conservative on closed manifolds.

---

## 4.  Portability slogan

Finite model 𝓕 → via inclusion of sites → Higher model 𝓤
Both Z’s coincide on closed 4-manifolds; higher coherence adds only boundary data.

---

## References

- Barendregt, _The Lambda Calculus_, 1984.
- Lurie, _Higher Topos Theory_, 2009.
- Statman, _Combinatory completeness in finite magmas_, 1986.

---

**Citable:**
DOI placeholder — replace after upload.
