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
