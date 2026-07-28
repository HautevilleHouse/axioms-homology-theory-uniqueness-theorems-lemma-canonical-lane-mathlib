import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure EilenbergSteenrodAxioms where
  dimensionAxiom : Prop
  homotopyAxiom : Prop
  excisionAxiom : Prop
  additivityAxiom : Prop
  exactnessAxiom : Prop

structure HomologyAxiomsPackage where
  axioms : EilenbergSteenrodAxioms
  categoryCW : Bool
  dimensionAxiomClosed : axioms.dimensionAxiom
  homotopyAxiomClosed : axioms.homotopyAxiom
  excisionAxiomClosed : axioms.excisionAxiom
  additivityAxiomClosed : axioms.additivityAxiom
  exactnessAxiomClosed : axioms.exactnessAxiom

structure HomologyAxiomsEvidence (P : HomologyAxiomsPackage) where
  dimensionAxiomClosed : P.axioms.dimensionAxiom
  homotopyAxiomClosed : P.axioms.homotopyAxiom
  excisionAxiomClosed : P.axioms.excisionAxiom
  additivityAxiomClosed : P.axioms.additivityAxiom
  exactnessAxiomClosed : P.axioms.exactnessAxiom

def HomologyAxiomsClosed (P : HomologyAxiomsPackage) : Prop :=
  P.axioms.dimensionAxiom ∧ P.axioms.homotopyAxiom ∧ P.axioms.excisionAxiom ∧
  P.axioms.additivityAxiom ∧ P.axioms.exactnessAxiom

theorem homology_axioms_closed_from_evidence
    (P : HomologyAxiomsPackage) (E : HomologyAxiomsEvidence P) :
    HomologyAxiomsClosed P := by
  exact And.intro E.dimensionAxiomClosed
    (And.intro E.homotopyAxiomClosed
      (And.intro E.excisionAxiomClosed
        (And.intro E.additivityAxiomClosed E.exactnessAxiomClosed)))

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse