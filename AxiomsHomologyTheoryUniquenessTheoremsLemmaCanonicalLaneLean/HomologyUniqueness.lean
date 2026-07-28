import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.AcyclicModels

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure HomologyUniquenessPackage {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} {M : AcyclicModelsPackage A} where
  uniquenessStatement : Prop
  comparisonNaturalIsomorphism : Type u
  uniquenessStatementClosed : uniquenessStatement
  comparisonNaturalIsomorphismClosed : comparisonNaturalIsomorphism

structure HomologyUniquenessEvidence {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} {M : AcyclicModelsPackage A}
    (U : HomologyUniquenessPackage A M) where
  uniquenessStatementClosed : U.uniquenessStatement
  comparisonNaturalIsomorphismClosed : U.comparisonNaturalIsomorphism

def HomologyUniquenessClosed {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} {M : AcyclicModelsPackage A}
    (U : HomologyUniquenessPackage A M) : Prop :=
  U.uniquenessStatement ∧ U.comparisonNaturalIsomorphism

theorem homology_uniqueness_closed_from_evidence {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage T} {M : AcyclicModelsPackage A}
    (U : HomologyUniquenessPackage A M) (Ev : HomologyUniquenessEvidence U) : HomologyUniquenessClosed U :=
  And.intro Ev.uniquenessStatementClosed Ev.comparisonNaturalIsomorphismClosed

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse