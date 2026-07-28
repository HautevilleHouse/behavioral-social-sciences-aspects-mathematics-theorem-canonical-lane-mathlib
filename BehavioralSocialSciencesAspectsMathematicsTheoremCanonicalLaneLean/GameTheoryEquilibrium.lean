import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure Game where
  players : Type
  strategies : players → Type
  payoffs : (p : players) → strategies p → ℝ
  nashEquilibrium : Prop
  nashExistence : Prop
  nashExistenceTerm : nashExistence

structure EquilibriumEvidence (G : Game) where
  nashEquilibriumClosed : G.nashEquilibrium
  nashExistenceClosed : G.nashExistence

def EquilibriumClosed (G : Game) : Prop :=
  G.nashEquilibrium ∧ G.nashExistence

theorem equilibrium_closed_from_evidence (G : Game) (E : EquilibriumEvidence G) :
    EquilibriumClosed G := by
  exact And.intro E.nashEquilibriumClosed E.nashExistenceClosed

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse