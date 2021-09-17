CFLAGS+= -Wall -Wextra -Werror -Wno-deprecated-declarations -Wno-unused-parameter -Wno-sign-compare
LDADD+= -lX11 
LDFLAGS=
EXEC=catwm

PREFIX?= /usr
BINDIR?= $(PREFIX)/bin

all: $(EXEC)

$(EXEC): catwm.o
	$(CC) $(LDFLAGS) -Os -o $@ $+ $(LDADD)

install: all
	install -Dm 755 catwm $(DESTDIR)$(BINDIR)/catwm

clean:
	rm -f catwm *.o
