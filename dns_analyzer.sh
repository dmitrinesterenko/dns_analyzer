#!/bin/bash

DOMAINS=$(cat $1 | jq -r .log.entries[].request.url | awk -F\/ '{print $3}' | sort | uniq)

for d in $DOMAINS; do dig +short $d ; done > $1.allrecords

for d in $DOMAINS; do dig $d soa | grep SOA | grep -v '^;' | awk '{print $5}'; done > $1.soa

for d in $(cat $1.allrecords | grep [[:alpha:]]); do dig $d soa | grep SOA | grep -v '^;' | awk '{print $5}' ; done > $1.allrecords.soa

cat $1.allrecords.soa $1.soa | sort | uniq
