import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure EnergyBalanceModel where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  equilibriumTemperature : ℝ
  radiativeForcing : ℝ
  climateSensitivity : ℝ

structure EnergyBalanceEvidence (M : EnergyBalanceModel) where
  solarConstantPositive : M.solarConstant > 0
  albedoBetweenZeroOne : 0 ≤ M.albedo ∧ M.albedo ≤ 1
  emissivityBetweenZeroOne : 0 ≤ M.emissivity ∧ M.emissivity ≤ 1
  equilibriumTemperatureComputed : M.equilibriumTemperature = ((M.solarConstant * (1 - M.albedo)) / (4 * M.emissivity * 5.670374419e-8)) ^ (1/4)

structure EnergyBalanceClosed (M : EnergyBalanceModel) : Prop where
  solarConstantPositive : M.solarConstant > 0
  albedoBetweenZeroOne : 0 ≤ M.albedo ∧ M.albedo ≤ 1
  emissivityBetweenZeroOne : 0 ≤ M.emissivity ∧ M.emissivity ≤ 1
  equilibriumTemperatureComputed : M.equilibriumTemperature = ((M.solarConstant * (1 - M.albedo)) / (4 * M.emissivity * 5.670374419e-8)) ^ (1/4)

theorem energy_balance_closed_from_evidence (M : EnergyBalanceModel) (E : EnergyBalanceEvidence M) : EnergyBalanceClosed M := by
  refine {
    solarConstantPositive := E.solarConstantPositive
    albedoBetweenZeroOne := E.albedoBetweenZeroOne
    emissivityBetweenZeroOne := E.emissivityBetweenZeroOne
    equilibriumTemperatureComputed := E.equilibriumTemperatureComputed
  }

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse