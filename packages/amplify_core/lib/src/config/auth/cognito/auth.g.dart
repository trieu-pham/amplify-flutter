// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAuthConfig _$CognitoAuthConfigFromJson(Map<String, dynamic> json) =>
    CognitoAuthConfig(
      oAuth: json['OAuth'] == null
          ? null
          : CognitoOAuthConfig.fromJson(json['OAuth'] as Map<String, dynamic>),
      socialProviders: (json['socialProviders'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SocialProviderEnumMap, e))
          .toList(),
      usernameAttributes: (json['usernameAttributes'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      signupAttributes: (json['signupAttributes'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      passwordProtectionSettings: json['passwordProtectionSettings'] == null
          ? null
          : PasswordProtectionSettings.fromJson(
              json['passwordProtectionSettings'] as Map<String, dynamic>),
      mfaConfiguration: $enumDecodeNullable(
          _$MfaConfigurationEnumMap, json['mfaConfiguration']),
      mfaTypes: (json['mfaTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MfaTypeEnumMap, e))
          .toList(),
      verificationMechanisms: (json['verificationMechanisms'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$CognitoAuthConfigToJson(CognitoAuthConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('OAuth', instance.oAuth?.toJson());
  writeNotNull(
      'socialProviders',
      instance.socialProviders
          ?.map((e) => _$SocialProviderEnumMap[e]!)
          .toList());
  writeNotNull(
      'usernameAttributes',
      instance.usernameAttributes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  writeNotNull(
      'signupAttributes',
      instance.signupAttributes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  writeNotNull('passwordProtectionSettings',
      instance.passwordProtectionSettings?.toJson());
  writeNotNull(
      'mfaConfiguration', _$MfaConfigurationEnumMap[instance.mfaConfiguration]);
  writeNotNull(
      'mfaTypes', instance.mfaTypes?.map((e) => _$MfaTypeEnumMap[e]!).toList());
  writeNotNull(
      'verificationMechanisms',
      instance.verificationMechanisms
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  return val;
}

const _$SocialProviderEnumMap = {
  SocialProvider.facebook: 'FACEBOOK',
  SocialProvider.google: 'GOOGLE',
  SocialProvider.amazon: 'AMAZON',
  SocialProvider.apple: 'APPLE',
};

const _$MfaConfigurationEnumMap = {
  MfaConfiguration.optional: 'OPTIONAL',
  MfaConfiguration.on: 'ON',
  MfaConfiguration.off: 'OFF',
};

const _$MfaTypeEnumMap = {
  MfaType.sms: 'SMS',
  MfaType.totp: 'TOTP',
};
