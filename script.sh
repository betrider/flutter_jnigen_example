## jdk11 추천

# 참고링크 : https://medium.com/simform-engineering/jnigen-an-easy-way-to-access-platform-apis-cb1fd3101e33

# .apk 파일 생성
1.flutter build apk

# .c 파일 && .dart 파일 생성
2.dart run jnigen --config jnigen.yaml

# build.gradle(app) 에 cmake 연결
3.  externalNativeBuild {
        cmake {
            path "../../src/CMakeLists.txt"
        }
    }

# 실행
4.flutter run