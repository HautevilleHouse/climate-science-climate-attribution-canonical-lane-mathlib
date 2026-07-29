import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure DansgaardOeschgerEvent where
  onsetTime : ℝ
  duration : ℝ
  temperatureAnomaly : ℝ
  abruptWarming : Prop

structure DOEvidence (E : DansgaardOeschgerEvent) where
  onsetTimeNonnegative : E.onsetTime ≥ 0
  durationPositive : E.duration > 0
  temperatureAnomalyNonzero : E.temperatureAnomaly ≠ 0
  abruptWarmingTrue : E.abruptWarming

structure DOClosed (E : DansgaardOeschgerEvent) : Prop where
  onsetTimeNonnegative : E.onsetTime ≥ 0
  durationPositive : E.duration > 0
  temperatureAnomalyNonzero : E.temperatureAnomaly ≠ 0
  abruptWarmingTrue : E.abruptWarming

theorem do_closed_from_evidence (E : DansgaardOeschgerEvent) (Ev : DOEvidence E) : DOClosed E := by
  refine {
    onsetTimeNonnegative := Ev.onsetTimeNonnegative
    durationPositive := Ev.durationPositive
    temperatureAnomalyNonzero := Ev.temperatureAnomalyNonzero
    abruptWarmingTrue := Ev.abruptWarmingTrue
  }

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse