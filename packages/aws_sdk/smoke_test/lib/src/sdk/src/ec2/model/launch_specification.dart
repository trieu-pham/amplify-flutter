// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_monitoring_enabled.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement.dart';

part 'launch_specification.g.dart';

/// Describes the launch specification for an instance.
abstract class LaunchSpecification
    with _i1.AWSEquatable<LaunchSpecification>
    implements Built<LaunchSpecification, LaunchSpecificationBuilder> {
  /// Describes the launch specification for an instance.
  factory LaunchSpecification({
    String? userData,
    List<GroupIdentifier>? securityGroups,
    String? addressingType,
    List<BlockDeviceMapping>? blockDeviceMappings,
    bool? ebsOptimized,
    IamInstanceProfileSpecification? iamInstanceProfile,
    String? imageId,
    InstanceType? instanceType,
    String? kernelId,
    String? keyName,
    List<InstanceNetworkInterfaceSpecification>? networkInterfaces,
    SpotPlacement? placement,
    String? ramdiskId,
    String? subnetId,
    RunInstancesMonitoringEnabled? monitoring,
  }) {
    ebsOptimized ??= false;
    return _$LaunchSpecification._(
      userData: userData,
      securityGroups:
          securityGroups == null ? null : _i2.BuiltList(securityGroups),
      addressingType: addressingType,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i2.BuiltList(blockDeviceMappings),
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      imageId: imageId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      networkInterfaces:
          networkInterfaces == null ? null : _i2.BuiltList(networkInterfaces),
      placement: placement,
      ramdiskId: ramdiskId,
      subnetId: subnetId,
      monitoring: monitoring,
    );
  }

  /// Describes the launch specification for an instance.
  factory LaunchSpecification.build(
          [void Function(LaunchSpecificationBuilder) updates]) =
      _$LaunchSpecification;

  const LaunchSpecification._();

  static const List<_i3.SmithySerializer<LaunchSpecification>> serializers = [
    LaunchSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchSpecificationBuilder b) {
    b.ebsOptimized = false;
  }

  /// The base64-encoded user data that instances use when starting up. User data is limited to 16 KB.
  String? get userData;

  /// The IDs of the security groups.
  _i2.BuiltList<GroupIdentifier>? get securityGroups;

  /// Deprecated.
  String? get addressingType;

  /// The block device mapping entries.
  _i2.BuiltList<BlockDeviceMapping>? get blockDeviceMappings;

  /// Indicates whether the instance is optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  ///
  /// Default: `false`
  bool get ebsOptimized;

  /// The IAM instance profile.
  IamInstanceProfileSpecification? get iamInstanceProfile;

  /// The ID of the AMI.
  String? get imageId;

  /// The instance type. Only one instance type can be specified.
  InstanceType? get instanceType;

  /// The ID of the kernel.
  String? get kernelId;

  /// The name of the key pair.
  String? get keyName;

  /// The network interfaces. If you specify a network interface, you must specify subnet IDs and security group IDs using the network interface.
  _i2.BuiltList<InstanceNetworkInterfaceSpecification>? get networkInterfaces;

  /// The placement information for the instance.
  SpotPlacement? get placement;

  /// The ID of the RAM disk.
  String? get ramdiskId;

  /// The ID of the subnet in which to launch the instance.
  String? get subnetId;

  /// Describes the monitoring of an instance.
  RunInstancesMonitoringEnabled? get monitoring;
  @override
  List<Object?> get props => [
        userData,
        securityGroups,
        addressingType,
        blockDeviceMappings,
        ebsOptimized,
        iamInstanceProfile,
        imageId,
        instanceType,
        kernelId,
        keyName,
        networkInterfaces,
        placement,
        ramdiskId,
        subnetId,
        monitoring,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchSpecification')
      ..add(
        'userData',
        '***SENSITIVE***',
      )
      ..add(
        'securityGroups',
        securityGroups,
      )
      ..add(
        'addressingType',
        addressingType,
      )
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
      )
      ..add(
        'ebsOptimized',
        ebsOptimized,
      )
      ..add(
        'iamInstanceProfile',
        iamInstanceProfile,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'kernelId',
        kernelId,
      )
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'networkInterfaces',
        networkInterfaces,
      )
      ..add(
        'placement',
        placement,
      )
      ..add(
        'ramdiskId',
        ramdiskId,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'monitoring',
        monitoring,
      );
    return helper.toString();
  }
}

class LaunchSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchSpecification> {
  const LaunchSpecificationEc2QuerySerializer() : super('LaunchSpecification');

  @override
  Iterable<Type> get types => const [
        LaunchSpecification,
        _$LaunchSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'userData':
          result.userData = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupSet':
          result.securityGroups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GroupIdentifier)],
            ),
          ) as _i2.BuiltList<GroupIdentifier>));
        case 'addressingType':
          result.addressingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(BlockDeviceMapping)],
            ),
          ) as _i2.BuiltList<BlockDeviceMapping>));
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'iamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IamInstanceProfileSpecification),
          ) as IamInstanceProfileSpecification));
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'kernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'keyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceSet':
          result.networkInterfaces.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceNetworkInterfaceSpecification)],
            ),
          ) as _i2.BuiltList<InstanceNetworkInterfaceSpecification>));
        case 'placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotPlacement),
          ) as SpotPlacement));
        case 'ramdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RunInstancesMonitoringEnabled),
          ) as RunInstancesMonitoringEnabled));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchSpecification(
      :userData,
      :securityGroups,
      :addressingType,
      :blockDeviceMappings,
      :ebsOptimized,
      :iamInstanceProfile,
      :imageId,
      :instanceType,
      :kernelId,
      :keyName,
      :networkInterfaces,
      :placement,
      :ramdiskId,
      :subnetId,
      :monitoring
    ) = object;
    if (userData != null) {
      result$
        ..add(const _i3.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i3.XmlElementName('GroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(GroupIdentifier)],
          ),
        ));
    }
    if (addressingType != null) {
      result$
        ..add(const _i3.XmlElementName('AddressingType'))
        ..add(serializers.serialize(
          addressingType,
          specifiedType: const FullType(String),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i3.XmlElementName('BlockDeviceMapping'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(BlockDeviceMapping)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i3.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(IamInstanceProfileSpecification),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i3.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(InstanceType),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i3.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i3.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(InstanceNetworkInterfaceSpecification)],
          ),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i3.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(SpotPlacement),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i3.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i3.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(RunInstancesMonitoringEnabled),
        ));
    }
    return result$;
  }
}