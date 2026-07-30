import canonicalLaneMathlib.AdmissibleClass
import EconomicsNaturalResourceEconomics.ResourceStockModel

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomics

structure ResourceMarketPackage (R : ResourceStock) where
  demandFunction : ℝ → ℝ
  supplyFunction : ℝ → ℝ
  equilibriumPrice : ℝ
  marketClearingCondition : Prop
  priceDynamicStability : Prop

structure ResourceMarketEvidence {R : ResourceStock} (M : ResourceMarketPackage R) where
  marketClearingConditionClosed : M.marketClearingCondition
  priceDynamicStabilityClosed : M.priceDynamicStability

def ResourceMarketClosed {R : ResourceStock} (M : ResourceMarketPackage R) : Prop :=
  M.marketClearingCondition ∧ M.priceDynamicStability

theorem resource_market_closed_from_evidence {R : ResourceStock} (M : ResourceMarketPackage R) (E : ResourceMarketEvidence M) :
    ResourceMarketClosed M := by
  exact And.intro E.marketClearingConditionClosed E.priceDynamicStabilityClosed

end EconomicsNaturalResourceEconomics
end HautevilleHouse
