import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure GeneralEquilibriumResourcePackage where
  commoditySpace : Type u
  initialEndowment : commoditySpace → ℝ
  preferenceRelation : commoditySpace → commoditySpace → Prop
  resourceExtractionSector : commoditySpace → ℝ
  equilibriumPrice : commoditySpace → ℝ
  efficiencyCondition : Prop

structure GeneralEquilibriumResourceEvidence
    (G : GeneralEquilibriumResourcePackage) where
  endowmentNonnegative : ∀ c : G.commoditySpace, G.initialEndowment c ≥ 0
  preferenceComplete : ∀ a b : G.commoditySpace, G.preferenceRelation a b ∨ G.preferenceRelation b a
  extractionNonnegative : ∀ c : G.commoditySpace, G.resourceExtractionSector c ≥ 0
  priceNonnegative : ∀ c : G.commoditySpace, G.equilibriumPrice c ≥ 0
  efficiencyConditionClosed : G.efficiencyCondition

def GeneralEquilibriumResourceClosed
    (G : GeneralEquilibriumResourcePackage) : Prop :=
  (∀ c : G.commoditySpace, G.initialEndowment c ≥ 0) ∧
  (∀ a b : G.commoditySpace, G.preferenceRelation a b ∨ G.preferenceRelation b a) ∧
  (∀ c : G.commoditySpace, G.resourceExtractionSector c ≥ 0) ∧
  (∀ c : G.commoditySpace, G.equilibriumPrice c ≥ 0) ∧
  G.efficiencyCondition

theorem general_equilibrium_resource_closed_from_evidence
    (G : GeneralEquilibriumResourcePackage)
    (E : GeneralEquilibriumResourceEvidence G) :
    GeneralEquilibriumResourceClosed G := by
  exact And.intro E.endowmentNonnegative
    (And.intro E.preferenceComplete
      (And.intro E.extractionNonnegative
        (And.intro E.priceNonnegative E.efficiencyConditionClosed)))

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse