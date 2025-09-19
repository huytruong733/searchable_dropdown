import 'package:flutter_test/flutter_test.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:searchable_dropdown/searchable_dropdown_platform_interface.dart';
import 'package:searchable_dropdown/searchable_dropdown_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSearchableDropdownPlatform
    with MockPlatformInterfaceMixin
    implements SearchableDropdownPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SearchableDropdownPlatform initialPlatform = SearchableDropdownPlatform.instance;

  test('$MethodChannelSearchableDropdown is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSearchableDropdown>());
  });

  test('getPlatformVersion', () async {
    
    //expect(await searchableDropdownPlugin.getPlatformVersion(), '42');
  });
}
