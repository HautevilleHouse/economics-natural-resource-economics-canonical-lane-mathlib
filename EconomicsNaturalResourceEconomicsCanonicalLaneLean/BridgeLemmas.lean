import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace EconomicsNaturalResourceEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NaturalResourceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsNaturalResourceEconomicsCanonicalLaneLean
end HautevilleHouse