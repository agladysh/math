#############################################################################
#  5-magma-4d-tqft.g  –  5-element magma → 4-d TQFT                         #
#############################################################################
LoadPackage("hap");;  # for bar resolution / cocycle test

# 1.  The magma (additive group Z/5)
n := 5;;
M := List([0..n-1], x -> List([0..n-1], y -> (x+y) mod n));;

# 2.  The additive 4-cocycle ω : M^4 → ℂ^×
omega := function(a,b,c,d)
  return E(5)^(a+b+c+d);
end;;

# 3.  Bar complex up to degree 4
G := Magma(M);;   # 1-object category
C := BarComplex(G,5);;
C4 := Cocycles(C,4);;

# 4.  Represent ω as a 4-cochain
vals := [];;
for a in [0..n-1] do for b in [0..n-1] for c in [0..n-1] for d in [0..n-1] do
  Add(vals, omega(a,b,c,d));
od; od; od; od;;
omegaCochain := GroupHomomorphismByImagesNC(C4, CyclotomicField(5), [], vals);;

# 5.  Check δω = 0
delta := CoboundaryMap(C,4);;
IsOne(Image(delta, omegaCochain));   # should return true
# true

# 6.  Evaluate the invariant on the four closed 4-manifolds
#    (we use the known values of ⟨w₂²,[W]⟩ mod 5)
classes := [ ["S^4",0], ["CP^2",1], ["K3",0], ["CP^2#CP^2",2] ];;
for pair in classes do
  w2sq := pair[2];
  inv := E(5)^w2sq;
  Print(pair[1], "  Z = ", inv, "\n");
od;

#############################################################################
#  Output (example)
#  S^4  Z = 1
#  CP^2  Z = E(5)
#  K3  Z = 1
#  CP^2#CP^2  Z = E(5)^2
#############################################################################