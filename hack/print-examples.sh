#!/bin/bash

echo '## Examples'
echo ''

echo '### List all roots in Kannada'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | head'
./hack/roots.sh | head
echo '```'
echo ''

echo '### List halanta roots in Kannada'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/halanta.regex | head'
./hack/roots.sh | grep -f ./hack/halanta.regex | head
echo '```'
echo ''

echo '### List all halanta roots in Kannada'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/halanta.regex | head'
./hack/roots.sh | grep -f ./hack/halanta.regex | head
echo '```'
echo ''

echo '### List all halanta roots in Kannada including u-ending roots which are also likely halanta, except the -cu ending, which are likely secondary formations'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -v 'cu$' | sed 's/u$//' | grep -f ./hack/halanta.regex | head'
./hack/roots.sh | grep -v 'cu$' | sed 's/u$//' | grep -f ./hack/halanta.regex | head
echo '```'
echo ''

echo '### List all heavy monosyllabic roots in Kannada'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/monosyllabic-dum.regex | head'
./hack/roots.sh | grep -f ./hack/monosyllabic-dum.regex | head
echo '```'
echo ''

echo '### List all monosyllabic roots in Kannada (same as the above because Kannada does not have light monosyllabic roots)'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/monosyllabic-dum.regex -f ./hack/monosyllabic-da.regex | head'
./hack/roots.sh | grep -f ./hack/monosyllabic-dum.regex -f ./hack/monosyllabic-da.regex | head
echo '```'
echo ''

echo '### List all bisyllabic roots in Kannada that start with a light syllable'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/bisyllabic-dax.regex | head'
./hack/roots.sh | grep -f ./hack/bisyllabic-dax.regex | head
echo '```'
echo ''

echo '### List all bisyllabic roots in Kannada that start with a heavy syllable'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/bisyllabic-dumx.regex | head'
./hack/roots.sh | grep -f ./hack/bisyllabic-dumx.regex | head
echo '```'
echo ''

echo '### List all bisyllabic roots in Kannada that are made up of two light syllables'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/bisyllabic-dada.regex | head'
./hack/roots.sh | grep -f ./hack/bisyllabic-dada.regex | head
echo '```'
echo ''

echo '### List all bisyllabic roots in Kannada.'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/bisyllabic-dax.regex -f ./hack/bisyllabic-dumx.regex | head'
./hack/roots.sh | grep -f ./hack/bisyllabic-dax.regex -f ./hack/bisyllabic-dumx.regex | head
echo '```'
echo ''

echo '### List all bisyllabic roots in Kannada if we ignore the u-ending'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | sed 's/u$//' | grep -f ./hack/bisyllabic-dax.regex -f ./hack/bisyllabic-dumx.regex | head'
./hack/roots.sh | sed 's/u$//' | grep -f ./hack/bisyllabic-dax.regex -f ./hack/bisyllabic-dumx.regex | head
echo '```'
echo ''

echo '### List all polysyllabic roots in Kannada'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -f ./hack/polysyllabic.regex | head'
./hack/roots.sh | grep -f ./hack/polysyllabic.regex | head
echo '```'
echo ''

echo '### List all polysyllabic roots in Kannada if we ignore the u-ending'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | sed 's/u$//' | grep -f ./hack/polysyllabic.regex | head'
./hack/roots.sh | sed 's/u$//' | grep -f ./hack/polysyllabic.regex | head
echo '```'
echo ''

echo '### List all roots, except -cu ending, ignoring the -u ending and then removing the trailing halanta and the remaining fragment is a single light syllable'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | grep -v 'cu$' | sed 's/u$//' | ./hack/remove-trailing-halanta.sh | grep -f ./hack/monosyllabic-da.regex | head'
./hack/roots.sh | grep -v 'cu$' | sed 's/u$//' | ./hack/remove-trailing-halanta.sh | grep -f ./hack/monosyllabic-da.regex | head
echo '```'
echo ''

echo '### List all roots, removing the trailing non-halanta'
echo ''
echo '```sh'
echo '$ ./hack/roots.sh | ./hack/remove-trailing-non-halanta.sh | head'
./hack/roots.sh | ./hack/remove-trailing-non-halanta.sh | head
echo '```'