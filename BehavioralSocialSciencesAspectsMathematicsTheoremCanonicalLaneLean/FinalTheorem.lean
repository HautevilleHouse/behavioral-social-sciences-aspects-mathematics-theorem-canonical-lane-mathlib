import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

def ConstrainedBehavioralClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_behavioral_endgame (A : AdmissibleClass) :
    ConstrainedBehavioralClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse