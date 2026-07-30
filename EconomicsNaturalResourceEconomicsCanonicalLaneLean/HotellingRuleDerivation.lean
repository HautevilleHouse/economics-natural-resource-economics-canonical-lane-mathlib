import canonicalLaneMathlib.AdmissibleClass
import EconomicsNaturalResourceEconomics.ResourceStockModel

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomics

structure HotellingDerivationPackage (R : ResourceStock) where
  pricePath : ℝ → ℝ
  marginalExtractionCost : ℝ → ℝ
  hotellingRuleDerived : Prop
  arbitrageFreeCondition : Prop
  pricePathDifferentiable : Prop

structure HotellingDerivationEvidence {R : ResourceStock} (H : HotellingDerivationPackage R) where
  hotellingRuleDerivedClosed : H.hotellingRuleDerived
  arbitrageFreeConditionClosed : H.arbitrageFreeCondition
  pricePathDifferentiableClosed : H.pricePathDifferentiable

def HotellingDerivationClosed {R : ResourceStock} (H : HotellingDerivationPackage R) : Prop :=
  H.hotellingRuleDerived ∧ H.arbitrageFreeCondition ∧ H.pricePathDifferentiable

theorem hotelling_derivation_closed_from_evidence {R : ResourceStock} (H : HotellingDerivationPackage R) (E : HotellingDerivationEvidence H) :
    HotellingDerivationClosed H := by
  exact And.intro E.hotellingRuleDerivedClosed (And.intro E.arbitrageFreeConditionClosed E.pricePathDifferentiableClosed)

end EconomicsNaturalResourceEconomics
end HautevilleHouse
