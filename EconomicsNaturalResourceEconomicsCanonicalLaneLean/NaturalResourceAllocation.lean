import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure NaturalResourceAllocationPackage where
  resourceStock : Type u
  extractionPath : Type v
  initialStock : Prop
  extractionTechnology : Prop
  sustainabilityCondition : Prop

structure NaturalResourceAllocationEvidence (N : NaturalResourceAllocationPackage) where
  initialStockClosed : N.initialStock
  extractionTechnologyClosed : N.extractionTechnology
  sustainabilityConditionClosed : N.sustainabilityCondition

def NaturalResourceAllocationClosed (N : NaturalResourceAllocationPackage) : Prop :=
  N.initialStock ∧ N.extractionTechnology ∧ N.sustainabilityCondition

theorem natural_resource_allocation_closed_from_evidence
    (N : NaturalResourceAllocationPackage) (E : NaturalResourceAllocationEvidence N) :
    NaturalResourceAllocationClosed N := by
  exact And.intro E.initialStockClosed (And.intro E.extractionTechnologyClosed E.sustainabilityConditionClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse