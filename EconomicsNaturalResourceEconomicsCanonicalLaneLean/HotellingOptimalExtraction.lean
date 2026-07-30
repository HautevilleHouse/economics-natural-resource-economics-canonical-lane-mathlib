import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure HotellingOptimalExtraction where
  initialStock : ℝ
  extractionPath : ℝ → ℝ
  pricePath : ℝ → ℝ
  discountRate : ℝ
  optimalityCondition : Prop

structure HotellingExtractionEvidence (H : HotellingOptimalExtraction) where
  priceGrowthRate : ∀ t, H.pricePath t = H.pricePath 0 * Real.exp (H.discountRate * t)
  cumulativeExtraction : ∫ t in Set.Ici 0, H.extractionPath t ≤ H.initialStock
  optimalityClosed : H.optimalityCondition

def HotellingExtractionClosed (H : HotellingOptimalExtraction) : Prop :=
  H.optimalityCondition

theorem hotelling_extraction_closed_from_evidence (H : HotellingOptimalExtraction) (E : HotellingExtractionEvidence H) :
  HotellingExtractionClosed H := by
  exact E.optimalityClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse