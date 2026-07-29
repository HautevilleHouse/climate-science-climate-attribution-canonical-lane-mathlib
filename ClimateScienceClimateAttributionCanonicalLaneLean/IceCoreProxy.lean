import ClimateScienceClimateAttributionCanonicalLaneLean.IsotopeGeochemistry

/-!
# Ice Core Proxy Package
-/

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure IceCoreProxyPackage {I : IsotopeGeochemistryPackage} where
  delta18O : Prop
  deltaD : Prop
  deuteriumExcess : Prop
  accumulationRate : Prop
  gasTrappingDepth : Prop

structure IceCoreProxyEvidence {I : IsotopeGeochemistryPackage}
    (P : IceCoreProxyPackage I) where
  delta18OClosed : P.delta18O
  deltaDClosed : P.deltaD
  deuteriumExcessClosed : P.deuteriumExcess
  accumulationRateClosed : P.accumulationRate
  gasTrappingDepthClosed : P.gasTrappingDepth

def IceCoreProxyClosed {I : IsotopeGeochemistryPackage}
    (P : IceCoreProxyPackage I) : Prop :=
  P.delta18O ∧ P.deltaD ∧ P.deuteriumExcess ∧
  P.accumulationRate ∧ P.gasTrappingDepth

theorem ice_core_proxy_closed_from_evidence
    {I : IsotopeGeochemistryPackage} (P : IceCoreProxyPackage I)
    (Ev : IceCoreProxyEvidence P) : IceCoreProxyClosed P := by
  exact And.intro Ev.delta18OClosed
    (And.intro Ev.deltaDClosed
      (And.intro Ev.deuteriumExcessClosed
        (And.intro Ev.accumulationRateClosed Ev.gasTrappingDepthClosed)))

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse