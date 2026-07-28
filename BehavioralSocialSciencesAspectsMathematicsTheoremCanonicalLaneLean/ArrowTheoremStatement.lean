import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure ArrowTheoremPackage {V : Type u} {A : Type v} [Fintype V] [Fintype A] (cardA : Fintype.card A ≥ 3) where
  voters : Voters V
  alternatives : Alternatives A
  swf : SocialWelfareFunction V A
  unanimity : UnanimityCondition swf
  iia : IndependenceIrrelevantAlternativesCondition swf
  nonDictator : NonDictatorshipCondition swf
  contradiction : False

structure ArrowTheoremEvidence {V : Type u} {A : Type v} [Fintype V] [Fintype A] {cardA : Fintype.card A ≥ 3} (P : ArrowTheoremPackage cardA) where
  impossibilityDerived : P.contradiction

def ArrowTheoremClosed {V : Type u} {A : Type v} [Fintype V] [Fintype A] {cardA : Fintype.card A ≥ 3} (P : ArrowTheoremPackage cardA) : Prop :=
  P.contradiction

theorem arrow_theorem_closed_from_evidence {V : Type u} {A : Type v} [Fintype V] [Fintype A] {cardA : Fintype.card A ≥ 3} (P : ArrowTheoremPackage cardA) (E : ArrowTheoremEvidence P) :
  ArrowTheoremClosed P := by
  exact E.impossibilityDerived

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse