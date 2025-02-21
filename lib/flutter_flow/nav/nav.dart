import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? LoginControlWidget() : SignupNewWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? LoginControlWidget()
              : SignupNewWidget(),
          routes: [
            FFRoute(
              name: ForgotPasswordWidget.routeName,
              path: ForgotPasswordWidget.routePath,
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: AuthCreateWidget.routeName,
              path: AuthCreateWidget.routePath,
              builder: (context, params) => AuthCreateWidget(),
            ),
            FFRoute(
              name: AdminHomeWidget.routeName,
              path: AdminHomeWidget.routePath,
              builder: (context, params) => AdminHomeWidget(),
            ),
            FFRoute(
              name: MainContractsWidget.routeName,
              path: MainContractsWidget.routePath,
              builder: (context, params) => MainContractsWidget(),
            ),
            FFRoute(
              name: MainMessagesWidget.routeName,
              path: MainMessagesWidget.routePath,
              builder: (context, params) => MainMessagesWidget(),
            ),
            FFRoute(
              name: MainProfilePageWidget.routeName,
              path: MainProfilePageWidget.routePath,
              builder: (context, params) => MainProfilePageWidget(),
            ),
            FFRoute(
              name: UserDetailsWidget.routeName,
              path: UserDetailsWidget.routePath,
              asyncParams: {
                'user': getDoc(['users'], UsersRecord.fromSnapshot),
                'jobposting':
                    getDoc(['JobPosting'], JobPostingRecord.fromSnapshot),
                'applications':
                    getDoc(['Applications'], ApplicationsRecord.fromSnapshot),
              },
              builder: (context, params) => UserDetailsWidget(
                showBack: params.getParam(
                  'showBack',
                  ParamType.bool,
                ),
                user: params.getParam(
                  'user',
                  ParamType.Document,
                ),
                userref: params.getParam(
                  'userref',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                jobposting: params.getParam(
                  'jobposting',
                  ParamType.Document,
                ),
                applications: params.getParam(
                  'applications',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: EditProfileWidget.routeName,
              path: EditProfileWidget.routePath,
              builder: (context, params) => EditProfileWidget(),
            ),
            FFRoute(
              name: ProjectDetailsHealthAiWidget.routeName,
              path: ProjectDetailsHealthAiWidget.routePath,
              builder: (context, params) => ProjectDetailsHealthAiWidget(),
            ),
            FFRoute(
              name: InterviewsWidget.routeName,
              path: InterviewsWidget.routePath,
              asyncParams: {
                'user': getDoc(['users'], UsersRecord.fromSnapshot),
                'jobPosting':
                    getDoc(['JobPosting'], JobPostingRecord.fromSnapshot),
                'applicstions':
                    getDoc(['Applications'], ApplicationsRecord.fromSnapshot),
              },
              builder: (context, params) => InterviewsWidget(
                user: params.getParam(
                  'user',
                  ParamType.Document,
                ),
                jobPosting: params.getParam(
                  'jobPosting',
                  ParamType.Document,
                ),
                applicstions: params.getParam(
                  'applicstions',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: SearchPageWidget.routeName,
              path: SearchPageWidget.routePath,
              builder: (context, params) => SearchPageWidget(),
            ),
            FFRoute(
              name: MessagesDetailsWidget.routeName,
              path: MessagesDetailsWidget.routePath,
              asyncParams: {
                'chatref': getDoc(['chats'], ChatsRecord.fromSnapshot),
              },
              builder: (context, params) => MessagesDetailsWidget(
                chatref: params.getParam(
                  'chatref',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: DetailsWidget.routeName,
              path: DetailsWidget.routePath,
              builder: (context, params) => DetailsWidget(),
            ),
            FFRoute(
              name: AdminJobPostingsWidget.routeName,
              path: AdminJobPostingsWidget.routePath,
              builder: (context, params) => AdminJobPostingsWidget(),
            ),
            FFRoute(
              name: AdminInterviewsWidget.routeName,
              path: AdminInterviewsWidget.routePath,
              asyncParams: {
                'jobposts':
                    getDoc(['JobPosting'], JobPostingRecord.fromSnapshot),
              },
              builder: (context, params) => AdminInterviewsWidget(
                jobposting: params.getParam(
                  'jobposting',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['JobPosting'],
                ),
                jobposts: params.getParam(
                  'jobposts',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: AdminDriverManagerWidget.routeName,
              path: AdminDriverManagerWidget.routePath,
              builder: (context, params) => AdminDriverManagerWidget(),
            ),
            FFRoute(
              name: DriverHomeWidget.routeName,
              path: DriverHomeWidget.routePath,
              builder: (context, params) => DriverHomeWidget(),
            ),
            FFRoute(
              name: DriverJobListingsWidget.routeName,
              path: DriverJobListingsWidget.routePath,
              asyncParams: {
                'searchresults':
                    getDocList(['JobPosting'], JobPostingRecord.fromSnapshot),
              },
              builder: (context, params) => DriverJobListingsWidget(
                searchresults: params.getParam<JobPostingRecord>(
                  'searchresults',
                  ParamType.Document,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: MainSettingsWidget.routeName,
              path: MainSettingsWidget.routePath,
              builder: (context, params) => MainSettingsWidget(),
            ),
            FFRoute(
              name: DriverApplicationsWidget.routeName,
              path: DriverApplicationsWidget.routePath,
              builder: (context, params) => DriverApplicationsWidget(),
            ),
            FFRoute(
              name: LoginControlWidget.routeName,
              path: LoginControlWidget.routePath,
              builder: (context, params) => LoginControlWidget(),
            ),
            FFRoute(
              name: NotificationsWidget.routeName,
              path: NotificationsWidget.routePath,
              builder: (context, params) => NotificationsWidget(
                showBack: params.getParam(
                  'showBack',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: Chat2DetailsWidget.routeName,
              path: Chat2DetailsWidget.routePath,
              asyncParams: {
                'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
              },
              builder: (context, params) => Chat2DetailsWidget(
                chatRef: params.getParam(
                  'chatRef',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: Chat2MainWidget.routeName,
              path: Chat2MainWidget.routePath,
              builder: (context, params) => Chat2MainWidget(),
            ),
            FFRoute(
              name: Chat2InviteUsersWidget.routeName,
              path: Chat2InviteUsersWidget.routePath,
              asyncParams: {
                'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
              },
              builder: (context, params) => Chat2InviteUsersWidget(
                chatRef: params.getParam(
                  'chatRef',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: ImageDetailsWidget.routeName,
              path: ImageDetailsWidget.routePath,
              asyncParams: {
                'chatMessage':
                    getDoc(['chat_messages'], ChatMessagesRecord.fromSnapshot),
              },
              builder: (context, params) => ImageDetailsWidget(
                chatMessage: params.getParam(
                  'chatMessage',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: MainMessagesCopyWidget.routeName,
              path: MainMessagesCopyWidget.routePath,
              builder: (context, params) => MainMessagesCopyWidget(
                chatRef: params.getParam(
                  'chatRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['chats'],
                ),
              ),
            ),
            FFRoute(
              name: ChooseRoleWidget.routeName,
              path: ChooseRoleWidget.routePath,
              builder: (context, params) => ChooseRoleWidget(),
            ),
            FFRoute(
              name: MainMessagesDriverWidget.routeName,
              path: MainMessagesDriverWidget.routePath,
              asyncParams: {
                'user': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => MainMessagesDriverWidget(
                chatRef: params.getParam(
                  'chatRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['chats'],
                ),
                user: params.getParam(
                  'user',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: AdminOnboardCopyWidget.routeName,
              path: AdminOnboardCopyWidget.routePath,
              builder: (context, params) => AdminOnboardCopyWidget(),
            ),
            FFRoute(
              name: AdminOnboardCopyCopyWidget.routeName,
              path: AdminOnboardCopyCopyWidget.routePath,
              builder: (context, params) => AdminOnboardCopyCopyWidget(),
            ),
            FFRoute(
              name: AdminOnboardCopyCopy2Widget.routeName,
              path: AdminOnboardCopyCopy2Widget.routePath,
              builder: (context, params) => AdminOnboardCopyCopy2Widget(),
            ),
            FFRoute(
              name: SignupNewWidget.routeName,
              path: SignupNewWidget.routePath,
              builder: (context, params) => SignupNewWidget(),
            ),
            FFRoute(
              name: LoginNewWidget.routeName,
              path: LoginNewWidget.routePath,
              builder: (context, params) => LoginNewWidget(),
            ),
            FFRoute(
              name: CreateJob1Widget.routeName,
              path: CreateJob1Widget.routePath,
              builder: (context, params) => CreateJob1Widget(),
            ),
            FFRoute(
              name: CreateJob1CopyWidget.routeName,
              path: CreateJob1CopyWidget.routePath,
              asyncParams: {
                'job': getDoc(['JobPosting'], JobPostingRecord.fromSnapshot),
              },
              builder: (context, params) => CreateJob1CopyWidget(
                job: params.getParam(
                  'job',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: JobDetails2Widget.routeName,
              path: JobDetails2Widget.routePath,
              asyncParams: {
                'user': getDoc(['users'], UsersRecord.fromSnapshot),
                'jobposting':
                    getDoc(['JobPosting'], JobPostingRecord.fromSnapshot),
                'applications':
                    getDoc(['Applications'], ApplicationsRecord.fromSnapshot),
              },
              builder: (context, params) => JobDetails2Widget(
                showBack: params.getParam(
                  'showBack',
                  ParamType.bool,
                ),
                user: params.getParam(
                  'user',
                  ParamType.Document,
                ),
                userref: params.getParam(
                  'userref',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                jobposting: params.getParam(
                  'jobposting',
                  ParamType.Document,
                ),
                applications: params.getParam(
                  'applications',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: ChooseRoleCopyWidget.routeName,
              path: ChooseRoleCopyWidget.routePath,
              builder: (context, params) => ChooseRoleCopyWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signupNew';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Asset_2_1.png',
                      width: 240.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
