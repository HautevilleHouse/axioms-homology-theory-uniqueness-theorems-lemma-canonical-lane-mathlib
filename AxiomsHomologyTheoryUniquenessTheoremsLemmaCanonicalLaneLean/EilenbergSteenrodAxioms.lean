import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure EilenbergSteenrodAxiomsPackage where
  exactness : Prop
  homotopyInvariance : Prop
  excision : Prop
  dimension : Prop

structure EilenbergSteenrodAxiomsEvidence (P : EilenbergSteenrodAxiomsPackage) where
  exactnessClosed : P.exactness
  homotopyInvarianceClosed : P.homotopyInvariance
  excisionClosed : P.excision
  dimensionClosed : P.dimension

def EilenbergSteenrodAxiomsClosed (P : EilenbergSteenrodAxiomsPackage) : Prop :=
  P.exactness ∧ P.homotopyInvariance ∧ P.excision ∧ P.dimension

theorem eilenberg_steenrod_axioms_closed_from_evidence
    (P : EilenbergSteenrodAxiomsPackage) (E : EilenbergSteenrodAxiomsEvidence P) :
    EilenbergSteenrodAxiomsClosed P := by
  exact And.intro E.exactnessClosed
    (And.intro E.homotopyInvarianceClosed
      (And.intro E.excisionClosed E.dimensionClosed))

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse