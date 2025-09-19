import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'searchable_dropdown_method_channel.dart';

abstract class SearchableDropdownPlatform extends PlatformInterface {
  /// Constructs a SearchableDropdownPlatform.
  SearchableDropdownPlatform() : super(token: _token);

  static final Object _token = Object();

  static SearchableDropdownPlatform _instance = MethodChannelSearchableDropdown();

  /// The default instance of [SearchableDropdownPlatform] to use.
  ///
  /// Defaults to [MethodChannelSearchableDropdown].
  static SearchableDropdownPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SearchableDropdownPlatform] when
  /// they register themselves.
  static set instance(SearchableDropdownPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
