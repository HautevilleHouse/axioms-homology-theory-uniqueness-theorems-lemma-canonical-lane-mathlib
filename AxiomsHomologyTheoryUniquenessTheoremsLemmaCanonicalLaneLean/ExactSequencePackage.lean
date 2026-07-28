import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure ExactSequencePackage where
  terms : ℕ → Type u
  maps : ∀ n, terms n → terms (n+1)
  exactAt : ∀ n, Prop
  shortExactSequence : Prop

def ExactSequencePackageClosed (E : ExactSequencePackage) : Prop :=
  (∀ n, E.exactAt n) ∧ E.shortExactSequence

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse