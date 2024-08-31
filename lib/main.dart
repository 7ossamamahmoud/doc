import 'package:doc/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() {
  initGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
