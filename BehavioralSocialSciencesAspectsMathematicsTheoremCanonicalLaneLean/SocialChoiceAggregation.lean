import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralObjects

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure SocialChoiceAggregationPackage where
  voters : Type
  alternatives : Type
  preferenceProfiles : Type
  socialWelfareFunction : Type
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  dictatorshipCondition : Prop
  consistencyCondition : Prop

structure SocialChoiceAggregationEvidence (P : SocialChoiceAggregationPackage) where
  paretoEfficiencyClosed : P.paretoEfficiency
  independenceOfIrrelevantAlternativesClosed : P.independenceOfIrrelevantAlternatives
  dictatorshipConditionClosed : P.dictatorshipCondition
  consistencyConditionClosed : P.consistencyCondition

def SocialChoiceAggregationClosed (P : SocialChoiceAggregationPackage) : Prop :=
  P.paretoEfficiency ∧ P.independenceOfIrrelevantAlternatives ∧
  P.dictatorshipCondition ∧ P.consistencyCondition

theorem social_choice_aggregation_closed_from_evidence
    (P : SocialChoiceAggregationPackage) (E : SocialChoiceAggregationEvidence P) :
    SocialChoiceAggregationClosed P := by
  exact And.intro E.paretoEfficiencyClosed
    (And.intro E.independenceOfIrrelevantAlternativesClosed
      (And.intro E.dictatorshipConditionClosed E.consistencyConditionClosed))

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse