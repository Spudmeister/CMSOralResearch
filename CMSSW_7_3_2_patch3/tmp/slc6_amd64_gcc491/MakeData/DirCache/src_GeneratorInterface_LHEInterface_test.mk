ifeq ($(strip $(DummyLHEAnalyzer)),)
DummyLHEAnalyzer := self/src/GeneratorInterface/LHEInterface/test
DummyLHEAnalyzer_files := $(patsubst src/GeneratorInterface/LHEInterface/test/%,%,$(foreach file,DummyLHEAnalyzer.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/LHEInterface/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/LHEInterface/test/$(file). Please fix src/GeneratorInterface/LHEInterface/test/BuildFile.))))
DummyLHEAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/LHEInterface/test/BuildFile
DummyLHEAnalyzer_LOC_USE := self cmssw PhysicsTools/HepMCCandAlgos SimDataFormats/GeneratorProducts FWCore/Framework
DummyLHEAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DummyLHEAnalyzer,DummyLHEAnalyzer,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/LHEInterface/test))
DummyLHEAnalyzer_PACKAGE := self/src/GeneratorInterface/LHEInterface/test
ALL_PRODS += DummyLHEAnalyzer
DummyLHEAnalyzer_INIT_FUNC        += $$(eval $$(call Library,DummyLHEAnalyzer,src/GeneratorInterface/LHEInterface/test,src_GeneratorInterface_LHEInterface_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
DummyLHEAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,DummyLHEAnalyzer,src/GeneratorInterface/LHEInterface/test))
endif
ALL_COMMONRULES += src_GeneratorInterface_LHEInterface_test
src_GeneratorInterface_LHEInterface_test_parent := GeneratorInterface/LHEInterface
src_GeneratorInterface_LHEInterface_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_LHEInterface_test,src/GeneratorInterface/LHEInterface/test,TEST))
