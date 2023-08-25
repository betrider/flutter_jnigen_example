// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: file_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_shown_name

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

// Auto-generated initialization code.

final ffi.Pointer<T> Function<T extends ffi.NativeType>(String sym) jniLookup =
    ProtectedJniExtensions.initGeneratedLibrary("battery_utils");

/// from: com.battery.utils.BatteryUtils
class BatteryUtils extends jni.JObject {
  @override
  late final jni.JObjType<BatteryUtils> $type = type;

  BatteryUtils.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $BatteryUtilsType();
  static final _ctor = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "BatteryUtils__ctor")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(android.app.Activity activity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory BatteryUtils(
    jni.JObject activity,
  ) {
    return BatteryUtils.fromRef(_ctor(activity.reference).object);
  }

  static final _getBatteryStatus = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "BatteryUtils__getBatteryStatus")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getBatteryStatus()
  int getBatteryStatus() {
    return _getBatteryStatus(reference).integer;
  }
}

class $BatteryUtilsType extends jni.JObjType<BatteryUtils> {
  const $BatteryUtilsType();

  @override
  String get signature => r"Lcom/battery/utils/BatteryUtils;";

  @override
  BatteryUtils fromRef(jni.JObjectPtr ref) => BatteryUtils.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($BatteryUtilsType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($BatteryUtilsType) &&
        other is $BatteryUtilsType;
  }
}
