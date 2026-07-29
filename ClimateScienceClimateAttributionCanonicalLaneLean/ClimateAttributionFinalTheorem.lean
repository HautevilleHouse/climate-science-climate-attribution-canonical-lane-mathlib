import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

def ConstrainedClimateAttributionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_attribution_endgame (A : AdmissibleClass) :
    ConstrainedClimateAttributionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse