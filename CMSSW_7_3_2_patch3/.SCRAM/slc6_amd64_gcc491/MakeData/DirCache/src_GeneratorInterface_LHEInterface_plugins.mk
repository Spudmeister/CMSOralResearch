ifeq ($(strip $(GeneratorInterfaceLHEIO)),)
GeneratorInterfaceLHEIO := self/src/GeneratorInterface/LHEInterface/plugins
PLUGINS:=yes
GeneratorInterfaceLHEIO_files := $(patsubst src/GeneratorInterface/LHEInterface/plugins/%,%,$(foreach file,LHESource.cc LHEProvenanceHelper.cc LHEWriter.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/LHEInterface/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/LHEInterface/plugins/$(file). Please fix src/GeneratorInterface/LHEInterface/plugins/BuildFile.))))
GeneratorInterfaceLHEIO_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/LHEInterface/plugins/BuildFile
GeneratorInterfaceLHEIO_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities GeneratorInterface/LHEInterface GeneratorInterface/Core boost FWCore/Framework FWCore/Sources SimDataFormats/GeneratorProducts mcdb
GeneratorInterfaceLHEIO_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfaceLHEIO,GeneratorInterfaceLHEIO,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/LHEInterface/plugins))
GeneratorInterfaceLHEIO_PACKAGE := self/src/GeneratorInterface/LHEInterface/plugins
ALL_PRODS += GeneratorInterfaceLHEIO
GeneratorInterface/LHEInterface_forbigobj+=GeneratorInterfaceLHEIO
GeneratorInterfaceLHEIO_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceLHEIO,src/GeneratorInterface/LHEInterface/plugins,src_GeneratorInterface_LHEInterface_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
GeneratorInterfaceLHEIO_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeneratorInterfaceLHEIO,src/GeneratorInterface/LHEInterface/plugins))
endif
ifeq ($(strip $(GeneratorInterfaceLHEProducer)),)
GeneratorInterfaceLHEProducer := self/src/GeneratorInterface/LHEInterface/plugins
PLUGINS:=yes
GeneratorInterfaceLHEProducer_files := $(patsubst src/GeneratorInterface/LHEInterface/plugins/%,%,$(foreach file,LHEProducer.cc LHEFilter.cc LHE2HepMCConverter.cc ExternalLHEProducer.cc ExternalLHEAsciiDumper.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/LHEInterface/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/LHEInterface/plugins/$(file). Please fix src/GeneratorInterface/LHEInterface/plugins/BuildFile.))))
GeneratorInterfaceLHEProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/LHEInterface/plugins/BuildFile
GeneratorInterfaceLHEProducer_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities GeneratorInterface/LHEInterface GeneratorInterface/Core boost FWCore/Framework SimDataFormats/GeneratorProducts
GeneratorInterfaceLHEProducer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfaceLHEProducer,GeneratorInterfaceLHEProducer,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/LHEInterface/plugins))
GeneratorInterfaceLHEProducer_PACKAGE := self/src/GeneratorInterface/LHEInterface/plugins
ALL_PRODS += GeneratorInterfaceLHEProducer
GeneratorInterface/LHEInterface_forbigobj+=GeneratorInterfaceLHEProducer
GeneratorInterfaceLHEProducer_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceLHEProducer,src/GeneratorInterface/LHEInterface/plugins,src_GeneratorInterface_LHEInterface_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
GeneratorInterfaceLHEProducer_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeneratorInterfaceLHEProducer,src/GeneratorInterface/LHEInterface/plugins))
endif
ifeq ($(strip $(GeneratorInterfaceLHECOMWeightProducer)),)
GeneratorInterfaceLHECOMWeightProducer := self/src/GeneratorInterface/LHEInterface/plugins
PLUGINS:=yes
GeneratorInterfaceLHECOMWeightProducer_files := $(patsubst src/GeneratorInterface/LHEInterface/plugins/%,%,$(foreach file,LHECOMWeightProducer.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/LHEInterface/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/LHEInterface/plugins/$(file). Please fix src/GeneratorInterface/LHEInterface/plugins/BuildFile.))))
GeneratorInterfaceLHECOMWeightProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/LHEInterface/plugins/BuildFile
GeneratorInterfaceLHECOMWeightProducer_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities GeneratorInterface/LHEInterface GeneratorInterface/Core boost FWCore/Framework SimDataFormats/GeneratorProducts lhapdf
GeneratorInterfaceLHECOMWeightProducer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfaceLHECOMWeightProducer,GeneratorInterfaceLHECOMWeightProducer,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/LHEInterface/plugins))
GeneratorInterfaceLHECOMWeightProducer_PACKAGE := self/src/GeneratorInterface/LHEInterface/plugins
ALL_PRODS += GeneratorInterfaceLHECOMWeightProducer
GeneratorInterface/LHEInterface_forbigobj+=GeneratorInterfaceLHECOMWeightProducer
GeneratorInterfaceLHECOMWeightProducer_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceLHECOMWeightProducer,src/GeneratorInterface/LHEInterface/plugins,src_GeneratorInterface_LHEInterface_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
GeneratorInterfaceLHECOMWeightProducer_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeneratorInterfaceLHECOMWeightProducer,src/GeneratorInterface/LHEInterface/plugins))
endif
ifeq ($(strip $(GeneratorInterfaceLHEAnalyzer)),)
GeneratorInterfaceLHEAnalyzer := self/src/GeneratorInterface/LHEInterface/plugins
PLUGINS:=yes
GeneratorInterfaceLHEAnalyzer_files := $(patsubst src/GeneratorInterface/LHEInterface/plugins/%,%,$(foreach file,LHEAnalyzer.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/LHEInterface/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/LHEInterface/plugins/$(file). Please fix src/GeneratorInterface/LHEInterface/plugins/BuildFile.))))
GeneratorInterfaceLHEAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/LHEInterface/plugins/BuildFile
GeneratorInterfaceLHEAnalyzer_LOC_USE := self cmssw FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities GeneratorInterface/LHEInterface GeneratorInterface/Core boost FWCore/Framework DataFormats/StdDictionaries SimDataFormats/GeneratorProducts CommonTools/UtilAlgos
GeneratorInterfaceLHEAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfaceLHEAnalyzer,GeneratorInterfaceLHEAnalyzer,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/LHEInterface/plugins))
GeneratorInterfaceLHEAnalyzer_PACKAGE := self/src/GeneratorInterface/LHEInterface/plugins
ALL_PRODS += GeneratorInterfaceLHEAnalyzer
GeneratorInterface/LHEInterface_forbigobj+=GeneratorInterfaceLHEAnalyzer
GeneratorInterfaceLHEAnalyzer_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceLHEAnalyzer,src/GeneratorInterface/LHEInterface/plugins,src_GeneratorInterface_LHEInterface_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
GeneratorInterfaceLHEAnalyzer_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeneratorInterfaceLHEAnalyzer,src/GeneratorInterface/LHEInterface/plugins))
endif
ALL_COMMONRULES += src_GeneratorInterface_LHEInterface_plugins
src_GeneratorInterface_LHEInterface_plugins_parent := GeneratorInterface/LHEInterface
src_GeneratorInterface_LHEInterface_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_LHEInterface_plugins,src/GeneratorInterface/LHEInterface/plugins,PLUGINS))
