import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure ChainComplex where
  objects : ℕ → Type u
  differentials : (n : ℕ) → (objects (n+1) → objects n)
  chainComplexCondition : (n : ℕ) → differentials n ∘ differentials (n+1) = 0

structure ExactSequence where
  complexes : ChainComplex
  exactnessAt : (n : ℕ) → Prop
  exactnessAtAll : (n : ℕ) → exactnessAt n

structure ExactSequenceEvidence (E : ExactSequence) where
  exactnessAtAllClosed : E.exactnessAtAll

def ExactSequenceClosed (E : ExactSequence) : Prop :=
  E.exactnessAtAll

theorem exact_sequence_closed_from_evidence
    (E : ExactSequence) (Ev : ExactSequenceEvidence E) :
    ExactSequenceClosed E := by
  exact Ev.exactnessAtAllClosed

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse