import canonicalLaneMathlib.AdmissibleClass
import EconomicsNaturalResourceEconomics.ResourceStockModel

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomics

structure OptimalExtractionPackage (R : ResourceStock) where
  extractionPath : ℝ → ℝ
  discountRate : ℝ
  hotellingRule : Prop
  transversalityCondition : Prop
  extractionPathSmooth : Prop

structure OptimalExtractionEvidence {R : ResourceStock} (P : OptimalExtractionPackage R) where
  hotellingRuleClosed : P.hotellingRule
  transversalityConditionClosed : P.transversalityCondition
  extractionPathSmoothClosed : P.extractionPathSmooth

def OptimalExtractionClosed {R : ResourceStock} (P : OptimalExtractionPackage R) : Prop :=
  P.hotellingRule ∧ P.transversalityCondition ∧ P.extractionPathSmooth

theorem optimal_extraction_closed_from_evidence {R : ResourceStock} (P : OptimalExtractionPackage R) (E : OptimalExtractionEvidence P) :
    OptimalExtractionClosed P := by
  exact And.intro E.hotellingRuleClosed (And.intro E.transversalityConditionClosed E.extractionPathSmoothClosed)

end EconomicsNaturalResourceEconomics
end HautevilleHouse
