// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_message_list_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviousMessageListQuery _$PreviousMessageListQueryFromJson(
    Map<String, dynamic> json) {
  return PreviousMessageListQuery(
    channelType: _$enumDecode(_$ChannelTypeEnumMap, json['channel_type']),
    channelUrl: json['channel_url'] as String,
  )
    ..loading = json['loading'] as bool
    ..hasNext = json['has_next'] as bool
    ..token = json['token'] as String?
    ..limit = json['limit'] as int
    ..reverse = json['reverse'] as bool
    ..messageTypeFilter =
        _$enumDecode(_$MessageTypeFilterEnumMap, json['message_type_filter'])
    ..customTypesFilter = (json['custom_types_filter'] as List<dynamic>)
        .map((e) => e as String)
        .toList()
    ..senderIdsFilter = (json['sender_ids_filter'] as List<dynamic>)
        .map((e) => e as String)
        .toList()
    ..includeMetaArray = json['include_meta_array'] as bool
    ..includeReactions = json['include_reactions'] as bool
    ..includeParentMessageText = json['include_parent_message_text'] as bool
    ..includeReplies = json['include_replies'] as bool
    ..includeThreadInfo = json['include_thread_info'] as bool
    ..showSubChannelMessagesOnly =
        json['show_sub_channel_messages_only'] as bool;
}

Map<String, dynamic> _$PreviousMessageListQueryToJson(
        PreviousMessageListQuery instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'has_next': instance.hasNext,
      'token': instance.token,
      'limit': instance.limit,
      'channel_type': _$ChannelTypeEnumMap[instance.channelType],
      'channel_url': instance.channelUrl,
      'reverse': instance.reverse,
      'message_type_filter':
          _$MessageTypeFilterEnumMap[instance.messageTypeFilter],
      'custom_types_filter': instance.customTypesFilter,
      'sender_ids_filter': instance.senderIdsFilter,
      'include_meta_array': instance.includeMetaArray,
      'include_reactions': instance.includeReactions,
      'include_parent_message_text': instance.includeParentMessageText,
      'include_replies': instance.includeReplies,
      'include_thread_info': instance.includeThreadInfo,
      'show_sub_channel_messages_only': instance.showSubChannelMessagesOnly,
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

const _$ChannelTypeEnumMap = {
  ChannelType.group: 'group',
  ChannelType.open: 'open',
};

const _$MessageTypeFilterEnumMap = {
  MessageTypeFilter.all: null,
  MessageTypeFilter.user: 'MESG',
  MessageTypeFilter.file: 'FILE',
  MessageTypeFilter.admin: 'ADMN',
};
