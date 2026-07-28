import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure AxiomPackage where
  eilenbergSteenrodAxioms : Prop
  homotopyInvariance : Prop
  exactness : Prop
  excision : Prop
  dimension : Prop
  additivity : Prop

def AxiomPackageClosed (A : AxiomPackage) : Prop :=
  A.eilenbergSteenrodAxioms ∧ A.homotopyInvariance ∧ A.exactness ∧
  A.excision ∧ A.dimension ∧ A.additivity

structure AxiomEvidence (A : AxiomPackage) where
  eilenbergSteenrodAxiomsClosed : A.eilenbergSteenrodAxioms
  homotopyInvarianceClosed : A.homotopyInvariance
  exactnessClosed : A.exactness
  excisionClosed : A.excision
  dimensionClosed : A.dimension
  additivityClosed : A.additivity

theorem axiom_package_closed_from_evidence (A : AxiomPackage) (E : AxiomEvidence A) : AxiomPackageClosed A := by
  exact And.intro E.eilenbergSteenrodAxiomsClosed
    (And.intro E.homotopyInvarianceClosed
      (And.intro E.exactnessClosed
        (And.intro E.excisionClosed
          (And.intro E.dimensionClosed E.additivityClosed))))

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse