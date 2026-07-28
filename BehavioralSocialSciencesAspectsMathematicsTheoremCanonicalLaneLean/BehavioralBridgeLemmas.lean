import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralAdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

def bridgeClosed (A : BehavioralAdmissibleClass) : Prop :=
  A.object.equilibriumProperty

theorem bridge_from_admissible_class (A : BehavioralAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse