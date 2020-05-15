ALL_SUBSYSTEMS+=Photon_Analyzer
subdirs_src_Photon_Analyzer = src_Photon_Analyzer_PhotonAnalyzer
ALL_PACKAGES += Photon_Analyzer/PhotonAnalyzer
subdirs_src_Photon_Analyzer_PhotonAnalyzer := src_Photon_Analyzer_PhotonAnalyzer_plugins src_Photon_Analyzer_PhotonAnalyzer_python src_Photon_Analyzer_PhotonAnalyzer_test
ifeq ($(strip $(PyPhoton_AnalyzerPhotonAnalyzer)),)
PyPhoton_AnalyzerPhotonAnalyzer := self/src/Photon_Analyzer/PhotonAnalyzer/python
src_Photon_Analyzer_PhotonAnalyzer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Photon_Analyzer/PhotonAnalyzer/python)
PyPhoton_AnalyzerPhotonAnalyzer_files := $(patsubst src/Photon_Analyzer/PhotonAnalyzer/python/%,%,$(wildcard $(foreach dir,src/Photon_Analyzer/PhotonAnalyzer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhoton_AnalyzerPhotonAnalyzer_LOC_USE := self  
PyPhoton_AnalyzerPhotonAnalyzer_PACKAGE := self/src/Photon_Analyzer/PhotonAnalyzer/python
ALL_PRODS += PyPhoton_AnalyzerPhotonAnalyzer
PyPhoton_AnalyzerPhotonAnalyzer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhoton_AnalyzerPhotonAnalyzer,src/Photon_Analyzer/PhotonAnalyzer/python,src_Photon_Analyzer_PhotonAnalyzer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhoton_AnalyzerPhotonAnalyzer,src/Photon_Analyzer/PhotonAnalyzer/python))
endif
ALL_COMMONRULES += src_Photon_Analyzer_PhotonAnalyzer_python
src_Photon_Analyzer_PhotonAnalyzer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Photon_Analyzer_PhotonAnalyzer_python,src/Photon_Analyzer/PhotonAnalyzer/python,PYTHON))
ALL_COMMONRULES += src_Photon_Analyzer_PhotonAnalyzer_test
src_Photon_Analyzer_PhotonAnalyzer_test_parent := Photon_Analyzer/PhotonAnalyzer
src_Photon_Analyzer_PhotonAnalyzer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Photon_Analyzer_PhotonAnalyzer_test,src/Photon_Analyzer/PhotonAnalyzer/test,TEST))
ALL_SUBSYSTEMS+=RecoEgamma
subdirs_src_RecoEgamma = src_RecoEgamma_EgammaTools
ALL_PACKAGES += RecoEgamma/EgammaTools
subdirs_src_RecoEgamma_EgammaTools := src_RecoEgamma_EgammaTools_plugins src_RecoEgamma_EgammaTools_python src_RecoEgamma_EgammaTools_src src_RecoEgamma_EgammaTools_test
ifeq ($(strip $(PyRecoEgammaEgammaTools)),)
PyRecoEgammaEgammaTools := self/src/RecoEgamma/EgammaTools/python
src_RecoEgamma_EgammaTools_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoEgamma/EgammaTools/python)
PyRecoEgammaEgammaTools_files := $(patsubst src/RecoEgamma/EgammaTools/python/%,%,$(wildcard $(foreach dir,src/RecoEgamma/EgammaTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoEgammaEgammaTools_LOC_USE := self  
PyRecoEgammaEgammaTools_PACKAGE := self/src/RecoEgamma/EgammaTools/python
ALL_PRODS += PyRecoEgammaEgammaTools
PyRecoEgammaEgammaTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoEgammaEgammaTools,src/RecoEgamma/EgammaTools/python,src_RecoEgamma_EgammaTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoEgammaEgammaTools,src/RecoEgamma/EgammaTools/python))
endif
ALL_COMMONRULES += src_RecoEgamma_EgammaTools_python
src_RecoEgamma_EgammaTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaTools_python,src/RecoEgamma/EgammaTools/python,PYTHON))
ifeq ($(strip $(RecoEGammaGBRWrapperMaker)),)
RecoEGammaGBRWrapperMaker := self/src/RecoEgamma/EgammaTools/test
RecoEGammaGBRWrapperMaker_files := $(patsubst src/RecoEgamma/EgammaTools/test/%,%,$(foreach file,GBRWrapperMaker.cc,$(eval xfile:=$(wildcard src/RecoEgamma/EgammaTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/EgammaTools/test/$(file). Please fix src/RecoEgamma/EgammaTools/test/BuildFile.))))
RecoEGammaGBRWrapperMaker_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/EgammaTools/test/BuildFile
RecoEGammaGBRWrapperMaker_LOC_USE := self  FWCore/Framework PhysicsTools/MVAComputer PhysicsTools/MVATrainer CondCore/PluginSystem CondCore/DBOutputService CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates RecoEgamma/EgammaTools
RecoEGammaGBRWrapperMaker_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEGammaGBRWrapperMaker,RecoEGammaGBRWrapperMaker,$(SCRAMSTORENAME_LIB),src/RecoEgamma/EgammaTools/test))
RecoEGammaGBRWrapperMaker_PACKAGE := self/src/RecoEgamma/EgammaTools/test
ALL_PRODS += RecoEGammaGBRWrapperMaker
RecoEGammaGBRWrapperMaker_INIT_FUNC        += $$(eval $$(call Library,RecoEGammaGBRWrapperMaker,src/RecoEgamma/EgammaTools/test,src_RecoEgamma_EgammaTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
RecoEGammaGBRWrapperMaker_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEGammaGBRWrapperMaker,src/RecoEgamma/EgammaTools/test))
endif
ALL_COMMONRULES += src_RecoEgamma_EgammaTools_test
src_RecoEgamma_EgammaTools_test_parent := RecoEgamma/EgammaTools
src_RecoEgamma_EgammaTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaTools_test,src/RecoEgamma/EgammaTools/test,TEST))
