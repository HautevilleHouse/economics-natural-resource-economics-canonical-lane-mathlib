import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure ResourceTaxationModel where
  extractionRate : ℝ → ℝ
  resourcePrice : ℝ → ℝ
  taxRate : ℝ
  governmentRevenue : ℝ
  welfareFunction : ℝ
  optimalTaxCondition : Prop

def OptimalTaxClosed (T : ResourceTaxationModel) : Prop :=
  T.optimalTaxCondition

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse