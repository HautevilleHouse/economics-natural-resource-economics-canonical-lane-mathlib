import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure NonrenewableResourcePackage where
  initialStock : ℝ≥0
  extractionPath : ℝ → ℝ≥0
  cumulativeExtraction : ℝ → ℝ≥0
  resourcePrice : ℝ → ℝ≥0
  demandFunction : ℝ → ℝ≥0 → ℝ≥0
  extractionCost : ℝ → ℝ≥0 → ℝ≥0 → ℝ≥0
  hotellingRule : Prop
  initialStockPositive : initialStock > 0
  extractionNonnegative : ∀ t, extractionPath t ≥ 0
  cumulativeBounded : ∀ t, cumulativeExtraction t ≤ initialStock
  priceNonnegative : ∀ t, resourcePrice t ≥ 0
  demandDecreasing : ∀ t p1 p2, p1 ≤ p2 → demandFunction t p1 ≥ demandFunction t p2
  costConvex : ∀ t q1 q2 x, q1 ≤ q2 → extractionCost t q1 x ≤ extractionCost t q2 x

structure NonrenewableResourceEvidence (P : NonrenewableResourcePackage) where
  hotellingRuleClosed : P.hotellingRule
  initialStockPositiveClosed : P.initialStockPositive
  extractionNonnegativeClosed : ∀ t, P.extractionPath t ≥ 0
  cumulativeBoundedClosed : ∀ t, P.cumulativeExtraction t ≤ P.initialStock
  priceNonnegativeClosed : ∀ t, P.resourcePrice t ≥ 0

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse