import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralFoundation

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure BehavioralDecisionTheoryPackage (A : AdmissibleClass) where
  prospects : Type u
  utilityFunction : prospects → ℝ
  expectedUtility : prospects → ℝ
  rationalityUnderRisk : Prop
  rationalityUnderUncertainty : Prop

structure BehavioralDecisionTheoryEvidence {A : AdmissibleClass} (B : BehavioralDecisionTheoryPackage A) where
  rationalityUnderRiskClosed : B.rationalityUnderRisk
  rationalityUnderUncertaintyClosed : B.rationalityUnderUncertainty

def BehavioralDecisionTheoryClosed {A : AdmissibleClass} (B : BehavioralDecisionTheoryPackage A) : Prop :=
  B.rationalityUnderRisk ∧ B.rationalityUnderUncertainty

theorem behavioral_decision_theory_closed_from_evidence
    {A : AdmissibleClass} (B : BehavioralDecisionTheoryPackage A) (E : BehavioralDecisionTheoryEvidence B) :
    BehavioralDecisionTheoryClosed B := by
  exact And.intro E.rationalityUnderRiskClosed E.rationalityUnderUncertaintyClosed

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse