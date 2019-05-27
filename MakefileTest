# STM8 device (default is STM8 discovery board)
DEVICE=STM8S003
DEVICE_FLASH=stm8s003f3

TARGETNAME = testSPLBasic

# trap handling requires SDCC >=v3.4.3
SKIP_TRAPS = 0

# set output folder and target name
OUTPUT_DIR = ./build
TARGET     = $(OUTPUT_DIR)/$(TARGETNAME).elf

# set project folder and files (all *.c)
PRJ_ROOT    = .
PRJ_SRC_DIR = $(PRJ_ROOT)/Src
PRJ_INC_DIR = $(PRJ_ROOT)/Inc

# all project sources included by default
PRJ_SOURCE  = $(notdir $(wildcard $(PRJ_SRC_DIR)/*.c))
PRJ_OBJECTS := $(addprefix $(OUTPUT_DIR)/, $(PRJ_SOURCE:.c=.rel))


# set SPL paths
SPL_ROOT	= ./STM8S_StdPeriph_Driver
SPL_SRC_DIR = $(SPL_ROOT)/src
SPL_INC_DIR = $(SPL_ROOT)/inc

# all SPL sources
#SPL_SOURCE	= stm8s_adc1.c \
#stm8s_awu.c \
#stm8s_beep.c \
#stm8s_clk.c \
#stm8s_exti.c \
#stm8s_flash.c \
#stm8s_gpio.c \
#stm8s_i2c.c \
#stm8s_itc.c \
#stm8s_iwdg.c \
#stm8s_rst.c \
#stm8s_spi.c \
#stm8s_tim1.c \
#stm8s_tim2.c \
#stm8s_tim4.c \
#stm8s_uart1.c \
#stm8s_wwdg.c

SPL_SOURCE	= stm8s_adc1.c \
stm8s_clk.c \
stm8s_gpio.c \
stm8s_spi.c \
stm8s_tim4.c

SPL_OBJECTS := $(addprefix $(OUTPUT_DIR)/, $(SPL_SOURCE:.c=.rel))

# set compiler path & parameters 
SIZE = stm8-size
CC  = sdcc
AR 	= sdar
ifeq ($(NODEBUG), 1)
    #CFLAGS =-mstm8  --out-fmt-ihx -DUSE_STDPERIPH_DRIVER --all-callee-saves --verbose --stack-auto --fverbose-asm --no-peep -D$(DEVICE) $(INCLUDE) --opt-code-size
    CFLAGS =-mstm8  --out-fmt-ihx --all-callee-saves --verbose --stack-auto --fverbose-asm --no-peep -D$(DEVICE) $(INCLUDE) --opt-code-size
    TARGET = $(OUTPUT_DIR)/$(TARGETNAME).ihx
else
	#CFLAGS =-mstm8 --debug --out-fmt-elf -DUSE_STDPERIPH_DRIVER --all-callee-saves --verbose --stack-auto --fverbose-asm --no-peep -D$(DEVICE) $(INCLUDE) --opt-code-size
	CFLAGS =-mstm8 --debug --out-fmt-elf --all-callee-saves --verbose --stack-auto --fverbose-asm --no-peep -D$(DEVICE) $(INCLUDE) --opt-code-size
    TARGET = $(OUTPUT_DIR)/$(TARGETNAME).elf
endif

# collect all include folders
INCLUDE = -I$(SPL_INC_DIR) -I$(PRJ_INC_DIR)

# collect all source directories
VPATH=$(SPL_SRC_DIR):$(PRJ_SRC_DIR)

.PHONY: all output clean

all: $(TARGET)
	
$(OUTPUT_DIR)/%.rel: %.c
	$(CC) $(CFLAGS) -c $? -o $@

$(TARGET): $(SPL_OBJECTS) $(PRJ_OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $^ 
	$(SIZE) $(TARGET)

output:
	@echo SPL_ROOT: $(SPL_ROOT)
	@echo SPL_SRC_DIR: $(SPL_SRC_DIR)
	@echo SPL_INC_DIR: $(SPL_INC_DIR)
	@echo SPL_SOURCE: $(SPL_SOURCE)

flash: $(TARGET)
	stm8flash -c stlinkv2 -p $(DEVICE_FLASH) -s flash -w $(TARGET)

clean:
	rm $(OUTPUT_DIR)/*
