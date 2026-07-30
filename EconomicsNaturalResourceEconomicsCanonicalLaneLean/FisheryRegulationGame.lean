import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure FisheryRegulationGame where
  playerSet : Type
  strategyProfile : Type
  payoffFunction : strategyProfile → ℝ
  regulationPolicy : Type
  regulationImpact : regulationPolicy → strategyProfile → ℝ

structure RegulationEquilibrium where
  nashEquilibriumUnderRegulation : Prop
  regulationLeadsToEfficiency : Prop
  stablePolicyOutcome : Prop

def fisheryRegulationClosed (G : FisheryRegulationGame) (E : RegulationEquilibrium) : Prop :=
  E.nashEquilibriumUnderRegulation ∧ E.regulationLeadsToEfficiency ∧ E.stablePolicyOutcome

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse