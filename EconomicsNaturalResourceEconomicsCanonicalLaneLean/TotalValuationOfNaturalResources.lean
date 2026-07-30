import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

structure TotalValuationOfNaturalResources where
  resourceAsset : ℝ
  resourcePrice : ℝ → ℝ
  extractionCost : ℝ → ℝ
  discountRate : ℝ
  totalValue : ℝ
  valuationCondition : Prop

structure ValuationEvidence (V : TotalValuationOfNaturalResources) where
  presentValueFormula : V.totalValue = ∫ t in Set.Ici 0, (V.resourcePrice t - V.extractionCost t) * Real.exp (-V.discountRate * t)
  nonnegativeValue : V.totalValue ≥ 0
  valuationClosed : V.valuationCondition

def ValuationClosed (V : TotalValuationOfNaturalResources) : Prop :=
  V.valuationCondition

theorem valuation_closed_from_evidence (V : TotalValuationOfNaturalResources) (E : ValuationEvidence V) :
  ValuationClosed V := by
  exact E.valuationClosed

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse