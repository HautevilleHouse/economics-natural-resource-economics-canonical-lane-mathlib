import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure RenewableResourcePackage where
  growthFunction : ℝ → ℝ≥0 → ℝ≥0
  harvestFunction : ℝ → ℝ≥0 → ℝ≥0 → ℝ≥0
  stockLevel : ℝ → ℝ≥0
  steadyState : ℝ≥0
  logisticallyGrowing : Prop
  harvestCost : ℝ → ℝ≥0 → ℝ≥0 → ℝ≥0
  growthFunctionConcave : ∀ t s, growthFunction t (2*s) ≤ 2 * growthFunction t s
  stockPositive : ∀ t, stockLevel t > 0
  steadyStatePositive : steadyState > 0
  logisticGrowthLaw : ∀ t s, growthFunction t s = s * (1 - s / steadyState)

structure RenewableResourceEvidence (P : RenewableResourcePackage) where
  logisticallyGrowingClosed : P.logisticallyGrowing
  growthFunctionConcaveClosed : ∀ t s, P.growthFunction t (2*s) ≤ 2 * P.growthFunction t s
  stockPositiveClosed : ∀ t, P.stockLevel t > 0
  steadyStatePositiveClosed : P.steadyStatePositive > 0
  logisticGrowthLawClosed : ∀ t s, P.growthFunction t s = s * (1 - s / P.steadyState)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse