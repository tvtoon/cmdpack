PROJECT = cmdpack
MAJVER = 1.0
MINVER = 3
LIBS =
PROGS = bin2iso bincomp brrrip byteshuf byteswap cdpatch ecm
PROGS += fakecrc hax65816 id3point pecompat rels screamf subfile
PROGS += uips usfv vb2rip wordadd zerofill

include make/conf

DOCS = ${PROJECT}.txt
DATA =
ICONS =
INFOS =
INCLUDES = banner.h common.h version.h
MANS =
SRC =
LIBSRC =
PROGSRC = ${PROGS:=.c}

include make/exconf
include make/build

dist-clean: clean

bin2iso bin2iso-static: bin2iso.o
bincomp bincomp-static: bincomp.o
brrrip brrrip-static: brrrip.o
byteshuf byteshuf-static: byteshuf.o
byteswap byteswap-static: byteswap.o
cdpatch cdpatch-static: cdpatch.o
ecm ecm-static: ecm.o
fakecrc fakecrc-static: fakecrc.o
hax65816 hax65816-static: hax65816.o
id3point id3point-static: id3point.o
pecompat pecompat-static: pecompat.o
rels rels-static: rels.o
screamf screamf-static: screamf.o
subfile subfile-static: subfile.o
uips uips-static: uips.o
usfv usfv-static: usfv.o
vb2rip vb2rip-static: vb2rip.o
wordadd wordadd-static: wordadd.o
zerofill zerofill-static: zerofill.o

include make/pack
include make/rules
include make/thedep
