LIB_NAME="BasicMath"

rm -rf build $LIB_NAME.xcframework

# For iOS Device
xcodebuild archive \
-scheme $LIB_NAME \
-workspace "${LIB_NAME}.xcworkspace" \
-sdk iphoneos \
-configuration Release \
-destination "generic/platform=iOS" \
-archivePath "./build/$LIB_NAME.framework-iphoneos.xcarchive" \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# For Simulators
xcodebuild archive \
-scheme $LIB_NAME \
-workspace "${LIB_NAME}.xcworkspace" \
-sdk iphoneos \
-configuration Release \
-destination "generic/platform=iOS Simulator" \
-archivePath "./build/$LIB_NAME.framework-iphonesimulator.xcarchive" \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Create XCFramework
xcodebuild -create-xcframework \
-framework "./build/$LIB_NAME.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/$LIB_NAME.framework" \
-framework "./build/$LIB_NAME.framework-iphoneos.xcarchive/Products/Library/Frameworks/$LIB_NAME.framework" \
-output "./$LIB_NAME.xcframework"
