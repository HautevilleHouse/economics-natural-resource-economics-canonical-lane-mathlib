import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceStockPackage where
  biomassDynamics : Type u
  growthFunction : Type v
  harvestRate : Type w
  carryingCapacity : Prop
  growthFunctionLogistic : Prop
  harvestRateSustained : Prop

structure ResourceStockEvidence (R : ResourceStockPackage) where
  carryingCapacityClosed : R.carryingCapacity
  growthFunctionLogisticClosed : R.growthFunctionLogistic
  harvestRateSustainedClosed : R.harvestRateSustained

def ResourceStockClosed (R : ResourceStockPackage) : Prop :=
  R.carryingCapacity ∧ R.growthFunctionLogistic ∧ R.harvestRateSustained

theorem resource_stock_closed_from_evidence (R : ResourceStockPackage) (E : ResourceStockEvidence R) : ResourceStockClosed R := by
  exact And.intro E.carryingCapacityClosed (And.intro E.growthFunctionLogisticClosed E.harvestRateSustainedClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse