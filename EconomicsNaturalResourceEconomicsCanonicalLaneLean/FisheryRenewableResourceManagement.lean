import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure FisheryManagementModel where
  fishPopulation : ℝ → ℝ
  harvestRate : ℝ → ℝ
  growthFunction : ℝ → ℝ
  carryingCapacity : ℝ
  maximumSustainableYield : ℝ
  optimalHarvestPolicy : Prop
  steadyStateCondition : Prop

def FisheryOptimalHarvestClosed (F : FisheryManagementModel) : Prop :=
  F.optimalHarvestPolicy ∧ F.steadyStateCondition

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse