import AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure AcyclicModelsPackage {C : CategoryTheory.Category} {T : HomologyTheoryData C} (A : EilenbergSteenrodAxiomsPackage C T) where
  modelCategory : Type u
  modelFunctor : modelCategory ⥤ C
  acyclicityCondition : Prop
  naturalTransformationData : Prop
  comparisonLemma : Prop
  acyclicityConditionClosed : acyclicityCondition
  naturalTransformationDataClosed : naturalTransformationData
  comparisonLemmaClosed : comparisonLemma

structure AcyclicModelsEvidence {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage C T} (M : AcyclicModelsPackage A) where
  acyclicityConditionClosed : M.acyclicityCondition
  naturalTransformationDataClosed : M.naturalTransformationData
  comparisonLemmaClosed : M.comparisonLemma

def AcyclicModelsClosed {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage C T} (M : AcyclicModelsPackage A) : Prop :=
  M.acyclicityCondition ∧ M.naturalTransformationData ∧ M.comparisonLemma

theorem acyclic_models_closed_from_evidence {C : CategoryTheory.Category} {T : HomologyTheoryData C}
    {A : EilenbergSteenrodAxiomsPackage C T} (M : AcyclicModelsPackage A)
    (E : AcyclicModelsEvidence M) : AcyclicModelsClosed M :=
  And.intro E.acyclicityConditionClosed
    (And.intro E.naturalTransformationDataClosed E.comparisonLemmaClosed)

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse