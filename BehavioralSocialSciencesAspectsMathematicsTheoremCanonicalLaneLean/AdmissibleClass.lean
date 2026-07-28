import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralObjects

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BehavioralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BehavioralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse