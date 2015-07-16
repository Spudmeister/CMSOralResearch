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
