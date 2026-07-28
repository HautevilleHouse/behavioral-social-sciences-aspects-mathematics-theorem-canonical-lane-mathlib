import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure BehavioralModel where
  carrier : Type
  rationalityCondition : Prop
  socialPlannerObjective : Prop
  equilibriumProperty : Prop
  conclusion : equilibriumProperty

structure BehavioralAdmissibleClass where
  object : BehavioralModel
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : BehavioralAdmissibleClass) : Prop :=
  A.object.equilibriumProperty ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse