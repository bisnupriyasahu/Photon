ALL_COMMONRULES += src_Photon_Analyzer_PhotonAnalyzer_test
src_Photon_Analyzer_PhotonAnalyzer_test_parent := Photon_Analyzer/PhotonAnalyzer
src_Photon_Analyzer_PhotonAnalyzer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Photon_Analyzer_PhotonAnalyzer_test,src/Photon_Analyzer/PhotonAnalyzer/test,TEST))
