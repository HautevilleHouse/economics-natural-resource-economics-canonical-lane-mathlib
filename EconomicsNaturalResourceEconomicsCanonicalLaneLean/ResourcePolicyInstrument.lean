import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourcePolicyInstrumentPackage where
  taxRate : Type u
  subsidyRate : Type v
  regulationBound : Type w
  policyEffectiveness : Prop
  welfareImpact : Prop

structure ResourcePolicyInstrumentEvidence (P : ResourcePolicyInstrumentPackage) where
  policyEffectivenessClosed : P.policyEffectiveness
  welfareImpactClosed : P.welfareImpact

def ResourcePolicyInstrumentClosed (P : ResourcePolicyInstrumentPackage) : Prop :=
  P.policyEffectiveness ∧ P.welfareImpact

theorem resource_policy_instrument_closed_from_evidence
    (P : ResourcePolicyInstrumentPackage) (E : ResourcePolicyInstrumentEvidence P) :
    ResourcePolicyInstrumentClosed P := by
  exact And.intro E.policyEffectivenessClosed E.welfareImpactClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse