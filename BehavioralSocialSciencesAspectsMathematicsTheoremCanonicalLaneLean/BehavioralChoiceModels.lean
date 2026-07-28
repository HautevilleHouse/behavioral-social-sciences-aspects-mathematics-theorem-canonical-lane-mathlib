import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.SocialChoiceAggregation

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure BehavioralChoiceModelPackage (P : SocialChoiceAggregationPackage) where
  decisionFunction : Type
  boundedRationality : Prop
  framingEffects : Prop
  nudgeCompatibility : Prop
  welfareConsistency : Prop

structure BehavioralChoiceModelEvidence {P : SocialChoiceAggregationPackage}
    (M : BehavioralChoiceModelPackage P) where
  boundedRationalityClosed : M.boundedRationality
  framingEffectsClosed : M.framingEffects
  nudgeCompatibilityClosed : M.nudgeCompatibility
  welfareConsistencyClosed : M.welfareConsistency

def BehavioralChoiceModelClosed {P : SocialChoiceAggregationPackage}
    (M : BehavioralChoiceModelPackage P) : Prop :=
  M.boundedRationality ∧ M.framingEffects ∧
  M.nudgeCompatibility ∧ M.welfareConsistency

theorem behavioral_choice_model_closed_from_evidence
    {P : SocialChoiceAggregationPackage} (M : BehavioralChoiceModelPackage P)
    (E : BehavioralChoiceModelEvidence M) : BehavioralChoiceModelClosed M := by
  exact And.intro E.boundedRationalityClosed
    (And.intro E.framingEffectsClosed
      (And.intro E.nudgeCompatibilityClosed E.welfareConsistencyClosed))

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse