import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure IsotopicRatio where
  delta18O : ℝ
  deltaD : ℝ

structure PaleotemperatureModel where
  ratio18O : ℝ
  slope : ℝ
  intercept : ℝ
  temperature : ℝ

structure IsotopicEvidence (M : PaleotemperatureModel) where
  ratio18OPositive : M.ratio18O > 0
  slopeNonZero : M.slope ≠ 0
  temperatureComputed : M.temperature = M.intercept * M.ratio18O ^ M.slope

structure IsotopicClosed (M : PaleotemperatureModel) : Prop where
  ratio18OPositive : M.ratio18O > 0
  slopeNonZero : M.slope ≠ 0
  temperatureComputed : M.temperature = M.intercept * M.ratio18O ^ M.slope

theorem isotopic_closed_from_evidence (M : PaleotemperatureModel) (E : IsotopicEvidence M) : IsotopicClosed M := by
  refine {
    ratio18OPositive := E.ratio18OPositive
    slopeNonZero := E.slopeNonZero
    temperatureComputed := E.temperatureComputed
  }

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse