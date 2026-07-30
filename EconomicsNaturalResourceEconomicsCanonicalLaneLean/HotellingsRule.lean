import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure HotellingRulePackage {R : NonrenewableResourcePackage} where
  netPrice : ℝ → ℝ≥0
  interestRate : ℝ≥0
  netPriceDerivative : ℝ → ℝ
  hotellingEquation : Prop
  netPricePositive : ∀ t, netPrice t > 0
  interestRatePositive : interestRate > 0
  derivativeExists : ∀ t, DifferentiableAt ℝ netPrice t
  hotellingEquationHolds : ∀ t, netPriceDerivative t = interestRate * netPrice t

structure HotellingRuleEvidence {R : NonrenewableResourcePackage} (H : HotellingRulePackage R) where
  hotellingEquationClosed : H.hotellingEquation
  netPricePositiveClosed : ∀ t, H.netPrice t > 0
  interestRatePositiveClosed : H.interestRatePositive > 0
  derivativeExistsClosed : ∀ t, DifferentiableAt ℝ H.netPrice t
  hotellingEquationHoldsClosed : ∀ t, H.netPriceDerivative t = H.interestRate * H.netPrice t

theorem hotelling_rule_closed_from_evidence {R : NonrenewableResourcePackage} (H : HotellingRulePackage R) (E : HotellingRuleEvidence H) : H.hotellingEquation := by
  exact E.hotellingEquationClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse