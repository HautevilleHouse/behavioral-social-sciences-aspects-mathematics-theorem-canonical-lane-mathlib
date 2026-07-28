import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.RationalChoicePackage

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure SocialWelfarePackage (P : RationalChoicePackage) where
  socialWelfareFunctional : Type u
  paretoPrinciple : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop
  transitiveSocialPreferences : Prop

structure SocialWelfareEvidence {P : RationalChoicePackage} (S : SocialWelfarePackage P) where
  paretoPrincipleClosed : S.paretoPrinciple
  independenceOfIrrelevantAlternativesClosed : S.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : S.nonDictatorship
  transitiveSocialPreferencesClosed : S.transitiveSocialPreferences

def SocialWelfareClosed {P : RationalChoicePackage} (S : SocialWelfarePackage P) : Prop :=
  S.paretoPrinciple ∧ S.independenceOfIrrelevantAlternatives ∧ S.nonDictatorship ∧ S.transitiveSocialPreferences

theorem social_welfare_closed_from_evidence {P : RationalChoicePackage} (S : SocialWelfarePackage P) (E : SocialWelfareEvidence S) :
    SocialWelfareClosed S := by
  exact And.intro E.paretoPrincipleClosed
    (And.intro E.independenceOfIrrelevantAlternativesClosed
      (And.intro E.nonDictatorshipClosed E.transitiveSocialPreferencesClosed))

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse