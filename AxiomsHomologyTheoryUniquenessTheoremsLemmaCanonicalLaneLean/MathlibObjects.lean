import CanonicalLaneMathlib

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsLemma

open HautevilleHouse.CanonicalLaneMathlib

structure HomologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HomologyAdmittedObject where
  space : HomologySpace
  homologyGroups : ℕ → Type
  satisfiesAxioms : Prop
  uniqueUpToIso : Prop
  conclusion : uniqueUpToIso

structure HomologyEndgameState where
  object : HomologyAdmittedObject

def HomologyWitnessClosed (O : HomologyAdmittedObject) : Prop :=
  O.uniqueUpToIso

end AxiomsHomologyTheoryUniquenessTheoremsLemma
end HautevilleHouse
