import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceEconomicsEquilibriumPackage where
  consumerPreferences : Prop
  producerTechnology : Prop
  marketClearing : Prop
  paretoEfficiency : Prop
  initialEndowment : Prop
  resourceConstraint : Prop
  equilibriumPrice : ℝ → ℝ≥0
  equilibriumAllocation : ℝ → ℝ≥0 → ℝ≥0
  preferencesRational : consumerPreferences
  technologyConvex : producerTechnology
  marketClearingCondition : marketClearing
  paretoEfficiencyCondition : paretoEfficiency

structure ResourceEconomicsEquilibriumEvidence (E : ResourceEconomicsEquilibriumPackage) where
  preferencesRationalClosed : E.consumerPreferences
  technologyConvexClosed : E.producerTechnology
  marketClearingConditionClosed : E.marketClearing
  paretoEfficiencyConditionClosed : E.paretoEfficiency
  initialEndowmentClosed : E.initialEndowment
  resourceConstraintClosed : E.resourceConstraint

theorem resource_economics_equilibrium_closed (E : ResourceEconomicsEquilibriumPackage) (Ev : ResourceEconomicsEquilibriumEvidence E) : E.marketClearing ∧ E.paretoEfficiency := by
  exact And.intro Ev.marketClearingConditionClosed Ev.paretoEfficiencyConditionClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse