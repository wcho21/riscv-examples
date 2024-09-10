TARGETS:=\
	hello.x\
	intvaradd.x\
	intvarsub.x\
	intarrsum.x\
	strvarprint.x\
	if.x\
	ifelse.x\
	ifelseifelse.x\
	ifand.x\
	ifor.x\
	for.x

.PHONY: all
all: $(TARGETS)

.PRECIOUS: %.o

%.o: %.S
	as $^ -g -o $@

%.x: %.o
	ld $^ --no-relax -o $@

.PHONY: clean
clean:
	rm -f *.o *.x
