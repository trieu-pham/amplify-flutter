// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_analytics_pinpoint_example/amplify_outputs.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

/// Static key/value storage for use in integration tests.
///
/// Must be static to mimic the behavior of iOS/Android which persist keys
/// between relaunches (e.g. between test groups).
SecureStorageInterface setupAndCreateMockPersistedSecuredStorage({
  String? endpointId,
}) {
  final main = amplifyEnvironments['main']!;
  final environment = jsonDecode(main) as Map;
  final pinpointAppId =
      environment['analytics']?['amazon_pinpoint']?['app_id'] as String;

  final storage = _MockSecureStorage();

  EndpointStore(pinpointAppId, storage).write(
    key: EndpointStoreKey.endpointId.name,
    value: endpointId ?? mockEndpointId,
  );

  return storage;
}

final String mockEndpointId = uuid();

class _MockSecureStorage implements SecureStorageInterface {
  _MockSecureStorage();

  final Map<String, String?> _data = {};

  @override
  FutureOr<String?> read({required String key}) {
    return _data[key];
  }

  @override
  FutureOr<void> write({required String key, required String value}) {
    _data[key] = value;
  }

  @override
  FutureOr<void> delete({required String key}) {
    _data.remove(key);
  }
}
