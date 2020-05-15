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
