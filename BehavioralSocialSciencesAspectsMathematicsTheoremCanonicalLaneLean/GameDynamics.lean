import BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean.BehavioralChoiceModels

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure GameDynamicsPackage {P : SocialChoiceAggregationPackage}
    {M : BehavioralChoiceModelPackage P} where
  game : Type
  strategySpace : Type
  payoffFunction : Type
  replicatorDynamics : Prop
  nashEquilibrium : Prop
  evolutionaryStability : Prop

structure GameDynamicsEvidence {P : SocialChoiceAggregationPackage}
    {M : BehavioralChoiceModelPackage P} (G : GameDynamicsPackage M) where
  replicatorDynamicsClosed : G.replicatorDynamics
  nashEquilibriumClosed : G.nashEquilibrium
  evolutionaryStabilityClosed : G.evolutionaryStability

def GameDynamicsClosed {P : SocialChoiceAggregationPackage}
    {M : BehavioralChoiceModelPackage P} (G : GameDynamicsPackage M) : Prop :=
  G.replicatorDynamics ∧ G.nashEquilibrium ∧ G.evolutionaryStability

theorem game_dynamics_closed_from_evidence
    {P : SocialChoiceAggregationPackage} {M : BehavioralChoiceModelPackage P}
    (G : GameDynamicsPackage M) (E : GameDynamicsEvidence G) :
    GameDynamicsClosed G := by
  exact And.intro E.replicatorDynamicsClosed
    (And.intro E.nashEquilibriumClosed E.evolutionaryStabilityClosed)

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse