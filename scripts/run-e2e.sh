#!/bin/sh
cd $(dirname $0)/..

flutter drive --target test_driver/$1.dart
