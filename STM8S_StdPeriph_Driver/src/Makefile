CC=sdcc
AR=sdar
PATH_PROJECT=/Users/dunaevaleksey/Documents/STM8/Projects/testSPL
PATH_STD_PERITHDRIVER=STM8S_StdPeriph_Driver
INCLUDED_PATH=-I$(PATH_PROJECT)/$(PATH_STD_PERITHDRIVER)/inc -I$(PATH_PROJECT)/$(PATH_STD_PERITHDRIVER)/src
#CFLAGS=-c -mstm8 --out-fmt-elf --all-callee-saves --debug --verbose --stack-auto --fverbose-asm  --float-reent --no-peep -DSTM8S003 -I../inc -I../src --opt-code-size -I.
CFLAGS=-c -mstm8 --out-fmt-elf --all-callee-saves --debug --verbose --stack-auto --fverbose-asm  --float-reent --no-peep -DSTM8S003 $(INCLUDED_PATH) --opt-code-size -I.
LDFLAGS=-rc 
SOURCES=$(wildcard stm*.c)

OBJECTS=$(SOURCES:.c=.o)
OBJECTS_LINK=$(SOURCES:.c=.rel)
EXECUTABLE=stm8s003.lib

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(AR) $(LDFLAGS) $(EXECUTABLE) $(OBJECTS_LINK) 

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean: 
	rm -f *.lib *.rst *.rel *.lst *.ihx *.sym *.asm *.lk *.map
	rm -f $(EXECUTABLE)
