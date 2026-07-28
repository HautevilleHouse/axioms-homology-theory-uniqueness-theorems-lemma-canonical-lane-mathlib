import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure HomologyUniquenessTheoremPackage where
  theoryOne : Type u
  theoryTwo : Type v
  axiomsOne : EilenbergSteenrodAxiomsPackage
  axiomsTwo : EilenbergSteenrodAxiomsPackage
  naturalIsomorphismExists : Prop

structure HomologyUniquenessTheoremEvidence
    (U : HomologyUniquenessTheoremPackage) where
  naturalIsomorphismExistsClosed : U.naturalIsomorphismExists

def HomologyUniquenessTheoremClosed (U : HomologyUniquenessTheoremPackage) : Prop :=
  U.naturalIsomorphismExists

theorem homology_uniqueness_theorem_closed_from_evidence
    (U : HomologyUniquenessTheoremPackage)
    (E : HomologyUniquenessTheoremEvidence U) :
    HomologyUniquenessTheoremClosed U := by
  exact E.naturalIsomorphismExistsClosed

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse