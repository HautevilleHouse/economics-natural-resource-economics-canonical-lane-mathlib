import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceStockPackage (G : AdmissibleClass) where
  initialStock : ℝ
  extractionRate : ℝ → ℝ
  renewalFunction : ℝ → ℝ
  stockEvolution : Prop
  nonnegativityConstraint : Prop
  initialStockClosed : initialStock ≥ 0
  extractionRateClosed : ∀ t, extractionRate t ≥ 0
  renewalFunctionClosed : ∀ s, renewalFunction s ≥ 0
  stockEvolutionClosed : stockEvolution
  nonnegativityConstraintClosed : nonnegativityConstraint

structure ResourceStockEvidence {G : AdmissibleClass} (P : ResourceStockPackage G) where
  initialStockClosed : P.initialStockClosed
  extractionRateClosed : P.extractionRateClosed
  renewalFunctionClosed : P.renewalFunctionClosed
  stockEvolutionClosed : P.stockEvolutionClosed
  nonnegativityConstraintClosed : P.nonnegativityConstraintClosed

def ResourceStockClosed {G : AdmissibleClass} (P : ResourceStockPackage G) : Prop :=
  P.initialStockClosed ∧ P.extractionRateClosed ∧ P.renewalFunctionClosed ∧ P.stockEvolutionClosed ∧ P.nonnegativityConstraintClosed

theorem resource_stock_closed_from_evidence {G : AdmissibleClass} (P : ResourceStockPackage G) (E : ResourceStockEvidence P) : ResourceStockClosed P := by
  exact And.intro E.initialStockClosed
    (And.intro E.extractionRateClosed
      (And.intro E.renewalFunctionClosed
        (And.intro E.stockEvolutionClosed E.nonnegativityConstraintClosed)))

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse