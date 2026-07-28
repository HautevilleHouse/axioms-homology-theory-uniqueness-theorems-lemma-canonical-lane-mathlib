import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure ExcisionPackage {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    (A : EilenbergSteenrodAxiomsPackage T) where
  excisivePairs : Type u
  excisionIsomorphism : Prop
  closureUnderUnion : Prop
  strongExcision : Prop
  excisivePairsClosed : excisivePairs
  excisionIsomorphismClosed : excisionIsomorphism
  closureUnderUnionClosed : closureUnderUnion
  strongExcisionClosed : strongExcision

structure ExcisionEvidence {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} (E : ExcisionPackage A) where
  excisivePairsClosed : E.excisivePairs
  excisionIsomorphismClosed : E.excisionIsomorphism
  closureUnderUnionClosed : E.closureUnderUnion
  strongExcisionClosed : E.strongExcision

def ExcisionClosed {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} (E : ExcisionPackage A) : Prop :=
  E.excisivePairs ∧ E.excisionIsomorphism ∧ E.closureUnderUnion ∧ E.strongExcision

theorem excision_closed_from_evidence {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} (E : ExcisionPackage A)
    (Ev : ExcisionEvidence E) : ExcisionClosed E :=
  And.intro Ev.excisivePairsClosed
    (And.intro Ev.excisionIsomorphismClosed
      (And.intro Ev.closureUnderUnionClosed Ev.strongExcisionClosed))

structure MayerVietorisPackage {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} (Exc : ExcisionPackage A) where
  longExactSequence : Prop
  connectingMap : Type u
  naturality : Prop
  longExactSequenceClosed : longExactSequence
  connectingMapClosed : connectingMap
  naturalityClosed : naturality

structure MayerVietorisEvidence {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} {Exc : ExcisionPackage A}
    (M : MayerVietorisPackage Exc) where
  longExactSequenceClosed : M.longExactSequence
  connectingMapClosed : M.connectingMap
  naturalityClosed : M.naturality

def MayerVietorisClosed {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} {Exc : ExcisionPackage A}
    (M : MayerVietorisPackage Exc) : Prop :=
  M.longExactSequence ∧ M.connectingMap ∧ M.naturality

theorem mayer_vietoris_closed_from_evidence {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} {Exc : ExcisionPackage A}
    (M : MayerVietorisPackage Exc) (Ev : MayerVietorisEvidence M) : MayerVietorisClosed M :=
  And.intro Ev.longExactSequenceClosed
    (And.intro Ev.connectingMapClosed Ev.naturalityClosed)

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse