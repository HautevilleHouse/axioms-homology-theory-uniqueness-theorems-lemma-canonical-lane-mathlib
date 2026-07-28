import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean

structure UniquenessTheoremPackage (E : ExactnessLemmaPackage H) where
  uniquenessStatement : Prop
  comparisonMap : Prop
  isomorphismOnCWComplexes : Prop
  naturality : Prop

def UniquenessTheoremClosed (U : UniquenessTheoremPackage E) : Prop :=
  U.uniquenessStatement ∧ U.comparisonMap ∧ U.isomorphismOnCWComplexes ∧ U.naturality

structure UniquenessTheoremEvidence (U : UniquenessTheoremPackage E) where
  uniquenessStatementClosed : U.uniquenessStatement
  comparisonMapClosed : U.comparisonMap
  isomorphismOnCWComplexesClosed : U.isomorphismOnCWComplexes
  naturalityClosed : U.naturality

theorem uniqueness_theorem_closed_from_evidence (U : UniquenessTheoremPackage E) (Ev : UniquenessTheoremEvidence U) : UniquenessTheoremClosed U := by
  exact And.intro Ev.uniquenessStatementClosed
    (And.intro Ev.comparisonMapClosed
      (And.intro Ev.isomorphismOnCWComplexesClosed Ev.naturalityClosed))

end AxiomsHomologyTheoryUniquenessTheoremsLemmaCanonicalLaneLean
end HautevilleHouse