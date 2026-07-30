import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure RenewableResourceModel where
  growthFunction : ℝ → ℝ
  harvestRate : ℝ → ℝ
  steadyStateStock : ℝ
  maximumSustainableYield : ℝ
  carryingCapacity : ℝ

structure SteadyStateEvidence where
  steadyStateReachable : Prop
  stabilityConditionHolds : Prop
  harvestRateOptimal : Prop

def renewableSteadyStateClosed (M : RenewableResourceModel) (E : SteadyStateEvidence) : Prop :=
  E.steadyStateReachable ∧ E.stabilityConditionHolds ∧ E.harvestRateOptimal

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse