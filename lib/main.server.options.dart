// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:cuapps_website/pages/cu_chat/cu_chat_features.dart'
    as _cu_chat_features;
import 'package:cuapps_website/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _app.App: ClientTarget<_app.App>('app'),
    _cu_chat_features.CuChatFeatures:
        ClientTarget<_cu_chat_features.CuChatFeatures>('cu_chat_features'),
  },
);
