import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralBridgeLemmas

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

def gateClosed (A : BehavioralAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BehavioralAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse