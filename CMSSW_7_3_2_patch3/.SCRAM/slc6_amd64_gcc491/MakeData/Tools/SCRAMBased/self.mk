ifeq ($(strip $(FireworksSimDataPlugins)),)
FireworksSimDataPlugins := self/src/Fireworks/SimData/plugins
FireworksSimDataPlugins_LOC_LIB   := Eve EG
FireworksSimDataPlugins_LOC_USE := self cmssw Fireworks/Core SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/CaloHit SimDataFormats/Vertex SimDataFormats/TrackingAnalysis
Fireworks/SimData_relbigobj+=FireworksSimDataPlugins
endif
ifeq ($(strip $(FireworksCandidatesPlugins)),)
FireworksCandidatesPlugins := self/src/Fireworks/Candidates/plugins
FireworksCandidatesPlugins_LOC_LIB   := Eve
FireworksCandidatesPlugins_LOC_USE := self cmssw DataFormats/Candidate Fireworks/Candidates Fireworks/Core
Fireworks/Candidates_relbigobj+=FireworksCandidatesPlugins
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, self cmssw ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
FWCoreVersion_CLASS := LIBRARY
FWCore/Version_relbigobj+=FWCoreVersion
endif
ifeq ($(strip $(Fireworks/Eve)),)
FireworksEve := self/Fireworks/Eve
Fireworks/Eve := FireworksEve
FireworksEve_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksEve_EX_USE := $(foreach d, self cmssw FWCore/PluginManager FWCore/Framework CondFormats/DataRecord CondFormats/RunInfo rootcore rootinteractive,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksEve_ROOTDICTS  := y 
FireworksEve_EX_LIB   := FireworksEve
ALL_EXTERNAL_PRODS += FireworksEve
FireworksEve_CLASS := LIBRARY
Fireworks/Eve_relbigobj+=FireworksEve
endif
ifeq ($(strip $(FireworksEveDummyEvelyserPlugin)),)
FireworksEveDummyEvelyserPlugin := self/src/Fireworks/Eve/plugins
FireworksEveDummyEvelyserPlugin_LOC_LIB   := Eve Geom
FireworksEveDummyEvelyserPlugin_LOC_USE := self cmssw FWCore/Framework DataFormats/TrackReco Fireworks/Geometry Fireworks/Eve Fireworks/Tracks
Fireworks/Eve_relbigobj+=FireworksEveDummyEvelyserPlugin
endif
ifeq ($(strip $(FireworksEveEveServicePlugin)),)
FireworksEveEveServicePlugin := self/src/Fireworks/Eve/plugins
FireworksEveEveServicePlugin_LOC_LIB   := Eve Geom
FireworksEveEveServicePlugin_LOC_USE := self cmssw Fireworks/Eve
Fireworks/Eve_relbigobj+=FireworksEveEveServicePlugin
endif
ifeq ($(strip $(DQMServices/Components)),)
DQMServicesComponents := self/DQMServices/Components
DQMServices/Components := DQMServicesComponents
DQMServicesComponents_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMServicesComponents_EX_USE := $(foreach d, self cmssw CondFormats/DataRecord CondFormats/RunInfo DataFormats/Scalers DataFormats/L1GlobalTrigger DQMServices/ClientConfig EventFilter/Utilities DQMServices/Core FWCore/Catalog FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Version HLTrigger/HLTcore roothistmatrix,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMServicesComponents_EX_LIB   := DQMServicesComponents
ALL_EXTERNAL_PRODS += DQMServicesComponents
DQMServicesComponents_CLASS := LIBRARY
DQMServices/Components_relbigobj+=DQMServicesComponents
endif
ifeq ($(strip $(FireworksElectronsPlugins)),)
FireworksElectronsPlugins := self/src/Fireworks/Electrons/plugins
FireworksElectronsPlugins_LOC_LIB   := Eve RGL
FireworksElectronsPlugins_LOC_USE := self cmssw DataFormats/EcalDetId DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/GsfTrackReco Fireworks/Calo Fireworks/Candidates Fireworks/Core Fireworks/Electrons Fireworks/Tracks rootinteractive rootphysics
Fireworks/Electrons_relbigobj+=FireworksElectronsPlugins
endif
ifeq ($(strip $(SimGeneralDataMixingModulePlugins)),)
SimGeneralDataMixingModulePlugins := self/src/SimGeneral/DataMixingModule/plugins
SimGeneralDataMixingModulePlugins_LOC_USE := self cmssw CalibFormats/HcalObjects CondFormats/EcalObjects CondFormats/SiStripObjects CalibTracker/Records CalibFormats/SiStripObjects DataFormats/CSCDigi DataFormats/Common DataFormats/DTDigi DataFormats/EcalDigi DataFormats/EcalRecHit DataFormats/HcalDigi DataFormats/HcalRecHit DataFormats/Provenance DataFormats/RPCDigi DataFormats/SiPixelDigi DataFormats/SiStripDigi DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities Mixing/Base SimTracker/SiStripDigitizer RecoLocalTracker/SiStripZeroSuppression SimCalorimetry/CaloSimAlgos SimCalorimetry/HcalSimAlgos SimCalorimetry/HcalSimProducers SimCalorimetry/EcalSimAlgos SimCalorimetry/EcalSimProducers SimDataFormats/PileupSummaryInfo SimDataFormats/CrossingFrame
SimGeneral/DataMixingModule_relbigobj+=SimGeneralDataMixingModulePlugins
endif
ifeq ($(strip $(RecoMuonMuonIdentificationPlugins)),)
RecoMuonMuonIdentificationPlugins := self/src/RecoMuon/MuonIdentification/plugins
RecoMuonMuonIdentificationPlugins_LOC_USE := self cmssw DataFormats/Common DataFormats/MuonDetId DataFormats/MuonReco DataFormats/RecoCandidate DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/CaloTopology PhysicsTools/IsolationAlgos RecoMuon/MuonIdentification RecoMuon/TrackingTools TrackingTools/Records TrackingTools/TrackAssociator TrackingTools/TransientTrackingRecHit boost_regex CommonTools/Utils DataFormats/ParticleFlowCandidate
RecoMuon/MuonIdentification_relbigobj+=RecoMuonMuonIdentificationPlugins
endif
ifeq ($(strip $(Fireworks/Muons)),)
FireworksMuons := self/Fireworks/Muons
Fireworks/Muons := FireworksMuons
FireworksMuons_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksMuons_EX_USE := $(foreach d, self cmssw DataFormats/MuonDetId DataFormats/MuonReco DataFormats/TrackReco Fireworks/Candidates Fireworks/Core Fireworks/Tracks,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksMuons_EX_LIB   := FireworksMuons
ALL_EXTERNAL_PRODS += FireworksMuons
FireworksMuons_CLASS := LIBRARY
Fireworks/Muons_relbigobj+=FireworksMuons
endif
ifeq ($(strip $(Fireworks/FWInterface)),)
FireworksFWInterface := self/Fireworks/FWInterface
Fireworks/FWInterface := FireworksFWInterface
FireworksFWInterface_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksFWInterface_EX_USE := $(foreach d, self cmssw FWCore/PluginManager FWCore/Framework DataFormats/Provenance DataFormats/TrackReco TrackingTools/TrajectoryState TrackingTools/PatternTools CondFormats/DataRecord CondFormats/RunInfo Fireworks/Core Fireworks/Geometry rootcore rootinteractive,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksFWInterface_ROOTDICTS  := y 
FireworksFWInterface_EX_LIB   := FireworksFWInterface
ALL_EXTERNAL_PRODS += FireworksFWInterface
FireworksFWInterface_CLASS := LIBRARY
Fireworks/FWInterface_relbigobj+=FireworksFWInterface
endif
ifeq ($(strip $(RecoMuon/MuonIdentification)),)
RecoMuonMuonIdentification := self/RecoMuon/MuonIdentification
RecoMuon/MuonIdentification := RecoMuonMuonIdentification
RecoMuonMuonIdentification_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonMuonIdentification_EX_USE := $(foreach d, self cmssw DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/Math DataFormats/TrajectoryState DataFormats/VertexReco FWCore/ServiceRegistry RecoMuon/Navigation RecoMuon/TransientTrackingRecHit RecoMuon/MuonIsolation RecoTracker/TkDetLayers RecoTracker/TkMSParametrization RecoTracker/TransientTrackingRecHit TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrackRefitter TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit Geometry/DTGeometry DataFormats/DetId DataFormats/MuonDetId DataFormats/MuonReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/CommonDetUnit Geometry/CSCGeometry Geometry/Records SimDataFormats/Track SimDataFormats/TrackingHit roothistmatrix RecoMuon/TrackingTools DataFormats/CSCRecHit RecoLocalCalo/HcalRecAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonMuonIdentification_EX_LIB   := RecoMuonMuonIdentification
ALL_EXTERNAL_PRODS += RecoMuonMuonIdentification
RecoMuonMuonIdentification_CLASS := LIBRARY
RecoMuon/MuonIdentification_relbigobj+=RecoMuonMuonIdentification
endif
ifeq ($(strip $(FireworksCaloPlugins)),)
FireworksCaloPlugins := self/src/Fireworks/Calo/plugins
FireworksCaloPlugins_LOC_LIB   := Eve RGL Geom
FireworksCaloPlugins_LOC_USE := self cmssw DataFormats/CaloRecHit DataFormats/CaloTowers DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/HcalRecHit DataFormats/JetReco DataFormats/L1Trigger DataFormats/METReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco Fireworks/Calo Fireworks/Core Fireworks/Tracks rootinteractive
Fireworks/Calo_relbigobj+=FireworksCaloPlugins
endif
ifeq ($(strip $(EventFilterCSCRawToDigiPlugins)),)
EventFilterCSCRawToDigiPlugins := self/src/EventFilter/CSCRawToDigi/plugins
EventFilterCSCRawToDigiPlugins_LOC_USE := self cmssw EventFilter/CSCRawToDigi
EventFilter/CSCRawToDigi_relbigobj+=EventFilterCSCRawToDigiPlugins
endif
ifeq ($(strip $(CalibMuonDTCalibrationPlugins)),)
CalibMuonDTCalibrationPlugins := self/src/CalibMuon/DTCalibration/plugins
CalibMuonDTCalibrationPlugins_LOC_LIB   := Spectrum
CalibMuonDTCalibrationPlugins_LOC_USE := self cmssw FWCore/Framework DataFormats/DTDigi DataFormats/DTRecHit Geometry/DTGeometry Geometry/Records Geometry/MuonNumbering CondFormats/DTObjects CondFormats/DataRecord CondCore/DBOutputService CommonTools/Utils CalibMuon/DTDigiSync CalibMuon/DTCalibration root rootmath rootcore roofit rootgraphics
CalibMuon/DTCalibration_relbigobj+=CalibMuonDTCalibrationPlugins
endif
ifeq ($(strip $(DQM/Integration)),)
DQMIntegration := self/DQM/Integration
DQM/Integration := DQMIntegration
DQMIntegration_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMIntegration_EX_USE := $(foreach d, self cmssw CoralBase DataFormats/Provenance FWCore/Catalog FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry RelationalAccess rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMIntegration_EX_LIB   := DQMIntegration
ALL_EXTERNAL_PRODS += DQMIntegration
DQMIntegration_CLASS := LIBRARY
DQM/Integration_relbigobj+=DQMIntegration
endif
ifeq ($(strip $(TrackPropagationSteppingHelixPropagatorPlugins)),)
TrackPropagationSteppingHelixPropagatorPlugins := self/src/TrackPropagation/SteppingHelixPropagator/plugins
TrackPropagationSteppingHelixPropagatorPlugins_LOC_USE := self cmssw TrackPropagation/SteppingHelixPropagator TrackingTools/GeomPropagators TrackingTools/Records FWCore/MessageLogger MagneticField/Engine MagneticField/VolumeBasedEngine MagneticField/VolumeGeometry MagneticField/Records FWCore/Framework FWCore/PluginManager FWCore/ParameterSet
TrackPropagation/SteppingHelixPropagator_relbigobj+=TrackPropagationSteppingHelixPropagatorPlugins
endif
ifeq ($(strip $(CommonTools/PileupAlgos)),)
CommonToolsPileupAlgos := self/CommonTools/PileupAlgos
CommonTools/PileupAlgos := CommonToolsPileupAlgos
CommonToolsPileupAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CommonToolsPileupAlgos_EX_USE := $(foreach d, self cmssw DataFormats/Common DataFormats/ParticleFlowCandidate FWCore/ParameterSet root rootrflx rootcore fastjet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsPileupAlgos_EX_LIB   := CommonToolsPileupAlgos
ALL_EXTERNAL_PRODS += CommonToolsPileupAlgos
CommonToolsPileupAlgos_CLASS := LIBRARY
CommonTools/PileupAlgos_relbigobj+=CommonToolsPileupAlgos
endif
ifeq ($(strip $(Fireworks/Geometry)),)
FireworksGeometry := self/Fireworks/Geometry
Fireworks/Geometry := FireworksGeometry
FireworksGeometry_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksGeometry_EX_USE := $(foreach d, self cmssw FWCore/PluginManager FWCore/Framework FWCore/MessageLogger Geometry/CommonDetUnit Geometry/MuonNumbering Geometry/EcalCommonData Geometry/CSCGeometryBuilder DetectorDescription/Core Geometry/CaloGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/RPCGeometry Geometry/GEMGeometry Geometry/TrackerGeometryBuilder Geometry/Records DataFormats/GeometrySurface DataFormats/MuonDetId DataFormats/SiStripDetId DataFormats/SiPixelDetId Fireworks/Core rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksGeometry_EX_LIB   := FireworksGeometry
ALL_EXTERNAL_PRODS += FireworksGeometry
FireworksGeometry_CLASS := LIBRARY
Fireworks/Geometry_relbigobj+=FireworksGeometry
endif
ifeq ($(strip $(DQMServicesComponentsPlugins)),)
DQMServicesComponentsPlugins := self/src/DQMServices/Components/plugins
DQMServicesComponentsPlugins_LOC_USE := self cmssw DQMServices/Core DQMServices/Components DataFormats/Histograms DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/Utilities FWCore/Version DataFormats/Luminosity boost
DQMServices/Components_relbigobj+=DQMServicesComponentsPlugins
endif
ifeq ($(strip $(Fireworks/Core)),)
FireworksCore := self/Fireworks/Core
Fireworks/Core := FireworksCore
FireworksCore_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksCore_EX_USE := $(foreach d, self cmssw CommonTools/Utils DataFormats/Candidate DataFormats/Common DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/FWLite DataFormats/L1GlobalTrigger DataFormats/Math DataFormats/MuonDetId DataFormats/SiPixelDetId DataFormats/Scalers DataFormats/TrackReco FWCore/Common FWCore/FWLite FWCore/PluginManager FWCore/Utilities Fireworks/TableWidget boost boost_program_options boost_regex boost_system opengl rootcintex rootinteractive rootgraphics sigcpp,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksCore_LCGDICTS  := x 
FireworksCore_ROOTDICTS  := y 
FireworksCore_EX_LIB   := FireworksCore
ALL_EXTERNAL_PRODS += FireworksCore
FireworksCore_CLASS := LIBRARY
Fireworks/Core_relbigobj+=FireworksCore
endif
ifeq ($(strip $(FireworksGeometryMFProducerPlugin)),)
FireworksGeometryMFProducerPlugin := self/src/Fireworks/Geometry/plugins
FireworksGeometryMFProducerPlugin_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet clhep MagneticField/Engine MagneticField/Records rootgpad
Fireworks/Geometry_relbigobj+=FireworksGeometryMFProducerPlugin
endif
ifeq ($(strip $(FireworksGeometryFWRecoGeometryESProducerPlugin)),)
FireworksGeometryFWRecoGeometryESProducerPlugin := self/src/Fireworks/Geometry/plugins
FireworksGeometryFWRecoGeometryESProducerPlugin_LOC_USE := self cmssw Fireworks/Geometry
Fireworks/Geometry_relbigobj+=FireworksGeometryFWRecoGeometryESProducerPlugin
endif
ifeq ($(strip $(FireworksGeometryDumpSimGeometryPlugin)),)
FireworksGeometryDumpSimGeometryPlugin := self/src/Fireworks/Geometry/plugins
FireworksGeometryDumpSimGeometryPlugin_LOC_LIB   := Geom
FireworksGeometryDumpSimGeometryPlugin_LOC_USE := self cmssw Fireworks/Geometry FWCore/Framework FWCore/PluginManager FWCore/ParameterSet
Fireworks/Geometry_relbigobj+=FireworksGeometryDumpSimGeometryPlugin
endif
ifeq ($(strip $(FireworksGeometryDumpFWRecoGeometryPlugin)),)
FireworksGeometryDumpFWRecoGeometryPlugin := self/src/Fireworks/Geometry/plugins
FireworksGeometryDumpFWRecoGeometryPlugin_LOC_LIB   := Eve Geom
FireworksGeometryDumpFWRecoGeometryPlugin_LOC_USE := self cmssw Fireworks/Geometry rootcore FWCore/Framework FWCore/PluginManager FWCore/ParameterSet Geometry/CaloGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/RPCGeometry Geometry/TrackerGeometryBuilder Geometry/Records
Fireworks/Geometry_relbigobj+=FireworksGeometryDumpFWRecoGeometryPlugin
endif
ifeq ($(strip $(FireworksGeometryPlugins)),)
FireworksGeometryPlugins := self/src/Fireworks/Geometry/plugins
FireworksGeometryPlugins_LOC_LIB   := Eve Geom
FireworksGeometryPlugins_LOC_USE := self cmssw Geometry/Records Fireworks/Geometry rootgpad
Fireworks/Geometry_relbigobj+=FireworksGeometryPlugins
endif
ifeq ($(strip $(FireworksGeometryDumpFWTGeoRecoGeometryPlugin)),)
FireworksGeometryDumpFWTGeoRecoGeometryPlugin := self/src/Fireworks/Geometry/plugins
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_LOC_LIB   := Eve Geom
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_LOC_USE := self cmssw Fireworks/Geometry rootcore FWCore/Framework FWCore/PluginManager FWCore/ParameterSet Geometry/CaloGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/RPCGeometry Geometry/TrackerGeometryBuilder Geometry/Records
Fireworks/Geometry_relbigobj+=FireworksGeometryDumpFWTGeoRecoGeometryPlugin
endif
ifeq ($(strip $(FireworksDisplayGeomPlugin)),)
FireworksDisplayGeomPlugin := self/src/Fireworks/Geometry/plugins
FireworksDisplayGeomPlugin_LOC_LIB   := Eve Geom Physics
FireworksDisplayGeomPlugin_LOC_USE := self cmssw FWCore/Framework Fireworks/Geometry Fireworks/Eve MagneticField/Engine MagneticField/Records
Fireworks/Geometry_relbigobj+=FireworksDisplayGeomPlugin
endif
ifeq ($(strip $(FireworksGeometryValidateGeometryPlugin)),)
FireworksGeometryValidateGeometryPlugin := self/src/Fireworks/Geometry/plugins
FireworksGeometryValidateGeometryPlugin_LOC_LIB   := Geom
FireworksGeometryValidateGeometryPlugin_LOC_USE := self cmssw FWCore/Framework Geometry/RPCGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/CaloGeometry Geometry/TrackerGeometryBuilder Geometry/Records Fireworks/Core Fireworks/Tracks rootcore
Fireworks/Geometry_relbigobj+=FireworksGeometryValidateGeometryPlugin
endif
ifeq ($(strip $(FireworksGeometryTGeoMgrFromDddPlugin)),)
FireworksGeometryTGeoMgrFromDddPlugin := self/src/Fireworks/Geometry/plugins
FireworksGeometryTGeoMgrFromDddPlugin_LOC_USE := self cmssw Fireworks/Geometry
Fireworks/Geometry_relbigobj+=FireworksGeometryTGeoMgrFromDddPlugin
endif
ifeq ($(strip $(FireworksGeometryFWTGeoRecoGeometryESProducerPlugin)),)
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin := self/src/Fireworks/Geometry/plugins
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin_LOC_USE := self cmssw Fireworks/Geometry
Fireworks/Geometry_relbigobj+=FireworksGeometryFWTGeoRecoGeometryESProducerPlugin
endif
ifeq ($(strip $(HLTriggerOffline/Exotica)),)
HLTriggerOfflineExotica := self/HLTriggerOffline/Exotica
HLTriggerOffline/Exotica := HLTriggerOfflineExotica
HLTriggerOfflineExotica_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
HLTriggerOfflineExotica_EX_USE := $(foreach d, self cmssw root FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities HLTrigger/HLTcore CommonTools/Utils DQMServices/Core DataFormats/MuonReco DataFormats/EgammaCandidates DataFormats/METReco DataFormats/TauReco DataFormats/TrackReco DataFormats/HepMCCandidate hepmc,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += HLTriggerOfflineExotica
HLTriggerOfflineExotica_CLASS := LIBRARY
HLTriggerOffline/Exotica_relbigobj+=HLTriggerOfflineExotica
endif
ifeq ($(strip $(Fireworks/Tracks)),)
FireworksTracks := self/Fireworks/Tracks
Fireworks/Tracks := FireworksTracks
FireworksTracks_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksTracks_EX_USE := $(foreach d, self cmssw DataFormats/CaloTowers DataFormats/EcalDetId DataFormats/GsfTrackReco DataFormats/HcalDetId DataFormats/MuonDetId DataFormats/SiPixelCluster DataFormats/SiPixelDetId DataFormats/SiStripCluster DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit Fireworks/Core rootmath rootphysics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksTracks_EX_LIB   := FireworksTracks
ALL_EXTERNAL_PRODS += FireworksTracks
FireworksTracks_CLASS := LIBRARY
Fireworks/Tracks_relbigobj+=FireworksTracks
endif
ifeq ($(strip $(FireworksMuonsPlugins)),)
FireworksMuonsPlugins := self/src/Fireworks/Muons/plugins
FireworksMuonsPlugins_LOC_LIB   := Eve Geom RGL
FireworksMuonsPlugins_LOC_USE := self cmssw DataFormats/CSCDigi DataFormats/CSCRecHit DataFormats/DTDigi DataFormats/RPCDigi DataFormats/GEMRecHit DataFormats/GEMDigi DataFormats/DTRecHit DataFormats/MuonDetId DataFormats/MuonReco DataFormats/RPCRecHit DataFormats/TrackReco Fireworks/Calo Fireworks/Candidates Fireworks/Core Fireworks/Muons rootinteractive rootrflx
Fireworks/Muons_relbigobj+=FireworksMuonsPlugins
endif
ifeq ($(strip $(FireworksVerticesPlugins)),)
FireworksVerticesPlugins := self/src/Fireworks/Vertices/plugins
FireworksVerticesPlugins_LOC_LIB   := Eve Geom
FireworksVerticesPlugins_LOC_USE := self cmssw DataFormats/BTauReco DataFormats/VertexReco Fireworks/Core Fireworks/Vertices Fireworks/Candidates roothistmatrix
Fireworks/Vertices_relbigobj+=FireworksVerticesPlugins
endif
ifeq ($(strip $(DQM/SiPixelMonitorClient)),)
DQMSiPixelMonitorClient := self/DQM/SiPixelMonitorClient
DQM/SiPixelMonitorClient := DQMSiPixelMonitorClient
DQMSiPixelMonitorClient_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiPixelMonitorClient_EX_USE := $(foreach d, self cmssw FWCore/MessageLogger FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CondFormats/RunInfo CondFormats/DataRecord CondFormats/SiPixelObjects Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder DQMServices/Core DQMServices/Components DQMServices/ClientConfig CommonTools/TrackerMap DQM/SiPixelCommon DQM/SiStripCommon DQM/TrackerCommon DataFormats/SiPixelCluster DataFormats/BeamSpot DataFormats/Common DataFormats/MuonReco DataFormats/MuonSeed DataFormats/RecoCandidate DataFormats/TrackReco DataFormats/TrajectorySeed MagneticField/Records MagneticField/Engine TrackingTools/TrajectoryState TrackingTools/Records RecoLocalTracker/ClusterParameterEstimator RecoLocalTracker/Records RecoTracker/TransientTrackingRecHit CalibTracker/Records rootcore boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += DQMSiPixelMonitorClient
DQMSiPixelMonitorClient_CLASS := LIBRARY
DQM/SiPixelMonitorClient_relbigobj+=DQMSiPixelMonitorClient
endif
ifeq ($(strip $(CalibMuon/DTCalibration)),)
CalibMuonDTCalibration := self/CalibMuon/DTCalibration
CalibMuon/DTCalibration := CalibMuonDTCalibration
CalibMuonDTCalibration_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibMuonDTCalibration_EX_USE := $(foreach d, self cmssw FWCore/Framework DataFormats/DTDigi DataFormats/DTRecHit DataFormats/CSCRecHit DataFormats/TrackReco Geometry/DTGeometry Geometry/Records CondFormats/DTObjects CondFormats/DataRecord CondCore/DBOutputService CalibMuon/DTDigiSync root rootmath rootcore roofit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibMuonDTCalibration_EX_LIB   := CalibMuonDTCalibration
ALL_EXTERNAL_PRODS += CalibMuonDTCalibration
CalibMuonDTCalibration_CLASS := LIBRARY
CalibMuon/DTCalibration_relbigobj+=CalibMuonDTCalibration
endif
ifeq ($(strip $(FireworksTracksPlugins)),)
FireworksTracksPlugins := self/src/Fireworks/Tracks/plugins
FireworksTracksPlugins_LOC_LIB   := Eve Geom RGL
FireworksTracksPlugins_LOC_USE := self cmssw DataFormats/BeamSpot DataFormats/Common DataFormats/DetId DataFormats/Scalers DataFormats/SiPixelCluster DataFormats/SiPixelDigi DataFormats/SiStripCluster DataFormats/SiStripDigi DataFormats/TrackReco DataFormats/TrackingRecHit DataFormats/GeometrySurface Fireworks/Core Fireworks/Tracks rootinteractive rootphysics rootrflx
Fireworks/Tracks_relbigobj+=FireworksTracksPlugins
endif
ifeq ($(strip $(Fireworks/Calo)),)
FireworksCalo := self/Fireworks/Calo
Fireworks/Calo := FireworksCalo
FireworksCalo_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksCalo_EX_USE := $(foreach d, self cmssw DataFormats/CaloRecHit DataFormats/CaloTowers DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/FWLite DataFormats/JetReco Fireworks/Core Fireworks/Tracks boost_system rootgpad rootphysics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksCalo_EX_LIB   := FireworksCalo
ALL_EXTERNAL_PRODS += FireworksCalo
FireworksCalo_CLASS := LIBRARY
Fireworks/Calo_relbigobj+=FireworksCalo
endif
ifeq ($(strip $(Fireworks/ParticleFlow)),)
FireworksParticleFlow := self/Fireworks/ParticleFlow
Fireworks/ParticleFlow := FireworksParticleFlow
FireworksParticleFlow_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksParticleFlow_EX_USE := $(foreach d, self cmssw DataFormats/ParticleFlowCandidate Fireworks/Core Fireworks/Candidates Fireworks/Tracks Fireworks/Calo,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksParticleFlow_EX_LIB   := FireworksParticleFlow
ALL_EXTERNAL_PRODS += FireworksParticleFlow
FireworksParticleFlow_CLASS := LIBRARY
Fireworks/ParticleFlow_relbigobj+=FireworksParticleFlow
endif
ifeq ($(strip $(EventFilter/Utilities)),)
EventFilterUtilities := self/EventFilter/Utilities
EventFilter/Utilities := EventFilterUtilities
EventFilterUtilities_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterUtilities_EX_USE := $(foreach d, self cmssw FWCore/MessageLogger FWCore/ServiceRegistry EventFilter/FEDInterface curl,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterUtilities_EX_LIB   := EventFilterUtilities
ALL_EXTERNAL_PRODS += EventFilterUtilities
EventFilterUtilities_CLASS := LIBRARY
EventFilter/Utilities_relbigobj+=EventFilterUtilities
endif
ifeq ($(strip $(FireworksGenParticlePlugins)),)
FireworksGenParticlePlugins := self/src/Fireworks/GenParticle/plugins
FireworksGenParticlePlugins_LOC_LIB   := EG Eve
FireworksGenParticlePlugins_LOC_USE := self cmssw DataFormats/HepMCCandidate Fireworks/Candidates Fireworks/Core rootcore
Fireworks/GenParticle_relbigobj+=FireworksGenParticlePlugins
endif
ifeq ($(strip $(FireworksFWInterfacePlugin)),)
FireworksFWInterfacePlugin := self/src/Fireworks/FWInterface/plugins
FireworksFWInterfacePlugin_LOC_LIB   := Geom Eve
FireworksFWInterfacePlugin_LOC_USE := self cmssw FWCore/PluginManager FWCore/Framework Fireworks/FWInterface CondFormats/DataRecord CondFormats/RunInfo SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/CaloHit SimDataFormats/Vertex SimDataFormats/TrackingAnalysis SimGeneral/TrackingAnalysis rootcore
Fireworks/FWInterface_relbigobj+=FireworksFWInterfacePlugin
endif
ifeq ($(strip $(TrackPropagation/SteppingHelixPropagator)),)
TrackPropagationSteppingHelixPropagator := self/TrackPropagation/SteppingHelixPropagator
TrackPropagation/SteppingHelixPropagator := TrackPropagationSteppingHelixPropagator
TrackPropagationSteppingHelixPropagator_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
TrackPropagationSteppingHelixPropagator_EX_USE := $(foreach d, self cmssw TrackingTools/GeomPropagators FWCore/MessageLogger MagneticField/Engine MagneticField/VolumeBasedEngine MagneticField/VolumeGeometry FWCore/Framework FWCore/PluginManager FWCore/ParameterSet TrackingTools/AnalyticalJacobians,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TrackPropagationSteppingHelixPropagator_EX_LIB   := TrackPropagationSteppingHelixPropagator
ALL_EXTERNAL_PRODS += TrackPropagationSteppingHelixPropagator
TrackPropagationSteppingHelixPropagator_CLASS := LIBRARY
TrackPropagation/SteppingHelixPropagator_relbigobj+=TrackPropagationSteppingHelixPropagator
endif
ifeq ($(strip $(Fireworks/Electrons)),)
FireworksElectrons := self/Fireworks/Electrons
Fireworks/Electrons := FireworksElectrons
FireworksElectrons_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksElectrons_EX_USE := $(foreach d, self cmssw DataFormats/EgammaReco Fireworks/Core rootcore,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksElectrons_EX_LIB   := FireworksElectrons
ALL_EXTERNAL_PRODS += FireworksElectrons
FireworksElectrons_CLASS := LIBRARY
Fireworks/Electrons_relbigobj+=FireworksElectrons
endif
ifeq ($(strip $(RecoLocalMuon/DTSegment)),)
RecoLocalMuonDTSegment := self/RecoLocalMuon/DTSegment
RecoLocalMuon/DTSegment := RecoLocalMuonDTSegment
RecoLocalMuonDTSegment_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalMuonDTSegment_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet Geometry/Records Geometry/DTGeometry DataFormats/DTRecHit RecoLocalMuon/DTRecHit clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalMuonDTSegment_EX_LIB   := RecoLocalMuonDTSegment
ALL_EXTERNAL_PRODS += RecoLocalMuonDTSegment
RecoLocalMuonDTSegment_CLASS := LIBRARY
RecoLocalMuon/DTSegment_relbigobj+=RecoLocalMuonDTSegment
endif
ifeq ($(strip $(RecoLocalMuonDTSegmentPlugins)),)
RecoLocalMuonDTSegmentPlugins := self/src/RecoLocalMuon/DTSegment/plugins
RecoLocalMuonDTSegmentPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet RecoLocalMuon/DTSegment clhep
RecoLocalMuon/DTSegment_relbigobj+=RecoLocalMuonDTSegmentPlugins
endif
ifeq ($(strip $(CommonToolsPileupAlgos_plugins)),)
CommonToolsPileupAlgos_plugins := self/src/CommonTools/PileupAlgos/plugins
CommonToolsPileupAlgos_plugins_LOC_USE := self cmssw DataFormats/ParticleFlowCandidate DataFormats/JetReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet JetMETCorrections/Objects CommonTools/Utils CommonTools/ParticleFlow CommonTools/PileupAlgos fastjet fastjet-contrib
CommonTools/PileupAlgos_relbigobj+=CommonToolsPileupAlgos_plugins
endif
ifeq ($(strip $(EventFilter/CSCRawToDigi)),)
EventFilterCSCRawToDigi := self/EventFilter/CSCRawToDigi
EventFilter/CSCRawToDigi := EventFilterCSCRawToDigi
EventFilterCSCRawToDigi_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterCSCRawToDigi_EX_USE := $(foreach d, self cmssw DataFormats/CSCDigi FWCore/Framework DataFormats/FEDRawData CondFormats/CSCObjects FWCore/MessageLogger FWCore/Utilities CondFormats/DataRecord DataFormats/L1CSCTrackFinder,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EventFilterCSCRawToDigi_EX_LIB   := EventFilterCSCRawToDigi
ALL_EXTERNAL_PRODS += EventFilterCSCRawToDigi
EventFilterCSCRawToDigi_CLASS := LIBRARY
EventFilter/CSCRawToDigi_relbigobj+=EventFilterCSCRawToDigi
endif
ifeq ($(strip $(FireworksParticleFlowPlugins)),)
FireworksParticleFlowPlugins := self/src/Fireworks/ParticleFlow/plugins
FireworksParticleFlowPlugins_LOC_LIB   := Eve RGL
FireworksParticleFlowPlugins_LOC_USE := self cmssw DataFormats/EcalRecHit DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco DataFormats/PatCandidates DataFormats/TrackReco Fireworks/ParticleFlow
Fireworks/ParticleFlow_relbigobj+=FireworksParticleFlowPlugins
endif
ifeq ($(strip $(DQM/SiPixelMonitorRawData)),)
DQMSiPixelMonitorRawData := self/DQM/SiPixelMonitorRawData
DQM/SiPixelMonitorRawData := DQMSiPixelMonitorRawData
DQMSiPixelMonitorRawData_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiPixelMonitorRawData_EX_USE := $(foreach d, self cmssw DataFormats/FEDRawData FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DQMServices/Core DQM/SiPixelCommon Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += DQMSiPixelMonitorRawData
DQMSiPixelMonitorRawData_CLASS := LIBRARY
DQM/SiPixelMonitorRawData_relbigobj+=DQMSiPixelMonitorRawData
endif
ifeq ($(strip $(Fireworks/Vertices)),)
FireworksVertices := self/Fireworks/Vertices
Fireworks/Vertices := FireworksVertices
FireworksVertices_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksVertices_EX_USE := $(foreach d, self cmssw DataFormats/VertexReco Fireworks/Core rootcore opengl,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksVertices_ROOTDICTS  := y 
FireworksVertices_EX_LIB   := FireworksVertices
ALL_EXTERNAL_PRODS += FireworksVertices
FireworksVertices_CLASS := LIBRARY
Fireworks/Vertices_relbigobj+=FireworksVertices
endif
ifeq ($(strip $(EventFilterUtilitiesPlugins)),)
EventFilterUtilitiesPlugins := self/src/EventFilter/Utilities/plugins
EventFilterUtilitiesPlugins_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ServiceRegistry FWCore/Framework FWCore/Sources FWCore/Utilities IOPool/Streamer EventFilter/Utilities DataFormats/FEDRawData root boost clhep
EventFilter/Utilities_relbigobj+=EventFilterUtilitiesPlugins
endif
ifeq ($(strip $(Utilities/ReleaseScripts)),)
src_Utilities_ReleaseScripts := self/Utilities/ReleaseScripts
Utilities/ReleaseScripts  := src_Utilities_ReleaseScripts
src_Utilities_ReleaseScripts_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Utilities_ReleaseScripts_EX_USE := $(foreach d, self cmssw,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_Utilities_ReleaseScripts
endif

ifeq ($(strip $(RecoMuon/CosmicMuonProducer)),)
RecoMuonCosmicMuonProducer := self/RecoMuon/CosmicMuonProducer
RecoMuon/CosmicMuonProducer := RecoMuonCosmicMuonProducer
RecoMuonCosmicMuonProducer_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMuonCosmicMuonProducer_EX_USE := $(foreach d, self cmssw DataFormats/CSCRecHit DataFormats/Common DataFormats/DTRecHit DataFormats/GeometryCommonDetAlgo DataFormats/GeometrySurface DataFormats/MuonDetId DataFormats/MuonReco DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/TrajectorySeed FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/CommonDetUnit RecoMuon/MeasurementDet RecoMuon/Navigation RecoMuon/TrackingTools RecoMuon/GlobalTrackingTools RecoMuon/TransientTrackingRecHit TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/KalmanUpdators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrackRefitter TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += RecoMuonCosmicMuonProducer
RecoMuonCosmicMuonProducer_CLASS := LIBRARY
RecoMuon/CosmicMuonProducer_relbigobj+=RecoMuonCosmicMuonProducer
endif
ifeq ($(strip $(DQM/SiPixelMonitorCluster)),)
DQMSiPixelMonitorCluster := self/DQM/SiPixelMonitorCluster
DQM/SiPixelMonitorCluster := DQMSiPixelMonitorCluster
DQMSiPixelMonitorCluster_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMSiPixelMonitorCluster_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DQMServices/Core DQM/SiPixelCommon Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += DQMSiPixelMonitorCluster
DQMSiPixelMonitorCluster_CLASS := LIBRARY
DQM/SiPixelMonitorCluster_relbigobj+=DQMSiPixelMonitorCluster
endif
ifeq ($(strip $(Fireworks/Candidates)),)
FireworksCandidates := self/Fireworks/Candidates
Fireworks/Candidates := FireworksCandidates
FireworksCandidates_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FireworksCandidates_EX_USE := $(foreach d, self cmssw DataFormats/Candidate DataFormats/PatCandidates boost_system Fireworks/Core Fireworks/Calo,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksCandidates_EX_LIB   := FireworksCandidates
ALL_EXTERNAL_PRODS += FireworksCandidates
FireworksCandidates_CLASS := LIBRARY
Fireworks/Candidates_relbigobj+=FireworksCandidates
endif
ifeq ($(strip $(DQMOffline/L1Trigger)),)
DQMOfflineL1Trigger := self/DQMOffline/L1Trigger
DQMOffline/L1Trigger := DQMOfflineL1Trigger
DQMOfflineL1Trigger_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineL1Trigger_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DQMServices/Core DQMServices/Components DQMServices/ClientConfig DataFormats/L1Trigger DataFormats/L1GlobalTrigger DataFormats/L1GlobalMuonTrigger DataFormats/RecoCandidate DataFormats/MuonReco DataFormats/EgammaReco DataFormats/TauReco DataFormats/METReco DataFormats/JetReco DataFormats/FEDRawData CondFormats/DataRecord CondFormats/L1TObjects L1Trigger/GlobalTriggerAnalyzer Geometry/TrackerGeometryBuilder TrackingTools/TransientTrack TrackingTools/TrajectoryState RecoMuon/TrackingTools HLTrigger/HLTcore DQM/L1TMonitor,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += DQMOfflineL1Trigger
DQMOfflineL1Trigger_CLASS := LIBRARY
DQMOffline/L1Trigger_relbigobj+=DQMOfflineL1Trigger
endif
ifeq ($(strip $(BeamMonitorBx)),)
BeamMonitorBx := self/src/DQM/BeamMonitor/plugins
BeamMonitorBx_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=BeamMonitorBx
endif
ifeq ($(strip $(AlcaBeamMonitor)),)
AlcaBeamMonitor := self/src/DQM/BeamMonitor/plugins
AlcaBeamMonitor_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=AlcaBeamMonitor
endif
ifeq ($(strip $(BeamSpotProblemMonitor)),)
BeamSpotProblemMonitor := self/src/DQM/BeamMonitor/plugins
BeamSpotProblemMonitor_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=BeamSpotProblemMonitor
endif
ifeq ($(strip $(AlcaBeamMonitorClient)),)
AlcaBeamMonitorClient := self/src/DQM/BeamMonitor/plugins
AlcaBeamMonitorClient_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=AlcaBeamMonitorClient
endif
ifeq ($(strip $(BeamConditionsMonitor)),)
BeamConditionsMonitor := self/src/DQM/BeamMonitor/plugins
BeamConditionsMonitor_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=BeamConditionsMonitor
endif
ifeq ($(strip $(PixelVTXMonitor)),)
PixelVTXMonitor := self/src/DQM/BeamMonitor/plugins
PixelVTXMonitor_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=PixelVTXMonitor
endif
ifeq ($(strip $(BeamMonitor)),)
BeamMonitor := self/src/DQM/BeamMonitor/plugins
BeamMonitor_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=BeamMonitor
endif
ifeq ($(strip $(Vx3DHLTAnalyzer)),)
Vx3DHLTAnalyzer := self/src/DQM/BeamMonitor/plugins
Vx3DHLTAnalyzer_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=Vx3DHLTAnalyzer
endif
ifeq ($(strip $(TKStatus)),)
TKStatus := self/src/DQM/BeamMonitor/plugins
TKStatus_LOC_USE := self cmssw DQMServices/Components DQMServices/Core DataFormats/TrackReco FWCore/Framework DataFormats/BeamSpot CondFormats/DataRecord CondFormats/BeamSpotObjects RecoVertex/BeamSpotProducer DataFormats/VertexReco DataFormats/TrackerRecHit2D TrackingTools/PatternTools
DQM/BeamMonitor_relbigobj+=TKStatus
endif
