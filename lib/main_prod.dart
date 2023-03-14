import 'dart:async';

import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:trackingworks/run_app.dart';

import 'config/config.dart';
import 'di/injection.dart';

Future<void> main() async {
  F.flavor = Flavor.PROD;
  WidgetsFlutterBinding.ensureInitialized();
  await setupGlobalDI();
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://eef76dbaace44f61b1fb8bf7fbc990a1@o910762.ingest.sentry.io/5989350';
      options.debug = kDebugMode;
      options.environment = 'BeetleHR';
      options.release = GetIt.I<GlobalConfiguration>().getValue('version_name');
      options.sampleRate = 0.25;
    },
    appRunner: () => runAppWithRecordError(),
  );
}
