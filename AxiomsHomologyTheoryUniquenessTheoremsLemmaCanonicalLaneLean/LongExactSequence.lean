import AxiomsHomologyTheoryUniquenessTheoremsLemma.HomologyAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemma

structure LongExactSequencePackage (A : HomologyAxiomsPackage) where
  pair : Type
  subspace : Type
  homologyPair : ℕ → Type
  connectingMorphism : ℕ → (homologyPair 0 → homologyPair 1)
  exactnessAtAll : Prop
  naturality : Prop

structure LongExactSequenceEvidence {A : HomologyAxiomsPackage}
    (L : LongExactSequencePackage A) where
  exactnessAtAllClosed : L.exactnessAtAll
  naturalityClosed : L.naturality

def LongExactSequenceClosed {A : HomologyAxiomsPackage}
    (L : LongExactSequencePackage A) : Prop :=
  L.exactnessAtAll ∧ L.naturality

theorem long_exact_sequence_closed_from_evidence
    {A : HomologyAxiomsPackage} (L : LongExactSequencePackage A)
    (E : LongExactSequenceEvidence L) : LongExactSequenceClosed L := by
  exact And.intro E.exactnessAtAllClosed E.naturalityClosed

end AxiomsHomologyTheoryUniquenessTheoremsLemma
end HautevilleHouse
