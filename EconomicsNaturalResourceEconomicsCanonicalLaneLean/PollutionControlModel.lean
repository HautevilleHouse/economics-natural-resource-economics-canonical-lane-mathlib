import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure PollutionControlModel where
  pollutionStock : ℝ
  emissionRate : ℝ
  naturalDecay : ℝ
  damageFunction : ℝ → ℝ
  abatementCost : ℝ → ℝ
  optimalControlCondition : Prop

structure PollutionControlEvidence (P : PollutionControlModel) where
  emissionDecayDifferential : P.pollutionStock > 0 → P.emissionRate - P.naturalDecay * P.pollutionStock < 0
  damageAbatementBalance : P.damageFunction P.pollutionStock + P.abatementCost P.emissionRate ≤ 0
  optimalControlClosed : P.optimalControlCondition

def PollutionControlClosed (P : PollutionControlModel) : Prop :=
  P.optimalControlCondition

theorem pollution_control_closed_from_evidence (P : PollutionControlModel) (E : PollutionControlEvidence P) :
  PollutionControlClosed P := by
  exact E.optimalControlClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse