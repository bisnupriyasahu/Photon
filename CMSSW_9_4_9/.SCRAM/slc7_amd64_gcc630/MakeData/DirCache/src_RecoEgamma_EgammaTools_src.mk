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
