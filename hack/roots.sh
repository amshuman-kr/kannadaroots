#!/bin/bash

cat kannadaroots.csv | tail -n +3 | cut -f2 -d,
