import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceExtractionOptimizationPackage where
  extractionPath : Type u
  costFunction : Type v
  revenueFunction : Type w
  optimalityConditions : Prop
  solutionExistence : Prop

structure ResourceExtractionOptimizationEvidence (R : ResourceExtractionOptimizationPackage) where
  optimalityConditionsClosed : R.optimalityConditions
  solutionExistenceClosed : R.solutionExistence

def ResourceExtractionOptimizationClosed (R : ResourceExtractionOptimizationPackage) : Prop :=
  R.optimalityConditions ∧ R.solutionExistence

theorem resource_extraction_optimization_closed_from_evidence
    (R : ResourceExtractionOptimizationPackage) (E : ResourceExtractionOptimizationEvidence R) :
    ResourceExtractionOptimizationClosed R := by
  exact And.intro E.optimalityConditionsClosed E.solutionExistenceClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse