import 'package:charity/core/di/get_it.dart';
import 'package:charity/core/router/app_router.dart';
import 'package:charity/core/theme/app_theme.dart';
import 'package:charity/features/auth/presentation/bloc/user_bloc.dart';
import 'package:charity/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    BlocProvider(
      create: (context) => getIt<UserBloc>(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: AppTheme.getTheme(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
