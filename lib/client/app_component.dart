import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'cards_galley_component.dart';
import 'dashboard_component.dart';
import 'hero_detail_component.dart';
import 'hero_service.dart';
import 'heroes_component.dart';
import 'service/card_service.dart';

@Component(
    selector: 'my-app',
    template: '''
    <h1>{{title}}</h1>
    <nav>
      <a [routerLink]="['Dashboard']">Dashboard</a>
      <a [routerLink]="['Heroes']">Heroes</a>
      <a [routerLink]="['CardsGallery']">Cards Gallery</a>
    </nav>
    <router-outlet></router-outlet>''',
    styleUrls: const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES],
    providers: const [HeroService, CardService, ROUTER_PROVIDERS])
@RouteConfig(const [
  const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent),
  const Route(
      path: '/dashboard',
      name: 'Dashboard',
      component: DashboardComponent,
      useAsDefault: true),
  const Route(
      path: '/detail/:id', name: 'HeroDetail', component: HeroDetailComponent),
  const Route(
      path: '/cards', name: 'CardsGallery', component: CardsGalleryComponent),
])
class AppComponent {
  final String title = 'Tour of Heroes';
}
