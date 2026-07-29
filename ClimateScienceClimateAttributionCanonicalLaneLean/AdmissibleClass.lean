import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure ClimateAdmittedObject where
  climateSystem : Type
  temperatureField : Type
  forcingHistory : Type
  attributionClaim : Prop
  conclusion : attributionClaim

structure AdmissibleClass where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.attributionClaim

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse