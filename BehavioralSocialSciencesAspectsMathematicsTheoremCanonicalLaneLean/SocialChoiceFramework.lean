import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure Voters where
  V : Type u
  finite : Fintype V

structure Alternatives where
  A : Type v
  cardAtLeastThree : Fintype.card A ≥ 3

structure Preference (X : Type w) where
  relation : X → X → Prop
  total : ∀ x y, relation x y ∨ relation y x
  transitive : ∀ x y z, relation x y → relation y z → relation x z
  antisymmetric : ∀ x y, relation x y → relation y x → x = y

structure Profile (V : Type u) (A : Type v) where
  preferences : V → Preference A

structure SocialWelfareFunction (V : Type u) (A : Type v) where
  rule : Profile V A → Preference A

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse