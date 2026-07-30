import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceExtractionModel where
  resourceStock : Type u
  extractionRate : Type v
  costFunction : Type w
  priceFunction : Type x
  objectiveFunctional : Type y
  terminalCondition : Prop
  initialStock : resourceStock
  discountRate : ℝ

def ResourceExtractionOptimalControlClosed (M : ResourceExtractionModel) : Prop :=
  M.terminalCondition

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse