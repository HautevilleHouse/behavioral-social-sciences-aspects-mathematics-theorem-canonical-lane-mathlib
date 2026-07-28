import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralObjects

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure RationalChoicePackage where
  preferenceDomain : Type u
  choiceFunction : Type v
  rationalityAxioms : Prop
  weakAxiomRevealedPreference : Prop
  houthakkerAxiom : Prop
  preferenceMaximization : Prop

structure RationalChoiceEvidence (P : RationalChoicePackage) where
  rationalityAxiomsClosed : P.rationalityAxioms
  weakAxiomRevealedPreferenceClosed : P.weakAxiomRevealedPreference
  houthakkerAxiomClosed : P.houthakkerAxiom
  preferenceMaximizationClosed : P.preferenceMaximization

def RationalChoiceClosed (P : RationalChoicePackage) : Prop :=
  P.rationalityAxioms ∧ P.weakAxiomRevealedPreference ∧ P.houthakkerAxiom ∧ P.preferenceMaximization

theorem rational_choice_closed_from_evidence (P : RationalChoicePackage) (E : RationalChoiceEvidence P) :
    RationalChoiceClosed P := by
  exact And.intro E.rationalityAxiomsClosed
    (And.intro E.weakAxiomRevealedPreferenceClosed
      (And.intro E.houthakkerAxiomClosed E.preferenceMaximizationClosed))

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse