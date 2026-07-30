import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure FisherRenewableResourcePackage where
  biomassGrowthRate : ℝ
  carryingCapacity : ℝ
  harvestRate : ℝ
  maximumSustainableYield : Prop
  stockStability : Prop

structure FisherRenewableResourceEvidence
    (F : FisherRenewableResourcePackage) where
  growthRatePositive : F.biomassGrowthRate > 0
  carryingCapacityPositive : F.carryingCapacity > 0
  harvestRateNonnegative : F.harvestRate ≥ 0
  maximumSustainableYieldClosed : F.maximumSustainableYield
  stockStabilityClosed : F.stockStability

def FisherRenewableResourceClosed (F : FisherRenewableResourcePackage) : Prop :=
  F.biomassGrowthRate > 0 ∧ F.carryingCapacity > 0 ∧ F.harvestRate ≥ 0 ∧
  F.maximumSustainableYield ∧ F.stockStability

theorem fisher_renewable_resource_closed_from_evidence
    (F : FisherRenewableResourcePackage)
    (E : FisherRenewableResourceEvidence F) :
    FisherRenewableResourceClosed F := by
  exact And.intro E.growthRatePositive
    (And.intro E.carryingCapacityPositive
      (And.intro E.harvestRateNonnegative
        (And.intro E.maximumSustainableYieldClosed E.stockStabilityClosed)))

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse