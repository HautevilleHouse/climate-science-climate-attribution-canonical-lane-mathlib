import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure MilankovitchParameters where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ

structure MilankovitchEvidence (P : MilankovitchParameters) where
  eccentricityNonnegative : P.eccentricity ≥ 0
  obliquityBetween22_24_5 : 22.1 ≤ P.obliquity ∧ P.obliquity ≤ 24.5
  precessionInRadians : P.precession ∈ Set.Icc (-π) π

structure MilankovitchClosed (P : MilankovitchParameters) : Prop where
  eccentricityNonnegative : P.eccentricity ≥ 0
  obliquityBetween22_24_5 : 22.1 ≤ P.obliquity ∧ P.obliquity ≤ 24.5
  precessionInRadians : P.precession ∈ Set.Icc (-π) π

theorem milankovitch_closed_from_evidence (P : MilankovitchParameters) (E : MilankovitchEvidence P) : MilankovitchClosed P := by
  refine {
    eccentricityNonnegative := E.eccentricityNonnegative
    obliquityBetween22_24_5 := E.obliquityBetween22_24_5
    precessionInRadians := E.precessionInRadians
  }

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse