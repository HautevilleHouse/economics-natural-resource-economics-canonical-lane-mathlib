import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure NonrenewableResourceExtractionPathPackage {R : NonrenewableResourcePackage} where
  initialResourceStock : ℝ≥0
  extractionSchedule : ℝ → ℝ≥0
  cumulativeExtraction : ℝ → ℝ≥0
  exhaustionTime : ℝ
  extractionPathNonnegative : ∀ t, extractionSchedule t ≥ 0
  cumulativeBounded : ∀ t, cumulativeExtraction t ≤ initialResourceStock
  exhaustionAtTime : cumulativeExtraction exhaustionTime = initialResourceStock
  extractionDeclining : ∀ t1 t2, t1 ≤ t2 → extractionSchedule t1 ≥ extractionSchedule t2

structure NonrenewableResourceExtractionPathEvidence {R : NonrenewableResourcePackage} (P : NonrenewableResourceExtractionPathPackage R) where
  extractionPathNonnegativeClosed : ∀ t, P.extractionSchedule t ≥ 0
  cumulativeBoundedClosed : ∀ t, P.cumulativeExtraction t ≤ P.initialResourceStock
  exhaustionAtTimeClosed : P.cumulativeExtraction P.exhaustionTime = P.initialResourceStock
  extractionDecliningClosed : ∀ t1 t2, t1 ≤ t2 → P.extractionSchedule t1 ≥ P.extractionSchedule t2

theorem nonrenewable_extraction_path_closed {R : NonrenewableResourcePackage} (P : NonrenewableResourceExtractionPathPackage R) (Ev : NonrenewableResourceExtractionPathEvidence P) : ∀ t, P.extractionSchedule t ≥ 0 := by
  exact Ev.extractionPathNonnegativeClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse