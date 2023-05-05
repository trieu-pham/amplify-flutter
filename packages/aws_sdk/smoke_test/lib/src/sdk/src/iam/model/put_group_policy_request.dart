// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.put_group_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_group_policy_request.g.dart';

abstract class PutGroupPolicyRequest
    with
        _i1.HttpInput<PutGroupPolicyRequest>,
        _i2.AWSEquatable<PutGroupPolicyRequest>
    implements Built<PutGroupPolicyRequest, PutGroupPolicyRequestBuilder> {
  factory PutGroupPolicyRequest({
    required String groupName,
    required String policyName,
    required String policyDocument,
  }) {
    return _$PutGroupPolicyRequest._(
      groupName: groupName,
      policyName: policyName,
      policyDocument: policyDocument,
    );
  }

  factory PutGroupPolicyRequest.build(
          [void Function(PutGroupPolicyRequestBuilder) updates]) =
      _$PutGroupPolicyRequest;

  const PutGroupPolicyRequest._();

  factory PutGroupPolicyRequest.fromRequest(
    PutGroupPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PutGroupPolicyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutGroupPolicyRequestBuilder b) {}

  /// The name of the group to associate the policy with.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-.
  String get groupName;

  /// The name of the policy document.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get policyName;

  /// The policy document.
  ///
  /// You must provide policies in JSON format in IAM. However, for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to = IAM.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String get policyDocument;
  @override
  PutGroupPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        policyName,
        policyDocument,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutGroupPolicyRequest');
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'policyName',
      policyName,
    );
    helper.add(
      'policyDocument',
      policyDocument,
    );
    return helper.toString();
  }
}

class PutGroupPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<PutGroupPolicyRequest> {
  const PutGroupPolicyRequestAwsQuerySerializer()
      : super('PutGroupPolicyRequest');

  @override
  Iterable<Type> get types => const [
        PutGroupPolicyRequest,
        _$PutGroupPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PutGroupPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutGroupPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as PutGroupPolicyRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'PutGroupPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        payload.groupName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        payload.policyName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('PolicyDocument'))
      ..add(serializers.serialize(
        payload.policyDocument,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}