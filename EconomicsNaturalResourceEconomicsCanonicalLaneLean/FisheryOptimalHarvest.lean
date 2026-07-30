import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure FisheryOptimalHarvestPackage where
  stockDynamics : Type u
  harvestCost : Type v
  fishPrice : Type w
  optimalHarvestPolicy : Prop
  stockRecoveryEnsured : Prop
  profitMaximized : Prop

structure FisheryOptimalHarvestEvidence (F : FisheryOptimalHarvestPackage) where
  optimalHarvestPolicyClosed : F.optimalHarvestPolicy
  stockRecoveryEnsuredClosed : F.stockRecoveryEnsured
  profitMaximizedClosed : F.profitMaximized

def FisheryOptimalHarvestClosed (F : FisheryOptimalHarvestPackage) : Prop :=
  F.optimalHarvestPolicy ∧ F.stockRecoveryEnsured ∧ F.profitMaximized

theorem fishery_optimal_harvest_closed_from_evidence (F : FisheryOptimalHarvestPackage) (E : FisheryOptimalHarvestEvidence F) : FisheryOptimalHarvestClosed F := by
  exact And.intro E.optimalHarvestPolicyClosed (And.intro E.stockRecoveryEnsuredClosed E.profitMaximizedClosed)

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse