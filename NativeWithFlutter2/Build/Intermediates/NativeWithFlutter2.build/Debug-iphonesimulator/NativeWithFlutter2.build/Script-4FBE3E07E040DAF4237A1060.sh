#!/bin/sh
set -e
set -u
source "${SRCROOT}/../my_flutter/.ios/Flutter/flutter_export_environment.sh"
"$FLUTTER_ROOT"/packages/flutter_tools/bin/xcode_backend.sh build
