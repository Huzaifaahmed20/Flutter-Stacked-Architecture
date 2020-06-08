import 'package:auto_route/auto_route_annotations.dart';
import '../ui/startup_view.dart';
import '../ui/home_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupViewRoute;

  HomeView homeViewRoute;
}
