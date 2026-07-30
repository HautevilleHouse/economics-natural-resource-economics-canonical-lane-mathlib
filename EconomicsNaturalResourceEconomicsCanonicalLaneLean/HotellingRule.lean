import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure HotellingRulePackage (G : AdmissibleClass) where
  pricePath : ℝ → ℝ
  interestRate : ℝ
  extractionCost : ℝ → ℝ
  hotellingCondition : Prop
  pricePositive : Prop
  interestRatePositive : Prop
  hotellingConditionClosed : hotellingCondition
  pricePositiveClosed : pricePositive
  interestRatePositiveClosed : interestRatePositive

structure HotellingRuleEvidence {G : AdmissibleClass} (H : HotellingRulePackage G) where
  hotellingConditionClosed : H.hotellingConditionClosed
  pricePositiveClosed : H.pricePositiveClosed
  interestRatePositiveClosed : H.interestRatePositiveClosed

def HotellingRuleClosed {G : AdmissibleClass} (H : HotellingRulePackage G) : Prop :=
  H.hotellingConditionClosed ∧ H.pricePositiveClosed ∧ H.interestRatePositiveClosed

theorem hotelling_rule_closed_from_evidence {G : AdmissibleClass} (H : HotellingRulePackage G) (E : HotellingRuleEvidence H) : HotellingRuleClosed H := by
  exact And.intro E.hotellingConditionClosed (And.intro E.pricePositiveClosed E.interestRatePositiveClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse