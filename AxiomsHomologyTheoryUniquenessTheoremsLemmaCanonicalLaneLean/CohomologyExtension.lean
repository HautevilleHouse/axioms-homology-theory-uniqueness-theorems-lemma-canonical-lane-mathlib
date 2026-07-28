import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure CohomologyExtensionPackage (U : UniquenessTheoremPackage E) where
  cohomologyRingStructure : Prop
  cupProduct : Prop
  kunnethFormula : Prop
  universalCoefficientTheorem : Prop

def CohomologyExtensionClosed (C : CohomologyExtensionPackage U) : Prop :=
  C.cohomologyRingStructure ∧ C.cupProduct ∧ C.kunnethFormula ∧ C.universalCoefficientTheorem

structure CohomologyExtensionEvidence (C : CohomologyExtensionPackage U) where
  cohomologyRingStructureClosed : C.cohomologyRingStructure
  cupProductClosed : C.cupProduct
  kunnethFormulaClosed : C.kunnethFormula
  universalCoefficientTheoremClosed : C.universalCoefficientTheorem

theorem cohomology_extension_closed_from_evidence (C : CohomologyExtensionPackage U) (Ev : CohomologyExtensionEvidence C) : CohomologyExtensionClosed C := by
  exact And.intro Ev.cohomologyRingStructureClosed
    (And.intro Ev.cupProductClosed
      (And.intro Ev.kunnethFormulaClosed Ev.universalCoefficientTheoremClosed))

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse