import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceSustainedYieldPackage where
  carryingCapacity : Type u
  intrinsicGrowthRate : Type v
  maximumSustainedYield : Type w
  yieldBelowMSY : Prop
  stockAboveHalfCapacity : Prop
  steadyStateAchieved : Prop

structure ResourceSustainedYieldEvidence (R : ResourceSustainedYieldPackage) where
  yieldBelowMSYClosed : R.yieldBelowMSY
  stockAboveHalfCapacityClosed : R.stockAboveHalfCapacity
  steadyStateAchievedClosed : R.steadyStateAchieved

def ResourceSustainedYieldClosed (R : ResourceSustainedYieldPackage) : Prop :=
  R.yieldBelowMSY ∧ R.stockAboveHalfCapacity ∧ R.steadyStateAchieved

theorem resource_sustained_yield_closed_from_evidence (R : ResourceSustainedYieldPackage) (E : ResourceSustainedYieldEvidence R) : ResourceSustainedYieldClosed R := by
  exact And.intro E.yieldBelowMSYClosed (And.intro E.stockAboveHalfCapacityClosed E.steadyStateAchievedClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse