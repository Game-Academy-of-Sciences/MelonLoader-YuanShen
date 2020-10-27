##############################################################################
##
##  Establish build target type for Detours.
##
##  Microsoft Research Detours Package
##
##  Copyright (c) Microsoft Corporation.  All rights reserved.
##

############################################## Determine Processor Build Type.
##
!IF "$(DETOURS_TARGET_PROCESSOR)" == "" && "$(PROCESSOR_ARCHITEW6432)" != ""
DETOURS_TARGET_PROCESSOR = X86
!ENDIF

!IF "$(DETOURS_TARGET_PROCESSOR)" == ""
DETOURS_TARGET_PROCESSOR = $(PROCESSOR_ARCHITECTURE)
!ENDIF

# uppercase DETOURS_TARGET_PROCESSOR
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:a=A)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:b=B)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:c=C)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:d=D)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:e=E)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:f=F)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:g=G)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:h=H)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:i=I)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:j=J)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:k=K)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:l=L)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:m=M)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:n=N)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:o=O)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:p=P)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:q=Q)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:r=R)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:s=S)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:t=T)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:u=U)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:v=V)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:w=W)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:x=X)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:y=Y)
DETOURS_TARGET_PROCESSOR=$(DETOURS_TARGET_PROCESSOR:z=Z)

!IF "$(DETOURS_TARGET_PROCESSOR)" == "AMD64"
DETOURS_TARGET_PROCESSOR = X64
!ENDIF


!if "$(DETOURS_TARGET_PROCESSOR:64=)" == "$(DETOURS_TARGET_PROCESSOR)"
DETOURS_32BIT=1
DETOURS_BITS=32
!else
DETOURS_64BIT=1
DETOURS_BITS=64
!endif

########################################## Configure build based on Processor.
##
## DETOURS_OPTION_PROCESSOR: Set this macro if the processor *will* run code
##                           from another ISA (i.e. x86 on x64).
##
##      DETOURS_OPTION_BITS: Set this macro if the processor *may* have an
##                           an alternative word size.
##
!IF "$(DETOURS_TARGET_PROCESSOR)" == "X64"
#!MESSAGE Building for 64-bit X64.
DETOURS_SOURCE_BROWSING = 0
DETOURS_OPTION_PROCESSOR=X86
DETOURS_OPTION_BITS=32
!ELSEIF "$(DETOURS_TARGET_PROCESSOR)" == "IA64"
#!MESSAGE Building for 64-bit IA64.
DETOURS_OPTION_PROCESSOR=X86
DETOURS_OPTION_BITS=32
!ELSEIF "$(DETOURS_TARGET_PROCESSOR)" == "X86"
#!MESSAGE Building for 32-bit X86.
DETOURS_OPTION_BITS=64
# Don't set DETOURS_OPTION_PROCESSOR for x64 because we don't *know* that
# we'll run on a 64-bit machine.
!ELSEIF "$(DETOURS_TARGET_PROCESSOR)" == "ARM"
#!MESSAGE Building for 32-bit ARM.
!ELSEIF "$(DETOURS_TARGET_PROCESSOR)" == "ARM64"
#!MESSAGE Building for 64-bit ARM.
!ELSE
!MESSAGE Note: To select the target processor architecture set either
!MESSAGE       PROCESSOR_ARCHITECTURE or DETOURS_TARGET_PROCESSOR.
!MESSAGE
!ERROR Unknown target processor: $(DETOURS_TARGET_ARCHITECTURE)
!ENDIF

##############################################################################
##
INCD = $(ROOT)\include
LIBD = $(ROOT)\lib.$(DETOURS_TARGET_PROCESSOR)$(DETOURS_CONFIG)
BIND = $(ROOT)\bin.$(DETOURS_TARGET_PROCESSOR)$(DETOURS_CONFIG)
OBJD = obj.$(DETOURS_TARGET_PROCESSOR)$(DETOURS_CONFIG)
!IF "$(DETOURS_OPTION_PROCESSOR)" != ""
OPTD = $(ROOT)\bin.$(DETOURS_OPTION_PROCESSOR)$(DETOURS_CONFIG)
!ENDIF

INCDS = $(ROOT)\include

LIBDS = \
        $(ROOT)\lib.x86$(DETOURS_CONFIG) \
        $(ROOT)\lib.x64$(DETOURS_CONFIG) \
        $(ROOT)\lib.ia64$(DETOURS_CONFIG) \
        $(ROOT)\lib.arm$(DETOURS_CONFIG) \
        $(ROOT)\lib.arm64$(DETOURS_CONFIG) \

BINDS = \
        $(ROOT)\bin.x86$(DETOURS_CONFIG) \
        $(ROOT)\bin.x64$(DETOURS_CONFIG) \
        $(ROOT)\bin.ia64$(DETOURS_CONFIG) \
        $(ROOT)\bin.arm$(DETOURS_CONFIG) \
        $(ROOT)\bin.arm64$(DETOURS_CONFIG) \

OBJDS = \
        obj.x86$(DETOURS_CONFIG) \
        obj.x64$(DETOURS_CONFIG) \
        obj.ia64$(DETOURS_CONFIG) \
        obj.arm$(DETOURS_CONFIG) \
        obj.arm64$(DETOURS_CONFIG) \

##############################################################################
