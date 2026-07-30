import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure BellmanEquationModel where
  stateSpace : Type u
  controlSpace : Type v
  transitionFunction : stateSpace → controlSpace → stateSpace
  rewardFunction : stateSpace → controlSpace → ℝ
  discountFactor : ℝ
  valueFunction : stateSpace → ℝ
  bellmanOptimality : Prop

def BellmanOptimalityClosed (B : BellmanEquationModel) : Prop :=
  B.bellmanOptimality

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse