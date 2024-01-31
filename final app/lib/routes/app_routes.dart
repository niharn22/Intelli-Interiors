import 'package:flutter/material.dart';
import 'package:intellijinteriors/presentation/feedback_screen/feedback_screen.dart';
import 'package:intellijinteriors/presentation/feedback_collection_screen/feedback_collection_screen.dart';
import 'package:intellijinteriors/presentation/task_list_screen/task_list_screen.dart';
import 'package:intellijinteriors/presentation/budgeting_forecasting_screen/budgeting_forecasting_screen.dart';
import 'package:intellijinteriors/presentation/gantt_chart_screen/gantt_chart_screen.dart';
import 'package:intellijinteriors/presentation/live_chat_summary_screen/live_chat_summary_screen.dart';
import 'package:intellijinteriors/presentation/qa_tracker_screen/qa_tracker_screen.dart';
import 'package:intellijinteriors/presentation/kanban_board_screen/kanban_board_screen.dart';
import 'package:intellijinteriors/presentation/task_views_screen/task_views_screen.dart';
import 'package:intellijinteriors/presentation/time_tracker_screen/time_tracker_screen.dart';
import 'package:intellijinteriors/presentation/chatbot_screen/chatbot_screen.dart';
import 'package:intellijinteriors/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:intellijinteriors/presentation/signup_login_module_screen/signup_login_module_screen.dart';
import 'package:intellijinteriors/presentation/splash_screen/splash_screen.dart';
import 'package:intellijinteriors/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String feedbackScreen = '/feedback_screen';

  static const String feedbackCollectionScreen = '/feedback_collection_screen';

  static const String taskListScreen = '/task_list_screen';

  static const String budgetingForecastingScreen =
      '/budgeting_forecasting_screen';

  static const String ganttChartScreen = '/gantt_chart_screen';

  static const String liveChatSummaryScreen = '/live_chat_summary_screen';

  static const String qaTrackerScreen = '/qa_tracker_screen';

  static const String kanbanBoardScreen = '/kanban_board_screen';

  static const String taskViewsScreen = '/task_views_screen';

  static const String timeTrackerScreen = '/time_tracker_screen';

  static const String chatbotScreen = '/chatbot_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signupLoginModuleScreen = '/signup_login_module_screen';

  static const String splashScreen = '/splash_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    signupLoginModuleScreen: (context) => SignupLoginModuleScreen(),
    feedbackScreen: (context) => FeedbackScreen(),
    feedbackCollectionScreen: (context) => FeedbackCollectionScreen(),
    taskListScreen: (context) => TaskListScreen(),
    budgetingForecastingScreen: (context) => BudgetingForecastingScreen(),
    ganttChartScreen: (context) => GanttChartScreen(),
    liveChatSummaryScreen: (context) => LiveChatSummaryScreen(),
    qaTrackerScreen: (context) => QaTrackerScreen(),
    kanbanBoardScreen: (context) => KanbanBoardScreen(),
    taskViewsScreen: (context) => TaskViewsScreen(),
    timeTrackerScreen: (context) => TimeTrackerScreen(),
    chatbotScreen: (context) => ChatbotScreen(),
    splashScreen: (context) => SplashScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
