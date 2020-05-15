ifeq ($(strip $(Photon_AnalyzerPhotonAnalyzerAuto)),)
Photon_AnalyzerPhotonAnalyzerAuto := self/src/Photon_Analyzer/PhotonAnalyzer/plugins
PLUGINS:=yes
Photon_AnalyzerPhotonAnalyzerAuto_files := $(patsubst src/Photon_Analyzer/PhotonAnalyzer/plugins/%,%,$(wildcard $(foreach dir,src/Photon_Analyzer/PhotonAnalyzer/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
Photon_AnalyzerPhotonAnalyzerAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/Photon_Analyzer/PhotonAnalyzer/plugins/BuildFile
Photon_AnalyzerPhotonAnalyzerAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet RecoEcal/EgammaCoreTools EgammaAnalysis/ElectronTools RecoEgamma/PhotonIdentification
Photon_AnalyzerPhotonAnalyzerAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,Photon_AnalyzerPhotonAnalyzerAuto,Photon_AnalyzerPhotonAnalyzerAuto,$(SCRAMSTORENAME_LIB),src/Photon_Analyzer/PhotonAnalyzer/plugins))
Photon_AnalyzerPhotonAnalyzerAuto_PACKAGE := self/src/Photon_Analyzer/PhotonAnalyzer/plugins
ALL_PRODS += Photon_AnalyzerPhotonAnalyzerAuto
Photon_Analyzer/PhotonAnalyzer_forbigobj+=Photon_AnalyzerPhotonAnalyzerAuto
Photon_AnalyzerPhotonAnalyzerAuto_INIT_FUNC        += $$(eval $$(call Library,Photon_AnalyzerPhotonAnalyzerAuto,src/Photon_Analyzer/PhotonAnalyzer/plugins,src_Photon_Analyzer_PhotonAnalyzer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
Photon_AnalyzerPhotonAnalyzerAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,Photon_AnalyzerPhotonAnalyzerAuto,src/Photon_Analyzer/PhotonAnalyzer/plugins))
endif
ALL_COMMONRULES += src_Photon_Analyzer_PhotonAnalyzer_plugins
src_Photon_Analyzer_PhotonAnalyzer_plugins_parent := Photon_Analyzer/PhotonAnalyzer
src_Photon_Analyzer_PhotonAnalyzer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Photon_Analyzer_PhotonAnalyzer_plugins,src/Photon_Analyzer/PhotonAnalyzer/plugins,PLUGINS))
ifeq ($(strip $(RecoEgammaEgammaToolsPlugins)),)
RecoEgammaEgammaToolsPlugins := self/src/RecoEgamma/EgammaTools/plugins
PLUGINS:=yes
RecoEgammaEgammaToolsPlugins_files := $(patsubst src/RecoEgamma/EgammaTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/EgammaTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/EgammaTools/plugins/$(file). Please fix src/RecoEgamma/EgammaTools/plugins/BuildFile.))))
RecoEgammaEgammaToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/EgammaTools/plugins/BuildFile
RecoEgammaEgammaToolsPlugins_LOC_USE := self  FWCore/Framework PhysicsTools/MVAComputer PhysicsTools/MVATrainer CommonTools/CandAlgos CondCore/PluginSystem CondCore/DBOutputService CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates RecoEgamma/EgammaTools
RecoEgammaEgammaToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaEgammaToolsPlugins,RecoEgammaEgammaToolsPlugins,$(SCRAMSTORENAME_LIB),src/RecoEgamma/EgammaTools/plugins))
RecoEgammaEgammaToolsPlugins_PACKAGE := self/src/RecoEgamma/EgammaTools/plugins
ALL_PRODS += RecoEgammaEgammaToolsPlugins
RecoEgamma/EgammaTools_forbigobj+=RecoEgammaEgammaToolsPlugins
RecoEgammaEgammaToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaEgammaToolsPlugins,src/RecoEgamma/EgammaTools/plugins,src_RecoEgamma_EgammaTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
RecoEgammaEgammaToolsPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaEgammaToolsPlugins,src/RecoEgamma/EgammaTools/plugins))
endif
ALL_COMMONRULES += src_RecoEgamma_EgammaTools_plugins
src_RecoEgamma_EgammaTools_plugins_parent := RecoEgamma/EgammaTools
src_RecoEgamma_EgammaTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaTools_plugins,src/RecoEgamma/EgammaTools/plugins,PLUGINS))
ifeq ($(strip $(RecoEgamma/EgammaTools)),)
ALL_COMMONRULES += src_RecoEgamma_EgammaTools_src
src_RecoEgamma_EgammaTools_src_parent := RecoEgamma/EgammaTools
src_RecoEgamma_EgammaTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaTools_src,src/RecoEgamma/EgammaTools/src,LIBRARY))
RecoEgammaEgammaTools := self/RecoEgamma/EgammaTools
RecoEgamma/EgammaTools := RecoEgammaEgammaTools
RecoEgammaEgammaTools_files := $(patsubst src/RecoEgamma/EgammaTools/src/%,%,$(wildcard $(foreach dir,src/RecoEgamma/EgammaTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEgammaEgammaTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/EgammaTools/BuildFile
RecoEgammaEgammaTools_LOC_USE := self  FWCore/Framework DataFormats/HcalRecHit DataFormats/EgammaReco DataFormats/EgammaCandidates Geometry/CaloGeometry clhep root PhysicsTools/MVAComputer PhysicsTools/MVATrainer CondFormats/DataRecord CondFormats/EgammaObjects RecoEcal/EgammaCoreTools CondCore/DBOutputService DataFormats/ParticleFlowReco CommonTools/Utils roottmva
RecoEgammaEgammaTools_EX_LIB   := RecoEgammaEgammaTools
RecoEgammaEgammaTools_EX_USE   := $(foreach d,$(RecoEgammaEgammaTools_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaTools_PACKAGE := self/src/RecoEgamma/EgammaTools/src
ALL_PRODS += RecoEgammaEgammaTools
RecoEgammaEgammaTools_CLASS := LIBRARY
RecoEgamma/EgammaTools_forbigobj+=RecoEgammaEgammaTools
RecoEgammaEgammaTools_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaEgammaTools,src/RecoEgamma/EgammaTools/src,src_RecoEgamma_EgammaTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
