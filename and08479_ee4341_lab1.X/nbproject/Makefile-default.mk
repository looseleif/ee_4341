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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=sourceOfFiles/and08479_main.c sourceOfFiles/io_setup.c sourceOfFiles/uart1_setup.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/sourceOfFiles/and08479_main.o ${OBJECTDIR}/sourceOfFiles/io_setup.o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o
POSSIBLE_DEPFILES=${OBJECTDIR}/sourceOfFiles/and08479_main.o.d ${OBJECTDIR}/sourceOfFiles/io_setup.o.d ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sourceOfFiles/and08479_main.o ${OBJECTDIR}/sourceOfFiles/io_setup.o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o

# Source Files
SOURCEFILES=sourceOfFiles/and08479_main.c sourceOfFiles/io_setup.c sourceOfFiles/uart1_setup.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/sourceOfFiles/and08479_main.o: sourceOfFiles/and08479_main.c  .generated_files/29d01dcc83c8769f81033f3d4eff5cd8c00beb0c.flag .generated_files/a5e1a4a9a118710d474a57f1a370990f423784bd.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/and08479_main.o.d" -o ${OBJECTDIR}/sourceOfFiles/and08479_main.o sourceOfFiles/and08479_main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/sourceOfFiles/io_setup.o: sourceOfFiles/io_setup.c  .generated_files/30321d26ac5c4dc524559311c87d1827bdd0b0ae.flag .generated_files/a5e1a4a9a118710d474a57f1a370990f423784bd.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/io_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/io_setup.o sourceOfFiles/io_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/sourceOfFiles/uart1_setup.o: sourceOfFiles/uart1_setup.c  .generated_files/65bf6af1d0d83d3b7408c6b7c5221ef618bd24cb.flag .generated_files/a5e1a4a9a118710d474a57f1a370990f423784bd.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o sourceOfFiles/uart1_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/sourceOfFiles/and08479_main.o: sourceOfFiles/and08479_main.c  .generated_files/22827671a5f0901dfec163ea5ebba219d755e4d.flag .generated_files/a5e1a4a9a118710d474a57f1a370990f423784bd.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/and08479_main.o.d" -o ${OBJECTDIR}/sourceOfFiles/and08479_main.o sourceOfFiles/and08479_main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/sourceOfFiles/io_setup.o: sourceOfFiles/io_setup.c  .generated_files/420ed34dbdf11b979ece77d0e4da62744afa799d.flag .generated_files/a5e1a4a9a118710d474a57f1a370990f423784bd.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/io_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/io_setup.o sourceOfFiles/io_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/sourceOfFiles/uart1_setup.o: sourceOfFiles/uart1_setup.c  .generated_files/443d12e2387471841b3e43f3aed209369520112f.flag .generated_files/a5e1a4a9a118710d474a57f1a370990f423784bd.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o sourceOfFiles/uart1_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=256,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=256,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
