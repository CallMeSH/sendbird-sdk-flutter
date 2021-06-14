import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:sendbird_sdk/core/message/base_message.dart';
import 'package:sendbird_sdk/core/models/command.dart';

Future<Command> parseCommand(String data) async {
  return compute(parseCommandData, data);
}

Command parseCommandData(String data) {
  final cmdData = data.substring(0, 4);
  final payloadData = data.substring(4);
  final payload = jsonDecode(payloadData);
  final cmd = Command.fromJson(payload, cmdData);
  cmd.payload = payload;
  return cmd;
}

Future<BaseMessage?> parseMessage(Command data) async {
  return compute(parseMessageFromCommand, data);
}

BaseMessage? parseMessageFromCommand(Command command) {
  final payload = command.payload;
  return BaseMessage.msgFromJson(payload, type: command.cmd);
}
