import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.SocialWelfarePackage
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure EndpointClassificationPackage {P : RationalChoicePackage} {S : SocialWelfarePackage P} where
  socialChoiceObject : Type u
  socialChoiceTopology : TopologicalSpace socialChoiceObject
  aggregationExists : Prop
  socialWelfareFunction : socialChoiceObject → Prop
  endpointMatchesStatement : Prop

structure EndpointClassificationEvidence {P : RationalChoicePackage} {S : SocialWelfarePackage P} (E : EndpointClassificationPackage) where
  aggregationExistsClosed : E.aggregationExists
  endpointMatchesStatementClosed : E.endpointMatchesStatement

def EndpointClassificationClosed {P : RationalChoicePackage} {S : SocialWelfarePackage P} (E : EndpointClassificationPackage) : Prop :=
  E.aggregationExists ∧ E.endpointMatchesStatement

theorem endpoint_classification_closed_from_evidence {P : RationalChoicePackage} {S : SocialWelfarePackage P} (E : EndpointClassificationPackage) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.aggregationExistsClosed Ev.endpointMatchesStatementClosed

theorem endpoint_classification_supplies_statement {P : RationalChoicePackage} {S : SocialWelfarePackage P} (E : EndpointClassificationPackage) : E.socialWelfareFunction := 
  E.socialWelfareFunction

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse