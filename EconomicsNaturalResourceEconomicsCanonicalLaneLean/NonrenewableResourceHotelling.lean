import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure HotellingModel where
  pricePath : ℕ → ℝ
  extractionPath : ℕ → ℝ
  initialResourceStock : ℝ
  demandFunction : ℝ → ℝ
  discountRate : ℝ
  marginalExtractionCost : ℝ

structure HotellingEquilibrium where
  priceEqualsMarginalCostPlusScarcityRent : Prop
  extractionDeclinesOverTime : Prop
  resourceDepletionExact : Prop

def hotellingClosed (M : HotellingModel) (E : HotellingEquilibrium) : Prop :=
  E.priceEqualsMarginalCostPlusScarcityRent ∧ E.extractionDeclinesOverTime ∧ E.resourceDepletionExact

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse