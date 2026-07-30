import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure OptimalExtractionPackage (G : AdmissibleClass) where
  utilityFunction : ℝ → ℝ
  discountRate : ℝ
  extractionPath : ℝ → ℝ
  objectiveFunctional : ℝ
  optimalityCondition : Prop
  utilityConcave : Prop
  extractionNonnegative : Prop
  optimalityConditionClosed : optimalityCondition
  utilityConcaveClosed : utilityConcave
  extractionNonnegativeClosed : extractionNonnegative

structure OptimalExtractionEvidence {G : AdmissibleClass} (O : OptimalExtractionPackage G) where
  optimalityConditionClosed : O.optimalityConditionClosed
  utilityConcaveClosed : O.utilityConcaveClosed
  extractionNonnegativeClosed : O.extractionNonnegativeClosed

def OptimalExtractionClosed {G : AdmissibleClass} (O : OptimalExtractionPackage G) : Prop :=
  O.optimalityConditionClosed ∧ O.utilityConcaveClosed ∧ O.extractionNonnegativeClosed

theorem optimal_extraction_closed_from_evidence {G : AdmissibleClass} (O : OptimalExtractionPackage G) (E : OptimalExtractionEvidence O) : OptimalExtractionClosed O := by
  exact And.intro E.optimalityConditionClosed (And.intro E.utilityConcaveClosed E.extractionNonnegativeClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse