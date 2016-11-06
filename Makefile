all: pam_storepw.so

pam_storepw.so: pam_storepw.o
	$(LD) --shared -o $@ $< -lpam -lpam_misc

clean:
	rm -f pam_storepw.o pam_storepw.so core *~

extraclean: clean
	rm -f *.a *.o *.so *.bak

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@
