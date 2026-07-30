import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure HotellingModel where
  resourcePrice : ℝ → ℝ
  extractionCost : ℝ → ℝ
  initialResourceStock : ℝ
  discountRate : ℝ
  pricePathCondition : Prop
  scarcityRent : Prop

def HotellingRuleClosed (H : HotellingModel) : Prop :=
  H.pricePathCondition ∧ H.scarcityRent

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse