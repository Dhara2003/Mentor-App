import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

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
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const LoginPageWidget() : const SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const LoginPageWidget()
              : const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'EntrepreneurDashboard',
          path: '/entrepreneurDashboard',
          builder: (context, params) => const EntrepreneurDashboardWidget(),
        ),
        FFRoute(
          name: 'loginPage',
          path: '/loginPage',
          builder: (context, params) => const LoginPageWidget(),
        ),
        FFRoute(
          name: 'forgotPasswordPage',
          path: '/forgotPasswordPage',
          builder: (context, params) => const ForgotPasswordPageWidget(),
        ),
        FFRoute(
          name: 'sessionManagementMentorPage',
          path: '/sessionManagementMentorPage',
          builder: (context, params) => const SessionManagementMentorPageWidget(),
        ),
        FFRoute(
          name: 'Ideasubmission',
          path: '/ideasubmission',
          builder: (context, params) => IdeasubmissionWidget(
            selectedPageIndex: params.getParam(
              'selectedPageIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ScheduledSessionsPage',
          path: '/scheduledSessionsPage',
          builder: (context, params) => const ScheduledSessionsPageWidget(),
        ),
        FFRoute(
          name: 'RescheduleSessionPage',
          path: '/rescheduleSessionPage',
          builder: (context, params) => const RescheduleSessionPageWidget(),
        ),
        FFRoute(
          name: 'PendingSessionRequestPage',
          path: '/pendingSessionRequestPage',
          builder: (context, params) => const PendingSessionRequestPageWidget(),
        ),
        FFRoute(
          name: 'SessionAppointmentPage',
          path: '/sessionAppointmentPage',
          builder: (context, params) => const SessionAppointmentPageWidget(),
        ),
        FFRoute(
          name: 'ResourceManagementMentorPage',
          path: '/resourceManagementMentorPage',
          builder: (context, params) => const ResourceManagementMentorPageWidget(),
        ),
        FFRoute(
          name: 'MentorProfile1',
          path: '/mentorProfile1',
          builder: (context, params) => const MentorProfile1Widget(),
        ),
        FFRoute(
          name: 'mentorProfile2',
          path: '/mentorProfile2',
          builder: (context, params) => const MentorProfile2Widget(),
        ),
        FFRoute(
          name: 'Ideasubmittedsuccessfully',
          path: '/ideasubmittedsuccessfully',
          builder: (context, params) => const IdeasubmittedsuccessfullyWidget(),
        ),
        FFRoute(
          name: 'Sessionrequestedsuccessfully',
          path: '/sessionrequestedsuccessfully',
          builder: (context, params) => const SessionrequestedsuccessfullyWidget(),
        ),
        FFRoute(
          name: 'Rescheduleconfirmationpage',
          path: '/rescheduleconfirmationpage',
          builder: (context, params) => const RescheduleconfirmationpageWidget(),
        ),
        FFRoute(
          name: 'Reschedulesession5',
          path: '/reschedulesession5',
          builder: (context, params) => const Reschedulesession5Widget(),
        ),
        FFRoute(
          name: 'notificationAdminPage',
          path: '/notificationAdminPage',
          builder: (context, params) => const NotificationAdminPageWidget(),
        ),
        FFRoute(
          name: 'ReviewRating',
          path: '/reviewRating',
          builder: (context, params) => const ReviewRatingWidget(),
        ),
        FFRoute(
          name: 'Ressession',
          path: '/ressession',
          builder: (context, params) => const RessessionWidget(),
        ),
        FFRoute(
          name: 'CreateSession1',
          path: '/createSession1',
          builder: (context, params) => const CreateSession1Widget(),
        ),
        FFRoute(
          name: 'Reschedulesession3',
          path: '/reschedulesession3',
          builder: (context, params) => const Reschedulesession3Widget(),
        ),
        FFRoute(
          name: 'Reschedulesession4',
          path: '/reschedulesession4',
          builder: (context, params) => const Reschedulesession4Widget(),
        ),
        FFRoute(
          name: 'AdminHomepage',
          path: '/adminHomepage',
          builder: (context, params) => const AdminHomepageWidget(),
        ),
        FFRoute(
          name: 'Entrepreneurlist',
          path: '/entrepreneurlist',
          builder: (context, params) => const EntrepreneurlistWidget(),
        ),
        FFRoute(
          name: 'MentorProfileCopy',
          path: '/mentorProfileCopy',
          builder: (context, params) => const MentorProfileCopyWidget(),
        ),
        FFRoute(
          name: 'mentorProfile5Copy',
          path: '/mentorProfile5Copy',
          builder: (context, params) => const MentorProfile5CopyWidget(),
        ),
        FFRoute(
          name: 'ContentManagement',
          path: '/contentManagement',
          builder: (context, params) => const ContentManagementWidget(),
        ),
        FFRoute(
          name: 'OnetoOneChat',
          path: '/onetoOneChat',
          builder: (context, params) => const OnetoOneChatWidget(),
        ),
        FFRoute(
          name: 'ActiveMatch',
          path: '/activeMatch',
          builder: (context, params) => const ActiveMatchWidget(),
        ),
        FFRoute(
          name: 'MessageRecordPage',
          path: '/messageRecordPage',
          builder: (context, params) => const MessageRecordPageWidget(),
        ),
        FFRoute(
          name: 'onboardingPage',
          path: '/onboardingPage',
          builder: (context, params) => const OnboardingPageWidget(),
        ),
        FFRoute(
          name: 'AppSettings',
          path: '/appSettings',
          builder: (context, params) => const AppSettingsWidget(),
        ),
        FFRoute(
          name: 'ChatDatabasePage',
          path: '/chatDatabasePage',
          builder: (context, params) => const ChatDatabasePageWidget(),
        ),
        FFRoute(
          name: 'Goaltracker',
          path: '/goaltracker',
          builder: (context, params) => const GoaltrackerWidget(),
        ),
        FFRoute(
          name: 'MentorDashboard',
          path: '/mentorDashboard',
          builder: (context, params) => const MentorDashboardWidget(),
        ),
        FFRoute(
          name: 'PastSessionPage',
          path: '/pastSessionPage',
          builder: (context, params) => const PastSessionPageWidget(),
        ),
        FFRoute(
          name: 'RatingsAndReviewEntrepreneurPage',
          path: '/ratingsAndReviewEntrepreneurPage',
          builder: (context, params) =>
              const RatingsAndReviewEntrepreneurPageWidget(),
        ),
        FFRoute(
          name: 'mentorsLists',
          path: '/mentorsLists',
          builder: (context, params) => const MentorsListsWidget(),
        ),
        FFRoute(
          name: 'UpcomingSessionPage',
          path: '/upcomingSessionPage',
          builder: (context, params) => const UpcomingSessionPageWidget(),
        ),
        FFRoute(
          name: 'BusinessModelPage',
          path: '/businessModelPage',
          builder: (context, params) => const BusinessModelPageWidget(),
        ),
        FFRoute(
          name: 'EntrepreneurProfilePage',
          path: '/entrepreneurProfilePage',
          builder: (context, params) => EntrepreneurProfilePageWidget(
            selectedPageIndex: params.getParam(
              'selectedPageIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'EntrepreneurlistPage',
          path: '/entrepreneurlistPage',
          builder: (context, params) => const EntrepreneurlistPageWidget(),
        ),
        FFRoute(
          name: 'OnetoOneChatCopy',
          path: '/onetoOneChatCopy',
          builder: (context, params) => const OnetoOneChatCopyWidget(),
        ),
        FFRoute(
          name: 'sessionManagementEntrepreneurPage',
          path: '/sessionManagementEntrepreneurPage',
          builder: (context, params) =>
              const SessionManagementEntrepreneurPageWidget(),
        ),
        FFRoute(
          name: 'ResourceManagementEntrepreneurPage',
          path: '/resourceManagementEntrepreneurPage',
          builder: (context, params) =>
              const ResourceManagementEntrepreneurPageWidget(),
        ),
        FFRoute(
          name: 'notificationEntrepreneurPage',
          path: '/notificationEntrepreneurPage',
          builder: (context, params) => const NotificationEntrepreneurPageWidget(),
        ),
        FFRoute(
          name: 'AdminProfilePage',
          path: '/adminProfilePage',
          builder: (context, params) => AdminProfilePageWidget(
            selectedPageIndex: params.getParam(
              'selectedPageIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ResourceManagementAdminPage',
          path: '/resourceManagementAdminPage',
          builder: (context, params) => const ResourceManagementAdminPageWidget(),
        ),
        FFRoute(
          name: 'EntrepreneurChatDatabase',
          path: '/entrepreneurChatDatabase',
          builder: (context, params) => const EntrepreneurChatDatabaseWidget(),
        ),
        FFRoute(
          name: 'notificationMentorPage',
          path: '/notificationMentorPage',
          builder: (context, params) => const NotificationMentorPageWidget(),
        ),
        FFRoute(
          name: 'sessionManagementAdminPage',
          path: '/sessionManagementAdminPage',
          builder: (context, params) => const SessionManagementAdminPageWidget(),
        ),
        FFRoute(
          name: 'RatingsAndReviewMentorPage',
          path: '/ratingsAndReviewMentorPage',
          builder: (context, params) => const RatingsAndReviewMentorPageWidget(),
        ),
        FFRoute(
          name: 'RatingsAndReviewAdminPage',
          path: '/ratingsAndReviewAdminPage',
          builder: (context, params) => const RatingsAndReviewAdminPageWidget(),
        ),
        FFRoute(
          name: 'FAQAdminPage',
          path: '/fAQAdminPage',
          builder: (context, params) => const FAQAdminPageWidget(),
        ),
        FFRoute(
          name: 'EntrepreneurProfile1Page',
          path: '/entrepreneurProfile1Page',
          builder: (context, params) => const EntrepreneurProfile1PageWidget(),
        ),
        FFRoute(
          name: 'EntrepreneurProfile2Page',
          path: '/entrepreneurProfile2Page',
          builder: (context, params) => const EntrepreneurProfile2PageWidget(),
        ),
        FFRoute(
          name: 'SessionRescheduleConfirmation',
          path: '/sessionRescheduleConfirmation',
          builder: (context, params) => const SessionRescheduleConfirmationWidget(),
        ),
        FFRoute(
          name: 'MentorProfilePage',
          path: '/mentorProfilePage',
          builder: (context, params) => MentorProfilePageWidget(
            selectedPageIndex: params.getParam(
              'selectedPageIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'MentorUpdateProfilePage',
          path: '/mentorUpdateProfilePage',
          builder: (context, params) => MentorUpdateProfilePageWidget(
            selectedPageIndex: params.getParam(
              'selectedPageIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'EntrepreneurUpdateProfilePage',
          path: '/entrepreneurUpdateProfilePage',
          builder: (context, params) => EntrepreneurUpdateProfilePageWidget(
            selectedPageIndex: params.getParam(
              'selectedPageIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'CustomerSegmentPage',
          path: '/customerSegmentPage',
          builder: (context, params) => const CustomerSegmentPageWidget(),
        ),
        FFRoute(
          name: 'splashScreen',
          path: '/splashScreen',
          builder: (context, params) => const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'signUpPage',
          path: '/signUpPage',
          builder: (context, params) => const SignUpPageWidget(),
        ),
        FFRoute(
          name: 'KeyPartnersPage',
          path: '/keyPartnersPage',
          builder: (context, params) => const KeyPartnersPageWidget(),
        ),
        FFRoute(
          name: 'KeyResourcesPage',
          path: '/keyResourcesPage',
          builder: (context, params) => const KeyResourcesPageWidget(),
        ),
        FFRoute(
          name: 'KeyActivitiesPage',
          path: '/keyActivitiesPage',
          builder: (context, params) => const KeyActivitiesPageWidget(),
        ),
        FFRoute(
          name: 'CustomerRelationsPage',
          path: '/customerRelationsPage',
          builder: (context, params) => const CustomerRelationsPageWidget(),
        ),
        FFRoute(
          name: 'CostStructurePage',
          path: '/costStructurePage',
          builder: (context, params) => const CostStructurePageWidget(),
        ),
        FFRoute(
          name: 'channelsPage',
          path: '/channelsPage',
          builder: (context, params) => const ChannelsPageWidget(),
        ),
        FFRoute(
          name: 'revenueStreamPage',
          path: '/revenueStreamPage',
          builder: (context, params) => const RevenueStreamPageWidget(),
        ),
        FFRoute(
          name: 'ValuePrepositionPage',
          path: '/ValuePrepositionPage',
          builder: (context, params) => const ValuePrepositionPageWidget(),
        ),
        FFRoute(
          name: 'FAQMentorsPage',
          path: '/fAQMentorsPage',
          builder: (context, params) => const FAQMentorsPageWidget(),
        ),
        FFRoute(
          name: 'FAQEntrepeneurPage',
          path: '/fAQEntrepeneurPage',
          builder: (context, params) => const FAQEntrepeneurPageWidget(),
        ),
        FFRoute(
          name: 'entrepreneurCreateBizProfilePage',
          path: '/entrepreneurCreateBizProfilePage',
          builder: (context, params) => EntrepreneurCreateBizProfilePageWidget(
            selectedPageIndex: params.getParam(
              'selectedPageIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'goalSetter',
          path: '/goaltrackerSelectionPageCopy',
          builder: (context, params) => const GoalSetterWidget(),
        ),
        FFRoute(
          name: 'EntrepreneurDashboardCopy',
          path: '/entrepreneurDashboardCopy',
          builder: (context, params) => const EntrepreneurDashboardCopyWidget(),
        ),
        FFRoute(
          name: 'chatEntrepreneurPage',
          path: '/chatEntrepreneurPage',
          builder: (context, params) => ChatEntrepreneurPageWidget(
            receiveChat: params.getParam(
              'receiveChat',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['chats'],
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
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
            return '/splashScreen';
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
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
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
