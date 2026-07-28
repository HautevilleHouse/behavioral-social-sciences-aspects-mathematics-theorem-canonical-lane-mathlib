import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean

structure BehavioralDecisionModel where
  choiceSet : Type u
  preferenceRelation : choiceSet → choiceSet → Prop
  rationalityAxioms : Prop
  completeness : completeness
  transitivity : transitivity

structure BehavioralAdmittedObject where
  model : BehavioralDecisionModel
  rationalityWitness : model.rationalityAxioms

end BehavioralSocialSciencesAspectsMathematicsTheoremCanonicalLaneLean
end HautevilleHouse