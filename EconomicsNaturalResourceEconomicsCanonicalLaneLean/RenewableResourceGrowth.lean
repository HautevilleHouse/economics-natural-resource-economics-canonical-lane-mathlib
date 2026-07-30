import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure RenewableResourceGrowthPackage where
  populationDynamics : Type u
  harvestedYield : Type v
  growthFunction : Prop
  sustainableYieldCurve : Prop
  steadyStateExistence : Prop

structure RenewableResourceGrowthEvidence (R : RenewableResourceGrowthPackage) where
  growthFunctionClosed : R.growthFunction
  sustainableYieldCurveClosed : R.sustainableYieldCurve
  steadyStateExistenceClosed : R.steadyStateExistence

def RenewableResourceGrowthClosed (R : RenewableResourceGrowthPackage) : Prop :=
  R.growthFunction ∧ R.sustainableYieldCurve ∧ R.steadyStateExistence

theorem renewable_resource_growth_closed_from_evidence
    (R : RenewableResourceGrowthPackage) (E : RenewableResourceGrowthEvidence R) :
    RenewableResourceGrowthClosed R := by
  exact And.intro E.growthFunctionClosed (And.intro E.sustainableYieldCurveClosed E.steadyStateExistenceClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse