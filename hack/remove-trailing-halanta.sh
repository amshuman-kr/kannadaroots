#!/bin/bash

sed 's/[kgṅcjñṭḍṇtdnpbmyrlvśṣshḷṟḻṁḥ]*$//' | grep -v '^$'
