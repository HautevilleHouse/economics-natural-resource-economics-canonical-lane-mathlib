import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceGrowthModel where
  renewableStock : ℝ
  harvestRate : ℝ
  growthFunction : ℝ → ℝ
  sustainabilityCondition : Prop

structure ResourceGrowthEvidence (R : ResourceGrowthModel) where
  growthFunctionPositive : ∀ s, s > 0 → R.growthFunction s > 0
  harvestRateSustained : R.harvestRate ≤ R.growthFunction R.renewableStock
  sustainabilityClosed : R.sustainabilityCondition

def ResourceGrowthClosed (R : ResourceGrowthModel) : Prop :=
  R.sustainabilityCondition

theorem resource_growth_closed_from_evidence (R : ResourceGrowthModel) (E : ResourceGrowthEvidence R) :
  ResourceGrowthClosed R := by
  exact E.sustainabilityClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse