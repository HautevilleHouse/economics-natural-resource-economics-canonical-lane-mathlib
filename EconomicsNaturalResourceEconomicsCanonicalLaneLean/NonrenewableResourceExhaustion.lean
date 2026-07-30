import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure NonrenewableResourceExhaustionPackage where
  initialReserves : Type u
  extractionRate : Type v
  exhaustionTime : Prop
  scarcityRent : Prop
  cumulativeExtractionLimit : Prop

structure NonrenewableResourceExhaustionEvidence (N : NonrenewableResourceExhaustionPackage) where
  exhaustionTimeClosed : N.exhaustionTime
  scarcityRentClosed : N.scarcityRent
  cumulativeExtractionLimitClosed : N.cumulativeExtractionLimit

def NonrenewableResourceExhaustionClosed (N : NonrenewableResourceExhaustionPackage) : Prop :=
  N.exhaustionTime ∧ N.scarcityRent ∧ N.cumulativeExtractionLimit

theorem nonrenewable_resource_exhaustion_closed_from_evidence
    (N : NonrenewableResourceExhaustionPackage) (E : NonrenewableResourceExhaustionEvidence N) :
    NonrenewableResourceExhaustionClosed N := by
  exact And.intro E.exhaustionTimeClosed (And.intro E.scarcityRentClosed E.cumulativeExtractionLimitClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse