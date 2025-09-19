import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'searchable_dropdown_platform_interface.dart';

/// An implementation of [SearchableDropdownPlatform] that uses method channels.
class MethodChannelSearchableDropdown extends SearchableDropdownPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('searchable_dropdown');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
