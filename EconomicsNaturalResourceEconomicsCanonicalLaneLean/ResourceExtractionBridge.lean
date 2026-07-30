import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceEconomy where
  resourceStock : ℕ → ℝ
  consumptionPath : ℕ → ℝ
  discountRate : ℝ
  initialStock : ℝ
  extractionCost : ℝ → ℝ
  regenerationRate : ℝ

structure ResourceOptimality where
  hotellingRuleHolds : Prop
  transversalityConditionSatisfied : Prop
  resourceExhaustionFiniteTime : Prop
  shadowPrice : ℕ → ℝ

def resourceOptimalityClosed (R : ResourceEconomy) (O : ResourceOptimality) : Prop :=
  O.hotellingRuleHolds ∧ O.transversalityConditionSatisfied ∧ O.resourceExhaustionFiniteTime

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse