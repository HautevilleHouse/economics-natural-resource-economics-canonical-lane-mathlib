import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ClimateEconomyModel where
  emissionPath : ℕ → ℝ
  temperatureAnomaly : ℕ → ℝ
  damageFunction : ℝ → ℝ
  abatementCost : ℝ → ℝ
  socialDiscountRate : ℝ
  damageSensitivity : ℝ

structure SocialCostOfCarbonEstimate where
  marginalDamageCalculated : Prop
  optimalAbatementPathFound : Prop
  policyInterventionJustified : Prop

def socialCostOfCarbonClosed (M : ClimateEconomyModel) (E : SocialCostOfCarbonEstimate) : Prop :=
  E.marginalDamageCalculated ∧ E.optimalAbatementPathFound ∧ E.policyInterventionJustified

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse