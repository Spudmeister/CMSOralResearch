ALL_PACKAGES += Oral/VBFZ
subdirs_src_Oral_VBFZ := src_Oral_VBFZ_plugins src_Oral_VBFZ_python src_Oral_VBFZ_test
src_GeneratorInterface_LHEInterface_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/GeneratorInterface/LHEInterface/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_GeneratorInterface_LHEInterface_scripts,src/GeneratorInterface/LHEInterface/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_SUBSYSTEMS+=GeneratorInterface
subdirs_src_GeneratorInterface = src_GeneratorInterface_LHEInterface
ifeq ($(strip $(PyGeneratorInterfaceLHEInterface)),)
PyGeneratorInterfaceLHEInterface := self/src/GeneratorInterface/LHEInterface/python
src_GeneratorInterface_LHEInterface_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/GeneratorInterface/LHEInterface/python)
PyGeneratorInterfaceLHEInterface_files := $(patsubst src/GeneratorInterface/LHEInterface/python/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/LHEInterface/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeneratorInterfaceLHEInterface_LOC_USE := self cmssw 
PyGeneratorInterfaceLHEInterface_PACKAGE := self/src/GeneratorInterface/LHEInterface/python
ALL_PRODS += PyGeneratorInterfaceLHEInterface
PyGeneratorInterfaceLHEInterface_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeneratorInterfaceLHEInterface,src/GeneratorInterface/LHEInterface/python,src_GeneratorInterface_LHEInterface_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeneratorInterfaceLHEInterface,src/GeneratorInterface/LHEInterface/python))
endif
ALL_COMMONRULES += src_GeneratorInterface_LHEInterface_python
src_GeneratorInterface_LHEInterface_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_LHEInterface_python,src/GeneratorInterface/LHEInterface/python,PYTHON))
ALL_PACKAGES += GeneratorInterface/LHEInterface
subdirs_src_GeneratorInterface_LHEInterface := src_GeneratorInterface_LHEInterface_interface src_GeneratorInterface_LHEInterface_python src_GeneratorInterface_LHEInterface_test src_GeneratorInterface_LHEInterface_src src_GeneratorInterface_LHEInterface_scripts src_GeneratorInterface_LHEInterface_plugins
ALL_COMMONRULES += src_Oral_VBFZ_test
src_Oral_VBFZ_test_parent := Oral/VBFZ
src_Oral_VBFZ_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Oral_VBFZ_test,src/Oral/VBFZ/test,TEST))
ifeq ($(strip $(PyOralVBFZ)),)
PyOralVBFZ := self/src/Oral/VBFZ/python
src_Oral_VBFZ_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Oral/VBFZ/python)
PyOralVBFZ_files := $(patsubst src/Oral/VBFZ/python/%,%,$(wildcard $(foreach dir,src/Oral/VBFZ/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyOralVBFZ_LOC_USE := self cmssw 
PyOralVBFZ_PACKAGE := self/src/Oral/VBFZ/python
ALL_PRODS += PyOralVBFZ
PyOralVBFZ_INIT_FUNC        += $$(eval $$(call PythonProduct,PyOralVBFZ,src/Oral/VBFZ/python,src_Oral_VBFZ_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyOralVBFZ,src/Oral/VBFZ/python))
endif
ALL_COMMONRULES += src_Oral_VBFZ_python
src_Oral_VBFZ_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Oral_VBFZ_python,src/Oral/VBFZ/python,PYTHON))
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
ALL_SUBSYSTEMS+=Oral
subdirs_src_Oral = src_Oral_VBFZ
