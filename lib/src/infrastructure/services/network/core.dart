// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Project imports:
import '../../utils/helpers.dart';
import 'connection_service.dart';

abstract interface class RestartableStateInterface {
  Future<void> loadState();
  Future<void> reloadState();
  bool shouldReload();
}

mixin ConnectionAwareMixin<T extends StatefulWidget> on State<T> {
  bool hasConnection = false;
  bool get initialConnectionState;
  Stream<bool> get onConnectivityChanged;
  StreamSubscription<bool>? _subscription;
  void onConnectionStateChange();

  @override
  void initState() {
    super.initState();
    hasConnection = initialConnectionState;
    if (!hasConnection) {
      Future.delayed(
        const Duration(milliseconds: 100),
        () => Get.showSnackbar(internetSnackBar),
      );
    }
    _subscription = onConnectivityChanged.listen(_onChangeConnection);
  }

  void _onChangeConnection(bool result) {
    if (hasConnection != result && !result) {
      Get.showSnackbar(internetSnackBar);
    }
    if (result) {
      Get.closeCurrentSnackbar();
    }
    hasConnection = result;
    onConnectionStateChange();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _subscription = null;
    super.dispose();
  }
}
mixin DefaultConnectionAwareStateMixin<T extends StatefulWidget>
    on ConnectionAwareMixin<T> implements RestartableStateInterface {
  @override
  Stream<bool> get onConnectivityChanged =>
      Get.find<ConnectivityService>().onConnectivityChanged;

  @override
  bool get initialConnectionState =>
      Get.find<ConnectivityService>().hasActiveConnection;

  @override
  void initState() {
    super.initState();
    reloadState();
  }

  @override
  Future<void> reloadState() async {
    await loadState();
  }

  @override
  Future<void> loadState() async {
    setState(() {});
  }

  @override
  bool shouldReload() => true;
  @override
  void onConnectionStateChange() {
    if (hasConnection && shouldReload()) {
      reloadState();
    } else {
      setState(() {});
    }
  }

  Widget buildPage(BuildContext context);
  @protected
  @override
  Widget build(BuildContext context) {
    if (hasConnection) {
      return buildPage(context);
    } else {
      // Если нужно полностью закрыть приложение и высветить скрин ->
      // return const NoConnectionScreen();
      return buildPage(context);
    }
  }
}
