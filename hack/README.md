# Hack Kannada Roots

## Examples

### List all roots in Kannada

```sh
$ ./hack/roots.sh | head
ī
ō
kā
kī
kē
kuṭaku
misuku
musuku
kusuku
kusuṅku
```

### List halanta roots in Kannada

```sh
$ ./hack/roots.sh | grep -f ./hack/halanta.regex | head
tēgum
uṇ
kāṇ
māṇ
pūṇ
paṇ
nān
ban
ān
nōn
```

### List all non-halanta roots in Kannada

```sh
$ ./hack/roots.sh | grep -f ./hack/non-halanta.regex | head
ī
ō
kā
kī
kē
kuṭaku
misuku
musuku
kusuku
kusuṅku
```

### List all halanta roots in Kannada including u-ending roots which are also likely halanta, except the -cu ending, which are likely secondary formations

```sh
$ ./hack/roots.sh | grep -v cu | sed s/u$// | grep -f ./hack/halanta.regex | head
kuṭak
misuk
musuk
kusuk
kusuṅk
pisuk
pisuṅk
kuṟuk
kuṟuṅk
muṟuk
```

### List all heavy monosyllabic roots in Kannada

```sh
$ ./hack/roots.sh | grep -f ./hack/monosyllabic-dum.regex | head
ī
ō
kā
kī
kē
kō
uṇ
kāṇ
māṇ
pūṇ
```

### List all monosyllabic roots in Kannada (same as the above because Kannada does not have light monosyllabic roots)

```sh
$ ./hack/roots.sh | grep -f ./hack/monosyllabic-dum.regex -f ./hack/monosyllabic-da.regex | head
ī
ō
kā
kī
kē
kō
uṇ
kāṇ
māṇ
pūṇ
```

### List all bisyllabic roots in Kannada that start with a light syllable

```sh
$ ./hack/roots.sh | grep -f ./hack/bisyllabic-dax.regex | head
ugi
mugi
bagi
sugi
bigi
agi
cigi
pugu
nagu
ugu
```

### List all bisyllabic roots in Kannada that start with a heavy syllable

```sh
$ ./hack/roots.sh | grep -f ./hack/bisyllabic-dumx.regex | head
sāku
jarku
nūṅku
soṅku
kūṅku
teṅku
nūṅku
koṅku
baṅku
bikku
```

### List all bisyllabic roots in Kannada that are made up of two light syllables

```sh
$ ./hack/roots.sh | grep -f ./hack/bisyllabic-dada.regex | head
ugi
mugi
bagi
sugi
bigi
agi
cigi
pugu
nagu
ugu
```

### List all bisyllabic roots in Kannada

```sh
$ ./hack/roots.sh | grep -f ./hack/bisyllabic-dax.regex -f ./hack/bisyllabic-dumx.regex | head
sāku
jarku
nūṅku
soṅku
kūṅku
teṅku
nūṅku
koṅku
baṅku
bikku
```

### List all bisyllabic roots in Kannada if we ignore the u-ending

```sh
$ ./hack/roots.sh | sed s/u$// | grep -f ./hack/bisyllabic-dax.regex -f ./hack/bisyllabic-dumx.regex | head
kuṭak
misuk
musuk
kusuk
kusuṅk
pisuk
pisuṅk
kuṟuk
kuṟuṅk
muṟuk
```

### List all polysyllabic roots in Kannada

```sh
$ ./hack/roots.sh | grep -f ./hack/polysyllabic.regex | head
kuṭaku
misuku
musuku
kusuku
kusuṅku
pisuku
pisuṅku
kuṟuku
kuṟuṅku
muṟuku
```

### List all polysyllabic roots in Kannada if we ignore the u-ending

```sh
$ ./hack/roots.sh | sed s/u$// | grep -f ./hack/polysyllabic.regex | head
peṭṭuverc
kaḍegaṇc
kiḍukuṭṭ
samakaṭṭ
guḍikaṭṭ
paḍaliḍ
karuvid
tiṭṭaviḍ
poḍamaḍ
talemaḍ
```

### List all roots, except -cu ending, ignoring the -u ending and then removing the trailing halanta and the remaining fragment is a single light syllable

```sh
$ ./hack/roots.sh | grep -v cu | sed s/u$// | ./hack/remove-trailing-halanta.sh | grep -f ./hack/monosyllabic-da.regex | head
ja
so
te
ko
ba
bi
o
i
na
pi
```

### List all roots, removing the trailing non-halanta

```sh
$ ./hack/roots.sh | ./hack/remove-trailing-non-halanta.sh | head
k
k
k
kuṭak
misuk
musuk
kusuk
kusuṅk
pisuk
pisuṅk
```
