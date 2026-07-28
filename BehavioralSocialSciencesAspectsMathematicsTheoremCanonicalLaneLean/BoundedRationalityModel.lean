import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure BoundedRationality where
  cognitiveResources : Prop
  heuristicDecision : Prop
  satisficingCriterion : Prop
  cognitiveResourcesTerm : cognitiveResources
  heuristicDecisionTerm : heuristicDecision
  satisficingCriterionTerm : satisficingCriterion

structure BoundedRationalityEvidence (B : BoundedRationality) where
  cognitiveResourcesClosed : B.cognitiveResources
  heuristicDecisionClosed : B.heuristicDecision
  satisficingCriterionClosed : B.satisficingCriterion

def BoundedRationalityClosed (B : BoundedRationality) : Prop :=
  B.cognitiveResources ∧ B.heuristicDecision ∧ B.satisficingCriterion

theorem bounded_rationality_closed_from_evidence (B : BoundedRationality)
    (E : BoundedRationalityEvidence B) : BoundedRationalityClosed B := by
  exact And.intro E.cognitiveResourcesClosed
    (And.intro E.heuristicDecisionClosed E.satisficingCriterionClosed)

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse