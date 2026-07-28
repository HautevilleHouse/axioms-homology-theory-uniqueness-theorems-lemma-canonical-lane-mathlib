import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HomologyUniquenessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse