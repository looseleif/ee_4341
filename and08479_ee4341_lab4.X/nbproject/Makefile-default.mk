#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=sourceOfFiles/uart1_setup.c sourceOfFiles/RWTest.c sourceOfFiles/SDMMC.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/sourceOfFiles/uart1_setup.o ${OBJECTDIR}/sourceOfFiles/RWTest.o ${OBJECTDIR}/sourceOfFiles/SDMMC.o
POSSIBLE_DEPFILES=${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d ${OBJECTDIR}/sourceOfFiles/RWTest.o.d ${OBJECTDIR}/sourceOfFiles/SDMMC.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sourceOfFiles/uart1_setup.o ${OBJECTDIR}/sourceOfFiles/RWTest.o ${OBJECTDIR}/sourceOfFiles/SDMMC.o

# Source Files
SOURCEFILES=sourceOfFiles/uart1_setup.c sourceOfFiles/RWTest.c sourceOfFiles/SDMMC.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX470F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/sourceOfFiles/uart1_setup.o: sourceOfFiles/uart1_setup.c  .generated_files/flags/default/39e68776d71eee2c868bdb605a7e88900aa55f4f .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o sourceOfFiles/uart1_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/RWTest.o: sourceOfFiles/RWTest.c  .generated_files/flags/default/bc0b555caae20f09b4fe45d561247bb55855c60f .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/RWTest.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/RWTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/RWTest.o.d" -o ${OBJECTDIR}/sourceOfFiles/RWTest.o sourceOfFiles/RWTest.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/SDMMC.o: sourceOfFiles/SDMMC.c  .generated_files/flags/default/bdac7c13534b6f892b803d0ea568bd4ea47c84c4 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/SDMMC.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/SDMMC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/SDMMC.o.d" -o ${OBJECTDIR}/sourceOfFiles/SDMMC.o sourceOfFiles/SDMMC.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/sourceOfFiles/uart1_setup.o: sourceOfFiles/uart1_setup.c  .generated_files/flags/default/18649757a9c3b2cedb420ad02f54200a4933ac88 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o sourceOfFiles/uart1_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/RWTest.o: sourceOfFiles/RWTest.c  .generated_files/flags/default/e0c2d995f2f93e3b41c0d3e91bf968e7571afbbb .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/RWTest.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/RWTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/RWTest.o.d" -o ${OBJECTDIR}/sourceOfFiles/RWTest.o sourceOfFiles/RWTest.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/SDMMC.o: sourceOfFiles/SDMMC.c  .generated_files/flags/default/539c2122ee269885d2a2c269cc805aa652783cde .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/SDMMC.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/SDMMC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/SDMMC.o.d" -o ${OBJECTDIR}/sourceOfFiles/SDMMC.o sourceOfFiles/SDMMC.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab4.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab4.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif