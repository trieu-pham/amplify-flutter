// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;

/// {@template storage.amplify_storage_s3.remove_many_result}
/// The result returned by the Storage S3 plugin `removeMany` API.
/// {@endtemplate}
class S3RemoveManyResult extends StorageRemoveManyResult<S3Item, s3.Error> {
  /// {@macro storage.amplify_storage_s3.remove_many_result}
  const S3RemoveManyResult({
    required super.removedItems,
    super.errors = const [],
  });
}
