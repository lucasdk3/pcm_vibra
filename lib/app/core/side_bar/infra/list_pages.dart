import 'package:ionicons/ionicons.dart';
import 'package:pcm_vibra/app/core/side_bar/infra/page_model.dart';
import 'package:pcm_vibra/app/modules/dashboard/presenter/dashboard_page.dart';
import 'package:pcm_vibra/app/modules/profile/presenter/profile_page.dart';
import 'package:pcm_vibra/app/modules/quadros/presenter/quadros_page.dart';
import 'package:pcm_vibra/app/modules/tasks/presenter/tasks_page.dart';
class ListPages {
  List pages = [DashboardPage(), QuadrosPage(), TasksPage(), ProfilePage()];

  List<PageModel> listPages = [
    PageModel('Dashboard', Ionicons.pie_chart_outline),
    PageModel('Quadros', Ionicons.cube_outline),
    PageModel('Materiais', Ionicons.id_card_outline),
    PageModel('Manuais', Ionicons.document_text_outline),
    PageModel('Senha', Ionicons.lock_closed_outline),
    PageModel('Perfil', Ionicons.person_outline),
  ];
}
