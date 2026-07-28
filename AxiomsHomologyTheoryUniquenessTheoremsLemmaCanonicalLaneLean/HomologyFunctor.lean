import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure HomologyFunctorPackage (A : AxiomPackage) where
  categoryDomain : Type u
  categoryCodomain : Type v
  functorAssignment : (X : Type u) → X → Type v
  naturalTransformation : Prop
  functoriality : Prop
  homotopyInvariant : Prop
  longExactSequence : Prop
  suspensionIsomorphism : Prop

def HomologyFunctorClosed (H : HomologyFunctorPackage A) : Prop :=
  H.naturalTransformation ∧ H.functoriality ∧ H.homotopyInvariant ∧
  H.longExactSequence ∧ H.suspensionIsomorphism

structure HomologyFunctorEvidence (H : HomologyFunctorPackage A) where
  naturalTransformationClosed : H.naturalTransformation
  functorialityClosed : H.functoriality
  homotopyInvariantClosed : H.homotopyInvariant
  longExactSequenceClosed : H.longExactSequence
  suspensionIsomorphismClosed : H.suspensionIsomorphism

theorem homology_functor_closed_from_evidence (H : HomologyFunctorPackage A) (E : HomologyFunctorEvidence H) : HomologyFunctorClosed H := by
  exact And.intro E.naturalTransformationClosed
    (And.intro E.functorialityClosed
      (And.intro E.homotopyInvariantClosed
        (And.intro E.longExactSequenceClosed E.suspensionIsomorphismClosed)))

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse