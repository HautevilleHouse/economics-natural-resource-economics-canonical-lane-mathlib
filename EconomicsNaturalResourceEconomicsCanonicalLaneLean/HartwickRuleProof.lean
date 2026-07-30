import canonicalLaneMathlib.AdmissibleClass
import EconomicsNaturalResourceEconomics.ResourceStockModel

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomics

structure HartwickProofPackage (R : ResourceStock) where
  capitalAccumulation : ℝ → ℝ
  resourceRent : ℝ → ℝ
  hartwickInvestmentRule : Prop
  constantConsumptionImplication : Prop

structure HartwickProofEvidence {R : ResourceStock} (H : HartwickProofPackage R) where
  hartwickInvestmentRuleClosed : H.hartwickInvestmentRule
  constantConsumptionImplicationClosed : H.constantConsumptionImplication

def HartwickProofClosed {R : ResourceStock} (H : HartwickProofPackage R) : Prop :=
  H.hartwickInvestmentRule ∧ H.constantConsumptionImplication

theorem hartwick_proof_closed_from_evidence {R : ResourceStock} (H : HartwickProofPackage R) (E : HartwickProofEvidence H) :
    HartwickProofClosed H := by
  exact And.intro E.hartwickInvestmentRuleClosed E.constantConsumptionImplicationClosed

end EconomicsNaturalResourceEconomics
end HautevilleHouse
