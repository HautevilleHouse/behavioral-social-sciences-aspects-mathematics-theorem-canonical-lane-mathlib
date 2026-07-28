import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure UnanimityCondition {V : Type u} {A : Type v} (F : SocialWelfareFunction V A) where
  holds : ∀ (p : Profile V A) (x y : A), (∀ v, (p.preferences v).relation x y) → (F.rule p).relation x y

structure IndependenceIrrelevantAlternativesCondition {V : Type u} {A : Type v} (F : SocialWelfareFunction V A) where
  holds : ∀ (p q : Profile V A) (x y : A), (∀ v, (p.preferences v).relation x y ↔ (q.preferences v).relation x y) → ((F.rule p).relation x y ↔ (F.rule q).relation x y)

structure NonDictatorshipCondition {V : Type u} {A : Type v} (F : SocialWelfareFunction V A) where
  holds : ¬∃ (v : V), ∀ (p : Profile V A) (x y : A), (p.preferences v).relation x y → (F.rule p).relation x y

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse