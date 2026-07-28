import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralGateLemmas

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

def ConstrainedBehavioralSocialSciencesClosure (A : BehavioralAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_behavioral_social_sciences_endgame (A : BehavioralAdmissibleClass) :
    ConstrainedBehavioralSocialSciencesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse