TARGETS:=\
	hello.x\
	intvaradd.x

.PHONY: all
all: $(TARGETS)

.PRECIOUS: %.o

%.o: %.S
	as $^ -o $@

%.x: %.o
	ld $^ -o $@

.PHONY: clean
clean:
	rm -f *.o *.x
