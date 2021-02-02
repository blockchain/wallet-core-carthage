#!/bin/sh
#
#  scripts/carthage-update.sh
#
#  What It Does
#  ------------
#  Workaround: Carthage builds fails at xcrun lipo on Xcode 12
#  https://github.com/Carthage/Carthage/issues/3019
#  https://github.com/Carthage/Carthage/blob/master/Documentation/Xcode12Workaround.md

sh scripts/carthage.sh update --use-ssh --cache-builds --platform iOS
