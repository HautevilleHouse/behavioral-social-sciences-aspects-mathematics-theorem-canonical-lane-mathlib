import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure PreferenceAxiomPackage where
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  independence : Prop
  completenessEvidence : completeness
  transitivityEvidence : transitivity
  continuityEvidence : continuity
  independenceEvidence : independence

structure UtilityRepresentation where
  utilityFunc : agentType → ℝ
  representationTheorem : Prop
  representationTheoremTerm : representationTheorem

structure DecisionTheoryEvidence (P : PreferenceAxiomPackage) where
  completenessClosed : P.completeness
  transitivityClosed : P.transitivity
  continuityClosed : P.continuity
  independenceClosed : P.independence

def PreferenceAxiomClosed (P : PreferenceAxiomPackage) : Prop :=
  P.completeness ∧ P.transitivity ∧ P.continuity ∧ P.independence

theorem preference_axiom_closed_from_evidence (P : PreferenceAxiomPackage)
    (E : DecisionTheoryEvidence P) : PreferenceAxiomClosed P := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed E.independenceClosed))

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse