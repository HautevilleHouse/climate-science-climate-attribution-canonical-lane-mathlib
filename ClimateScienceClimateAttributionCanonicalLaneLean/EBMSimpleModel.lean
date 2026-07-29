import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure EnergyBalanceModel (A : AdmissibleClass) where
  incomingSolarRadiation : ℕ → ℝ
  outgoingLongwaveRadiation : ℝ → ℝ
  albedo : ℝ
  heatCapacity : ℝ
  te : ℕ → ℝ

structure SimpleEBMEvidence (A : AdmissibleClass) (M : EnergyBalanceModel A) where
  energyBalanceClosed : ∀ t : ℕ, M.incomingSolarRadiation t = M.outgoingLongwaveRadiation (M.te t)
  albedoClosure : (1 - M.albedo) * M.incomingSolarRadiation 0 = M.outgoingLongwaveRadiation (M.te 0)

def SimpleEBMClosed (A : AdmissibleClass) (M : EnergyBalanceModel A) : Prop :=
  ∀ t : ℕ, M.incomingSolarRadiation t = M.outgoingLongwaveRadiation (M.te t)

theorem simple_ebm_closed_from_evidence (A : AdmissibleClass) (M : EnergyBalanceModel A)
    (E : SimpleEBMEvidence A M) : SimpleEBMClosed A M := by
  exact E.energyBalanceClosed

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse