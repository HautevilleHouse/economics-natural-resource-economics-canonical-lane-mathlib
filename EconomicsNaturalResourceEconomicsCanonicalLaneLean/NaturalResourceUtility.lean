import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure NaturalResourceUtilityPackage where
  resourceType : Type u
  extractionCost : resourceType → ℝ
  consumerPreference : resourceType → ℝ
  intertemporalDiscount : ℝ
  sustainabilityConstraint : Prop
  optimalExtractionPath : Prop

structure NaturalResourceUtilityEvidence (P : NaturalResourceUtilityPackage) where
  extractionCostClosed : ∀ r : P.resourceType, P.extractionCost r ≥ 0
  consumerPreferenceClosed : ∀ r : P.resourceType, P.consumerPreference r ≥ 0
  intertemporalDiscountClosed : P.intertemporalDiscount > 0
  sustainabilityConstraintClosed : P.sustainabilityConstraint
  optimalExtractionPathClosed : P.optimalExtractionPath

def NaturalResourceUtilityClosed (P : NaturalResourceUtilityPackage) : Prop :=
  (∀ r : P.resourceType, P.extractionCost r ≥ 0) ∧
  (∀ r : P.resourceType, P.consumerPreference r ≥ 0) ∧
  (P.intertemporalDiscount > 0) ∧
  P.sustainabilityConstraint ∧
  P.optimalExtractionPath

theorem natural_resource_utility_closed_from_evidence
    (P : NaturalResourceUtilityPackage) (E : NaturalResourceUtilityEvidence P) :
    NaturalResourceUtilityClosed P := by
  exact And.intro E.extractionCostClosed
    (And.intro E.consumerPreferenceClosed
      (And.intro E.intertemporalDiscountClosed
        (And.intro E.sustainabilityConstraintClosed E.optimalExtractionPathClosed)))

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse