import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:mobile/screens/UserRootScreen.dart';
import 'package:mobile/screens/course/OneCouseScreen.dart';




// APP
class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (context, state, data) {
          final initialIndex =
          state.queryParameters['tab'] == 'articles' ? 1 : 0;
          return UserRootScreen(initialIndex: initialIndex);
        },

        '/courses/:courseId': (context, state, data) {
          final courseId = state.pathParameters['courseId'];
          String notNULLCourseId=courseId??"default";
          return BeamPage(
            key: ValueKey('book-$courseId'),

            child: OneCourseScreen(courseId: notNULLCourseId),
            onPopPage: (context, delegate, _, page) {
              delegate.update(
                configuration: const RouteInformation(
                  location: '/?tab=courses',
                ),
                rebuild: false,
              );
              return true;
            },
          );
        },
        // 'articles/:articleId': (context, state, data) {
        //   final articleId = state.pathParameters['articleId'];
        //   final article =
        //   articles.firstWhere((article) => article['id'] == articleId);
        //   return BeamPage(
        //     key: ValueKey('articles-$articleId'),
        //     title: article['title'],
        //     child: ArticleDetailsScreen(article: article),
        //     onPopPage: (context, delegate, _, page) {
        //       delegate.update(
        //         configuration: RouteInformation(
        //           location: '/?tab=articles',
        //         ),
        //         rebuild: false,
        //       );
        //       return true;
        //     },
        //   );
        // },
      },
    ),
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(

        delegate: routerDelegate,
      ),
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.blueAccent,

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
    );
  }
}

void main() => runApp(MyApp());
