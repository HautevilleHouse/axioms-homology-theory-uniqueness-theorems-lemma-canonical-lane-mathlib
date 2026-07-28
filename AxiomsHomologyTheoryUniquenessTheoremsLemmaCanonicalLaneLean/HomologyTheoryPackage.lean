import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure HomologyTheoryPackage where
  sourceCategory : Type u
  targetCategory : Type v
  chainComplexConstruction : Type w
  homologyFunctor : Type x
  satisfiesExactness : Prop
  satisfiesDimension : Prop
  satisfiesAdditivity : Prop
  satisfiesHomotopy : Prop

def HomologyTheoryPackageClosed (H : HomologyTheoryPackage) : Prop :=
  H.satisfiesExactness ∧ H.satisfiesDimension ∧ H.satisfiesAdditivity ∧ H.satisfiesHomotopy

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse