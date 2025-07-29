import 'package:client/src/constants/app_const.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class CredentialsNotifier extends Notifier<Credentials> {
  @override
  build() {
    final credentialsBox = Hive.box<Credentials>(AppConst().credentialsBox);
    final credentials = credentialsBox.get(AppConst().credentialsKey);
    return credentials!;
  }
}

final credentialsProvider = NotifierProvider<CredentialsNotifier, Credentials>(
  CredentialsNotifier.new,
);
