import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure AggregationRulePackage {V : Type u} {A : Type v} (F : SocialWelfareFunction V A) where
  unanimityRespected : Prop
  independenceIrrelevant : Prop
  nonDictatorship : Prop

structure AggregationRuleEvidence {V : Type u} {A : Type v} {F : SocialWelfareFunction V A} (P : AggregationRulePackage F) where
  unanimityRespectedClosed : P.unanimityRespected
  independenceIrrelevantClosed : P.independenceIrrelevant
  nonDictatorshipClosed : P.nonDictatorship

def AggregationRuleClosed {V : Type u} {A : Type v} {F : SocialWelfareFunction V A} (P : AggregationRulePackage F) : Prop :=
  P.unanimityRespected ∧ P.independenceIrrelevant ∧ P.nonDictatorship

theorem aggregation_rule_closed_from_evidence {V : Type u} {A : Type v} {F : SocialWelfareFunction V A} (P : AggregationRulePackage F) (E : AggregationRuleEvidence P) :
    AggregationRuleClosed P := by
  exact And.intro E.unanimityRespectedClosed (And.intro E.independenceIrrelevantClosed E.nonDictatorshipClosed)

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse