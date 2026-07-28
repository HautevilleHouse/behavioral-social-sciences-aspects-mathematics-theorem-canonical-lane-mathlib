import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralFoundation

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure GameEquilibriumPackage (A : AdmissibleClass) where
  players : Nat
  strategySpaces : Nat → Type u
  payoffFunctions : (Π i, strategySpaces i) → ℝ
  nashEquilibrium : (Π i, strategySpaces i) → Prop
  existenceProof : ∃ s, nashEquilibrium s

structure GameEquilibriumEvidence {A : AdmissibleClass} (G : GameEquilibriumPackage A) where
  existenceProofClosed : G.existenceProof

def GameEquilibriumClosed {A : AdmissibleClass} (G : GameEquilibriumPackage A) : Prop :=
  G.existenceProof

theorem game_equilibrium_closed_from_evidence
    {A : AdmissibleClass} (G : GameEquilibriumPackage A) (E : GameEquilibriumEvidence G) :
    GameEquilibriumClosed G := by
  exact E.existenceProofClosed

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse