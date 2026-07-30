import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure FaustmannModel where
  timberVolume : ℝ → ℝ
  rotationPeriod : ℝ
  stumpagePrice : ℝ
  plantingCost : ℝ
  discountRate : ℝ
  netPresentValue : ℝ
  optimalRotationCondition : Prop

def FaustmannOptimalRotationClosed (F : FaustmannModel) : Prop :=
  F.optimalRotationCondition

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse