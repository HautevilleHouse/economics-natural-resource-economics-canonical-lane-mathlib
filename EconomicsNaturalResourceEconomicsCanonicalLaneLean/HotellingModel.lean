import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure HotellingModelPackage where
  resourceStock : ℝ
  extractionRate : ℝ
  resourcePrice : ℝ
  interestRate : ℝ
  scarcityRent : Prop

structure HotellingModelEvidence (H : HotellingModelPackage) where
  initialStockPositive : H.resourceStock > 0
  extractionRateNonnegative : H.extractionRate ≥ 0
  priceNonnegative : H.resourcePrice ≥ 0
  interestRatePositive : H.interestRate > 0
  scarcityRentClosed : H.scarcityRent

def HotellingModelClosed (H : HotellingModelPackage) : Prop :=
  H.resourceStock > 0 ∧ H.extractionRate ≥ 0 ∧ H.resourcePrice ≥ 0 ∧
  H.interestRate > 0 ∧ H.scarcityRent

theorem hotelling_model_closed_from_evidence
    (H : HotellingModelPackage) (E : HotellingModelEvidence H) :
    HotellingModelClosed H := by
  exact And.intro E.initialStockPositive
    (And.intro E.extractionRateNonnegative
      (And.intro E.priceNonnegative
        (And.intro E.interestRatePositive E.scarcityRentClosed)))

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse