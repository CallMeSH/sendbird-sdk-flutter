## [3.1.0-nullsafety.1] - Jun 22, 2021
* Fixed `connectionStatus` mapping for user/sender/member
* Added HMS for push type
* Added `always_push` parameter for push registeration
* Improved stability

## [3.1.0-nullsafety] - Jun 22, 2021
* Fixed channel object to contain last message when invoking `onMessageReceived` callback
* Improved stability

## [3.0.14-nullsafety] - Jun 13, 2021
* Applied null-safety
* Updated dependencies
* Fixed `mostRepliesUsers` mapping in ThreadInfo
* Improved stability

## [3.0.13] - May 17, 2021
* Fixed file type mis mapping bug
* Added `cancelUploadingFileMessage` in `BaseChannel`
* Added `joinedAt` in `GroupChannel`
* Improved stability

## [3.0.12] - Apr 25, 2021
* Fixed to apply option to `SendbirdSdk` properly
* Fixed `sendFileMessage` progress inconsistency
* Improved stability

## [3.0.11] - Apr 22, 2021
* Added `nicknameStartWith` filter in `ApplicationListQuery`
* Updated pubspec and README
* Fixed typo

## [3.0.10] - Apr 19, 2021
* Fixed register token endpoint
* Fixed typo
* Dropped some suffix `~Filter` from `GroupChannelListQuery`
* Changed `FileInfo.fromUrl` parameter `mimeType` as optional (default is `image/jpeg`)
* Changed `getCurrentUser` to `currentUser` getter
* Improved stability

## [3.0.9]
* Fixed metaData mapping for `User`
* Renamed `ImageInfo` to `FileInfo`
* Renamed `markAsDelivered` parameter name from `payload` to `data`
* Renamed `PushTokenType` `gcm` to `fcm` 

## [3.0.8]
* Implemented `==` operator for channels, users and messages
* Fixed `getMessage` method
* Added `getMyMuteInfo` method in `BaseChannel`
* Renamed `GroupChannelSuperChannelFilter` and `GroupChannelPublicChannelFilter` to `SuperChannelFilter` and `PublicChannelFilter`
* Redefined error cases 
* Added rate limit (1 second) in `markAsRead` method
* Renamed `onChannelMetaData~` and `onChannelMetaCounter~` of channel event handler's method to `onMetaData~` and `onMetaCounter~`
* Renamed `addChannelHandler` `removeChannelHandler` and `getChannelHandler` to `addChannelEventHandler`, `removeChannelEventHandler` and `getChannelEventHandler` respectively
* Renamed `addConnectionHandler` `removeConnectionHandler` and `getConnectionHandler` to `addConnectionEventHandler`, `removeConnectionEventHandler` and `getConnectionEventHandler` respectively
* Renamed `onUpdateTotalUnreadMessageCount` method in `UserEventHandler` to `onTotalUnreadMessageCountUpdated`

## [3.0.7]
* Added `nickname` parameter in `connect` method
* Implmeneted json serializations for queries
* Fixed message change log bugs
* Updated user agent
* Updated README and fixed repo link
* Cleaned up import pattern

## [3.0.6]
* Renamed package `sendbirdsdk` to `sendbird_sdk`
* Cleaned up unused codes
* Improved stability

## [3.0.5]
* Fixed Admin message mapping
* Changed user property `isOnline` to `connectionStatus`
* Added `getCachedMetaData` method in `BaseChannel`
* Updated docs
* Improved stability

## [3.0.4]
* Added `GroupChannelMemberListQuery`
* Changed `refreshChannel` to `refresh` for channel
* Changed parameter type from `User` to `String` for `reportUser` on channel
* Fixed bugs on mapping sender
* Fixed bugs on sending file message
* Fixed bugs on caching 
* Improved stability

## [3.0.3]
* Changed return type of update messages (remove completion and use future)
* Accepted mimetype on `ImageInfo` 
* Improved stability

## [3.0.2] 
* Added member count events for ChannelEventHandler
* Added session refresh / expiration
* Changed method signatures for send / update / resend user and file message
* Handled file message sending asynchronously
* Added network awarness to reconnect
* Updated internal logic while reconnecting
* Refactored socket events
* Improved stability

## [3.0.1] Add missing features
* Added reactions
* Added file size limit
* Added thumbnail option for file message 
* Added `OGMetaData`, `OGImage` for open graph
* Added logging
* Added `PreviousMessageListQuery`
* Updated reference documentation
* Improved stability 

## [3.0.0] developer preview
* Developer preview
