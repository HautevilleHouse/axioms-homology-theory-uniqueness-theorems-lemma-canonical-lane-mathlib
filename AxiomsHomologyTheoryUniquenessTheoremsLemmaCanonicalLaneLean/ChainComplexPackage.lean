import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure ChainComplexPackage where
  objects : ℕ → Type u
  differentials : ∀ n, objects n → objects (n+1)
  differentialSquared : ∀ n, differentials (n+1) ∘ differentials n = 0
  exactnessAt : ∀ n, Prop
  chainMaps : Type v

def ChainComplexPackageClosed (C : ChainComplexPackage) : Prop :=
  (∀ n, C.differentialSquared n) ∧ (∀ n, C.exactnessAt n)

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse