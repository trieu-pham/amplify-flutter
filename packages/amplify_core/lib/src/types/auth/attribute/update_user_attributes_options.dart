/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

/// {@template amplify_core.update_user_attributes_options}
/// The shared update user attributes options among all Auth plugins.
/// {@endtemplate}
abstract class UpdateUserAttributesOptions {
  /// {@macro amplify_core.update_user_attributes_options}
  const UpdateUserAttributesOptions();

  /// Serialize the object to a map.
  Map<String, Object?> serializeAsMap();
}