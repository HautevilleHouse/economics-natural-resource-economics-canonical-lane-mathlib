import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure NonrenewableResourceDepletionPackage where
  initialStock : Type u
  extractionPath : Type v
  cumulativeExtraction : Type w
  exhaustionTimeFinite : Prop
  extractionDeclining : Prop
  pricePathMonotonic : Prop

structure NonrenewableResourceDepletionEvidence (N : NonrenewableResourceDepletionPackage) where
  exhaustionTimeFiniteClosed : N.exhaustionTimeFinite
  extractionDecliningClosed : N.extractionDeclining
  pricePathMonotonicClosed : N.pricePathMonotonic

def NonrenewableResourceDepletionClosed (N : NonrenewableResourceDepletionPackage) : Prop :=
  N.exhaustionTimeFinite ∧ N.extractionDeclining ∧ N.pricePathMonotonic

theorem nonrenewable_resource_depletion_closed_from_evidence (N : NonrenewableResourceDepletionPackage) (E : NonrenewableResourceDepletionEvidence N) : NonrenewableResourceDepletionClosed N := by
  exact And.intro E.exhaustionTimeFiniteClosed (And.intro E.extractionDecliningClosed E.pricePathMonotonicClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse