svn checkout https://svn.code.sf.net/p/dosbox/code-0/dosbox/trunk /tmp/dosbox-src
cd /tmp/dosbox-src
./autogen.sh
# -s => strip debug informations
./configure LDFLAGS="-s"
make
cp src/dosbox /export

