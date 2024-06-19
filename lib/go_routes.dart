

import 'package:deeplink24/page_one.dart';
import 'package:deeplink24/page_two.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRoutes {
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const PageOne();
        },
        routes: <RouteBase>[
          GoRoute(
            // name: "PageTwo",
            path: 'PageTwo',
            builder: (BuildContext context, GoRouterState state) {
              print("state.uri${state.uri}");
              print("state.uri${state.uri.data}");
              print("state.uri${state.uri.fragment}");
              print("state.uri${state.uri.queryParameters}");
              // print("state.uri${state.uri.pa}");
              print(state.extra);
              print(state.pathParameters);
              print(state.path);
              // final param=state.pathParameters["itemId"];
              final param=state.uri.queryParameters["itemId"];
              return  PageTwo(param:param);
            },
          ),
        ],
      ),
    ],
  );
}

