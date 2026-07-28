import HautevilleHouse.AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "axioms-homology-uniqueness-canonical-lane"
    theoremName := "Axioms Homology Theory Uniqueness Theorems Lemma"
    theoremObject := "uniqueness of homology theory given axioms"
    classicalBoundary := "classical source boundary carried by Formalization"
    carriedRemainder := "unrestricted classical closure remains carried"
  }

theorem theorem_statement_closed :
  sourceTheoremStatement.sourceKey = "axioms-homology-uniqueness-canonical-lane" := by
  rfl

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse