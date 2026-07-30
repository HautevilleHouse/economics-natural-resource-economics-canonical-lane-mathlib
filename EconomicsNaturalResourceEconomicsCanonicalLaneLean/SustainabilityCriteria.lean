import canonicalLaneMathlib.AdmissibleClass
import EconomicsNaturalResourceEconomics.ResourceStockModel

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomics

structure SustainabilityPackage (R : ResourceStock) where
  hartwickRule : Prop
  constantConsumptionPossible : Prop
  intergenerationalEquity : Prop
  sustainabilityCondition : Prop

structure SustainabilityEvidence {R : ResourceStock} (S : SustainabilityPackage R) where
  hartwickRuleClosed : S.hartwickRule
  constantConsumptionPossibleClosed : S.constantConsumptionPossible
  intergenerationalEquityClosed : S.intergenerationalEquity
  sustainabilityConditionClosed : S.sustainabilityCondition

def SustainabilityClosed {R : ResourceStock} (S : SustainabilityPackage R) : Prop :=
  S.hartwickRule ∧ S.constantConsumptionPossible ∧ S.intergenerationalEquity ∧ S.sustainabilityCondition

theorem sustainability_closed_from_evidence {R : ResourceStock} (S : SustainabilityPackage R) (E : SustainabilityEvidence S) :
    SustainabilityClosed S := by
  exact And.intro E.hartwickRuleClosed (And.intro E.constantConsumptionPossibleClosed (And.intro E.intergenerationalEquityClosed E.sustainabilityConditionClosed))

end EconomicsNaturalResourceEconomics
end HautevilleHouse
