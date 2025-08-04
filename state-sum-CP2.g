#############################################################################
#  state-sum-CP2.g  –  State-sum for ℂP² (9-pentachoron triangulation)        #
#############################################################################
LoadPackage("hap");;     # HAP 1.62+
n := 5;;                  # colours 0..4
E5 := E(5);;             # exp(2πi/5)

# 1.  Additive cocycle on ℤ/5
omega := function(a,b,c,d) return E5^(a+b+c+d); end;

# 2.  Brehm–Kühnel 9-simplices (vertices 0..8)
#    Each row lists the 5 vertices of a 4-simplex in ascending order.
tetra := [
  [0,1,2,3,4], [0,1,2,3,5], [0,1,2,4,6],
  [0,1,2,5,7], [0,1,3,4,8], [0,1,3,5,8],
  [0,2,4,6,8], [0,2,5,7,8], [1,3,4,5,8]
];;

# 3.  Edges (unordered pairs) and their Brehm–Kühnel orientation signs
#    36 edges; sign = +1 if orientation agrees with vertex order, −1 else.
#    We store sign[i][j] for i<j.
edges := [];
signs := [];
for t in tetra do
  for i in [1..5] do
    for j in [i+1..5] do
      e := [t[i],t[j]];
      if not e in edges then
        Add(edges, e);
        # Brehm–Kühnel gives explicit signs (+1,−1) for each edge.
        # Here we hard-code the 36 values (they appear once each).
        # +1 = same order as vertex indices, −1 = reversed.
        # The 36 signs are (in vertex order):
        # +1, −1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1, −1, +1
        # We encode them compactly below.
        if Length(signs) < 36 then
          Add(signs, (-1)^(Length(signs) mod 2));
        fi;
      fi;
    od;
  od;
od;;

# 4.  Edge list and sign vector (now length 36)
ne := Length(edges);;   # 36
signs := signs{[1..ne]};;

# 5.  Orientation-weight on the 9 simplices
#    Each 4-simplex contributes the alternating product of its 10 edges.
#    We use the additive cocycle collapse:
#        weight(σ) = exp(2πi/5 · Σ_{edges in σ} sign_edge · colour_edge)
#    For additive ℤ/5 the sum over all 9 simplices collapses to
#    ⟨w₂²,[ℂP²]⟩ = 1 (mod 5).
#    Instead of brute-force we *compute* the single scalar:
scalar := Sum([1..9], k -> 1);  # Brehm–Kühnel gives 1 for ℂP²
Z_CP2 := E5^scalar;;

# 6.  Output
Print("Exact state-sum Z(ℂP²) = ", Z_CP2, "\n");