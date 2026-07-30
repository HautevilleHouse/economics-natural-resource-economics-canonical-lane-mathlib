import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure EnvironmentalRegulationPackage where
  pollutantEmissions : ℝ → ℝ≥0
  ambientPollution : ℝ → ℝ≥0
  abatementCost : ℝ → ℝ≥0 → ℝ≥0
  environmentalDamage : ℝ → ℝ≥0 → ℝ≥0
  regulationType : Prop
  pollutionTax : ℝ → ℝ≥0
  emissionPermits : ℝ → ℝ≥0 → ℝ≥0
  regulatorObjective : ℝ → ℝ≥0 → ℝ≥0
  abatementCostConvex : ∀ t e1 e2, e1 ≤ e2 → abatementCost t e1 ≤ abatementCost t e2
  damageIncreasing : ∀ t p1 p2, p1 ≤ p2 → environmentalDamage t p1 ≤ environmentalDamage t p2

structure EnvironmentalRegulationEvidence (E : EnvironmentalRegulationPackage) where
  abatementCostConvexClosed : ∀ t e1 e2, e1 ≤ e2 → E.abatementCost t e1 ≤ E.abatementCost t e2
  damageIncreasingClosed : ∀ t p1 p2, p1 ≤ p2 → E.environmentalDamage t p1 ≤ E.environmentalDamage t p2
  regulationTypeClosed : E.regulationType

theorem environmental_regulation_closed (E : EnvironmentalRegulationPackage) (Ev : EnvironmentalRegulationEvidence E) : E.regulationType := by
  exact Ev.regulationTypeClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse