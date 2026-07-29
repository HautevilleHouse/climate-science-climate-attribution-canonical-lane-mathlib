import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure AttributionFramework where
  observations : Type u
  simulations : Type v
  fingerprint : Type w
  detectionStatistic : ℝ
  anthropogenicForcingDetected : Prop
  naturalForcingDetected : Prop
  modelUncertaintyQuantified : Prop
  residualConsistent : Prop

structure AttributionFrameworkEvidence (A : AttributionFramework) where
  anthropogenicForcingDetectedClosed : A.anthropogenicForcingDetected
  naturalForcingDetectedClosed : A.naturalForcingDetected
  modelUncertaintyQuantifiedClosed : A.modelUncertaintyQuantified
  residualConsistentClosed : A.residualConsistent

def AttributionFrameworkClosed (A : AttributionFramework) : Prop :=
  A.anthropogenicForcingDetected ∧ A.naturalForcingDetected ∧
  A.modelUncertaintyQuantified ∧ A.residualConsistent

theorem attribution_framework_closed_from_evidence (A : AttributionFramework)
    (Ev : AttributionFrameworkEvidence A) : AttributionFrameworkClosed A :=
  And.intro Ev.anthropogenicForcingDetectedClosed
    (And.intro Ev.naturalForcingDetectedClosed
      (And.intro Ev.modelUncertaintyQuantifiedClosed Ev.residualConsistentClosed))

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse