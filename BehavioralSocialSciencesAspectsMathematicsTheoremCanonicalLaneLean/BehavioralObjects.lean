import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BehavioralSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BehavioralAdmittedObject where
  space : BehavioralSpace
  completePreference : Prop
  transitive : Prop
  rationalChoice : Prop
  equilibriumOutput : Type
  equilibriumExists : Prop
  conclusion : equilibriumExists

structure BehavioralEndgameState where
  object : BehavioralAdmittedObject

def BehavioralWitnessClosed (O : BehavioralAdmittedObject) : Prop :=
  O.equilibriumExists

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse