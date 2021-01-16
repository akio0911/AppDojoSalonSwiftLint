#!/bin/sh

swiftlint rules | awk -F "|" '$3 ~ "yes" { print $2 }' | tr -d ' ' | sed 's/^/  - /'
