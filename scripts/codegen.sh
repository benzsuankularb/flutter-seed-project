#!/bin/sh
cd $(dirname $0)/..

flutter packages pub run build_runner watch --delete-conflicting-outputs
