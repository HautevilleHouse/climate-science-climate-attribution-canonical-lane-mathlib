import ClimateScienceClimateAttributionCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ClimateScienceClimateAttributionCanonicalLaneLean

structure ClimateObservedRecord where
  proxyData : Type
  isotopicRatio : Type
  boreholeTemperature : Type
  circulationIndex : Type
  milankovitchParameters : Type
  greenhousesForcing : Type
deriving Repr

structure ClimateEnergyBalanceModel where
  toaImbalance : Prop
  radiativeForcing : Prop
  feedbackParameter : Prop
deriving Repr

structure ClimateProxysetEvidence where
  iceCoreStratigraphy : Prop
  sedimentLayerCounts : Prop
  coralGrowthBand : Prop
  treeRingWidth : Prop
deriving Repr

structure ClimateAttributionResult where
  observedChange : Prop
  forcedResponse : Prop
  internalVariability : Prop
  detectionAttributionStatement : Prop
deriving Repr

structure ClimateAdmittedObject where
  record : ClimateObservedRecord
  energyBalance : ClimateEnergyBalanceModel
  proxyEvidence : ClimateProxysetEvidence
  attribution : ClimateAttributionResult
  witnessClosed : Prop
  conclusion : witnessClosed

structure ClimateEndgameState where
  object : ClimateAdmittedObject

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.witnessClosed

end ClimateScienceClimateAttributionCanonicalLaneLean
end HautevilleHouse