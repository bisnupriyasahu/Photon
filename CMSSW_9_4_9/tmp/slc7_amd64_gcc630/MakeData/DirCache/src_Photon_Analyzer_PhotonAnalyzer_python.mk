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
