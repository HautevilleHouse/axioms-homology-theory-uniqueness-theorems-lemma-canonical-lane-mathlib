import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure ExactnessLemmaPackage (H : HomologyFunctorPackage A) where
  mayerVietoris : Prop
  relativeSequence : Prop
  fiveLemma : Prop
  snakeLemma : Prop

def ExactnessLemmaClosed (E : ExactnessLemmaPackage H) : Prop :=
  E.mayerVietoris ∧ E.relativeSequence ∧ E.fiveLemma ∧ E.snakeLemma

structure ExactnessLemmaEvidence (E : ExactnessLemmaPackage H) where
  mayerVietorisClosed : E.mayerVietoris
  relativeSequenceClosed : E.relativeSequence
  fiveLemmaClosed : E.fiveLemma
  snakeLemmaClosed : E.snakeLemma

theorem exactness_lemma_closed_from_evidence (E : ExactnessLemmaPackage H) (Ev : ExactnessLemmaEvidence E) : ExactnessLemmaClosed E := by
  exact And.intro Ev.mayerVietorisClosed
    (And.intro Ev.relativeSequenceClosed
      (And.intro Ev.fiveLemmaClosed Ev.snakeLemmaClosed))

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse