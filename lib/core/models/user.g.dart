// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    userId: json['user_id'] as String,
    nickname: json['nickname'] as String? ?? '',
    profileUrl: json['profile_url'] as String?,
    connectionStatus: _$enumDecodeNullable(
            _$UserConnectionStatusEnumMap, json['connection_status'],
            unknownValue: UserConnectionStatus.notAvailable) ??
        UserConnectionStatus.notAvailable,
    lastSeenAt: json['last_seen_at'] as int?,
    isActive: json['is_active'] as bool?,
    preferredLanguages: (json['preferred_languages'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    friendDiscoveryKey: json['friend_discovery_key'] as String?,
    friendName: json['friend_name'] as String?,
    discoveryKeys: (json['discovery_keys'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    metaData: (json['metadata'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
    requireAuth: json['require_auth_for_profile_image'] as bool? ?? false,
    sessionToken: json['session_token'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'user_id': instance.userId,
      'nickname': instance.nickname,
      'profile_url': instance.profileUrl,
      'connection_status':
          _$UserConnectionStatusEnumMap[instance.connectionStatus],
      'last_seen_at': instance.lastSeenAt,
      'is_active': instance.isActive,
      'preferred_languages': instance.preferredLanguages,
      'friend_discovery_key': instance.friendDiscoveryKey,
      'friend_name': instance.friendName,
      'discovery_keys': instance.discoveryKeys,
      'metadata': instance.metaData,
      'require_auth_for_profile_image': instance.requireAuth,
      'session_token': instance.sessionToken,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$UserConnectionStatusEnumMap = {
  UserConnectionStatus.online: 'online',
  UserConnectionStatus.offline: 'offline',
  UserConnectionStatus.notAvailable: 'notAvailable',
};
