import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralFoundation

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure LearningDynamicsPackage (A : AdmissibleClass) where
  stateSpace : Type u
  updateRule : stateSpace → stateSpace
  convergenceCondition : stateSpace → Prop
  convergenceProof : ∀ s, convergenceCondition (updateRule s)

structure LearningDynamicsEvidence {A : AdmissibleClass} (L : LearningDynamicsPackage A) where
  convergenceProofClosed : L.convergenceProof

def LearningDynamicsClosed {A : AdmissibleClass} (L : LearningDynamicsPackage A) : Prop :=
  L.convergenceProof

theorem learning_dynamics_closed_from_evidence
    {A : AdmissibleClass} (L : LearningDynamicsPackage A) (E : LearningDynamicsEvidence L) :
    LearningDynamicsClosed L := by
  exact E.convergenceProofClosed

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse