import 'package:flutter/material.dart';
import 'package:intelliinteriors/presentation/feedback_screen/feedback_screen.dart';
import 'package:intelliinteriors/presentation/task_list_screen/task_list_screen.dart';
import 'package:intelliinteriors/presentation/feedback_collection_screen/feedback_collection_screen.dart';
import 'package:intelliinteriors/presentation/budgeting_forecasting_screen/budgeting_forecasting_screen.dart';
import 'package:intelliinteriors/presentation/gantt_chart_screen/gantt_chart_screen.dart';
import 'package:intelliinteriors/presentation/live_chat_summary_screen/live_chat_summary_screen.dart';
import 'package:intelliinteriors/presentation/qa_tracker_screen/qa_tracker_screen.dart';
import 'package:intelliinteriors/presentation/kanban_board_screen/kanban_board_screen.dart';
import 'package:intelliinteriors/presentation/task_views_screen/task_views_screen.dart';
import 'package:intelliinteriors/presentation/time_tracker_screen/time_tracker_screen.dart';
import 'package:intelliinteriors/presentation/chat_screen/chat_screen.dart';
import 'package:intelliinteriors/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:intelliinteriors/presentation/signup_login_module_screen/signup_login_module_screen.dart';
import 'package:intelliinteriors/presentation/splash_screen/splash_screen.dart';
import 'package:intelliinteriors/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String feedbackScreen = '/feedback_screen';

  static const String taskListScreen = '/task_list_screen';

  static const String feedbackCollectionScreen = '/feedback_collection_screen';

  static const String budgetingForecastingScreen =
      '/budgeting_forecasting_screen';

  static const String ganttChartScreen = '/gantt_chart_screen';

  static const String liveChatSummaryScreen = '/live_chat_summary_screen';

  static const String qaTrackerScreen = '/qa_tracker_screen';

  static const String kanbanBoardScreen = '/kanban_board_screen';

  static const String taskViewsScreen = '/task_views_screen';

  static const String timeTrackerScreen = '/time_tracker_screen';

  static const String chatScreen = '/chat_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signupLoginModuleScreen = '/signup_login_module_screen';

  static const String splashScreen = '/splash_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        feedbackScreen: FeedbackScreen.builder,
        taskListScreen: TaskListScreen.builder,
        feedbackCollectionScreen: FeedbackCollectionScreen.builder,
        budgetingForecastingScreen: BudgetingForecastingScreen.builder,
        ganttChartScreen: GanttChartScreen.builder,
        liveChatSummaryScreen: LiveChatSummaryScreen.builder,
        qaTrackerScreen: QaTrackerScreen.builder,
        kanbanBoardScreen: KanbanBoardScreen.builder,
        taskViewsScreen: TaskViewsScreen.builder,
        timeTrackerScreen: TimeTrackerScreen.builder,
        chatScreen: ChatScreen.builder,
        signUpScreen: SignUpScreen.builder,
        signupLoginModuleScreen: SignupLoginModuleScreen.builder,
        splashScreen: SplashScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
