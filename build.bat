@ECHO OFF
@SET FLUTTER_VERSION=stable
@docker build --no-cache --force-rm --squash --compress ^
    --file Dockerfile ^
    --build-arg FLUTTER_VERSION="%FLUTTER_VERSION%" ^
    --tag plugfox/flutter:base-%FLUTTER_VERSION% .
rem docker run --rm -it --user root -v ${PWD}:/build --workdir /build plugfox/flutter:base-stable bash
rem docker push plugfox/flutter:base-stable