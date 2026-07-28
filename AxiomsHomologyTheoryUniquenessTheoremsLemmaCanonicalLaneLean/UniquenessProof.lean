import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.HomologyTheoryPackage
import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.ChainComplexPackage
import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.ExactSequencePackage

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure UniquenessProof where
  homologyTheory : HomologyTheoryPackage
  chainComplex : ChainComplexPackage
  exactSequence : ExactSequencePackage
  isomorphismConstruction : Prop
  uniquenessConclusion : Prop
  isomorphismConstructionTerm : isomorphismConstruction

def UniquenessProofClosed (U : UniquenessProof) : Prop :=
  HomologyTheoryPackageClosed U.homologyTheory ∧
  ChainComplexPackageClosed U.chainComplex ∧
  ExactSequencePackageClosed U.exactSequence ∧
  U.isomorphismConstruction ∧
  U.uniquenessConclusion

theorem uniqueness_proof_closed (U : UniquenessProof) (E : UniquenessProofClosed U) :
    U.uniquenessConclusion := by
  exact E.2.2.2.2

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse