ifeq ($(strip $(OralVBFZAuto)),)
OralVBFZAuto := self/src/Oral/VBFZ/plugins
PLUGINS:=yes
OralVBFZAuto_files := $(patsubst src/Oral/VBFZ/plugins/%,%,$(wildcard $(foreach dir,src/Oral/VBFZ/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
OralVBFZAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/Oral/VBFZ/plugins/BuildFile
OralVBFZAuto_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/JetReco CommonTools/UtilAlgos FWCore/ServiceRegistry
OralVBFZAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,OralVBFZAuto,OralVBFZAuto,$(SCRAMSTORENAME_LIB),src/Oral/VBFZ/plugins))
OralVBFZAuto_PACKAGE := self/src/Oral/VBFZ/plugins
ALL_PRODS += OralVBFZAuto
Oral/VBFZ_forbigobj+=OralVBFZAuto
OralVBFZAuto_INIT_FUNC        += $$(eval $$(call Library,OralVBFZAuto,src/Oral/VBFZ/plugins,src_Oral_VBFZ_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
OralVBFZAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,OralVBFZAuto,src/Oral/VBFZ/plugins))
endif
ALL_COMMONRULES += src_Oral_VBFZ_plugins
src_Oral_VBFZ_plugins_parent := Oral/VBFZ
src_Oral_VBFZ_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Oral_VBFZ_plugins,src/Oral/VBFZ/plugins,PLUGINS))
