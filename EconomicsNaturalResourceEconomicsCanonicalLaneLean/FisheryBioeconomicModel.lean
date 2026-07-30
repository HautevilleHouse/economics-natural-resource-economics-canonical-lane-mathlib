import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure FisheryBioeconomicModelPackage where
  fishStock : ℝ → ℝ≥0
  harvestRate : ℝ → ℝ≥0 → ℝ≥0
  growthRate : ℝ → ℝ≥0 → ℝ≥0
  costFunction : ℝ → ℝ≥0 → ℝ≥0
  priceFunction : ℝ → ℝ≥0 → ℝ≥0
  steadyStateStock : ℝ≥0
  growthModel : ∀ t s, growthRate t s = s * (1 - s / steadyStateStock)
  harvestCost : ∀ t h, costFunction t h = h^2
  revenue : ∀ t h, priceFunction t h * h
  profitFunction : ℝ → ℝ≥0 → ℝ≥0
  openAccessEquilibrium : ℝ≥0 → ℝ≥0
  soleOwnerOptimum : ℝ≥0 → ℝ≥0

structure FisheryBioeconomicModelEvidence (F : FisheryBioeconomicModelPackage) where
  growthModelClosed : ∀ t s, F.growthRate t s = s * (1 - s / F.steadyStateStock)
  harvestCostClosed : ∀ t h, F.costFunction t h = h^2
  openAccessEquilibriumClosed : ∀ s, F.openAccessEquilibrium s = s * (1 - s / F.steadyStateStock)
  soleOwnerOptimumClosed : ∀ s, F.soleOwnerOptimum s = 0.5 * s * (1 - s / F.steadyStateStock)

theorem fishery_bioeconomic_model_closed (F : FisheryBioeconomicModelPackage) (Ev : FisheryBioeconomicModelEvidence F) : ∀ t s, F.growthRate t s = s * (1 - s / F.steadyStateStock) := by
  exact Ev.growthModelClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse