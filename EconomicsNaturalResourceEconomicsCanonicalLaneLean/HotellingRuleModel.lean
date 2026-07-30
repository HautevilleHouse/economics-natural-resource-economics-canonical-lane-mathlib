import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure HotellingRulePackage where
  resourcePricePath : Type u
  extractionCost : Type v
  discountRate : Type w
  initialPrice : Prop
  priceGrowthEqualsDiscount : Prop
  extractionCostPositive : Prop

structure HotellingRuleEvidence (H : HotellingRulePackage) where
  initialPriceClosed : H.initialPrice
  priceGrowthEqualsDiscountClosed : H.priceGrowthEqualsDiscount
  extractionCostPositiveClosed : H.extractionCostPositive

def HotellingRuleClosed (H : HotellingRulePackage) : Prop :=
  H.initialPrice ∧ H.priceGrowthEqualsDiscount ∧ H.extractionCostPositive

theorem hotelling_rule_closed_from_evidence (H : HotellingRulePackage) (E : HotellingRuleEvidence H) : HotellingRuleClosed H := by
  exact And.intro E.initialPriceClosed (And.intro E.priceGrowthEqualsDiscountClosed E.extractionCostPositiveClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse