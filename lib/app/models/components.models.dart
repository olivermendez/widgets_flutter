String imagePath = 'assets/';

class ComponentsModels {
  String name;
  String description;
  String image;
  List<ExamplesView>? examples;

  ComponentsModels({
    required this.name,
    required this.description,
    required this.image,
    this.examples,
  });

  static List<ComponentsModels> componentsData = [
    ComponentsModels(
      name: 'App bars: botton',
      description:
          'A bottom app bar displays navigation and key actions at the bottom of mobile screens.',
      image: '${imagePath}appbar_botton.png',
      examples: [
        ExamplesView('style1', '/appbar-buttom-1'),
      ],
    ),
    ComponentsModels(
      name: 'App bars: top',
      description:
          'The top app bar displays information and actions relating to the current screen.',
      image: '${imagePath}appbar_top.png',
      examples: [
        ExamplesView('style1', '/appbar-buttom-1'),
      ],
    ),
    ComponentsModels(
      name: 'Banners',
      description:
          'A bottom app bar displays navigation and key actions at the bottom of mobile screens.',
      image: '${imagePath}banners.png',
    ),
    ComponentsModels(
        name: 'Botton navigation',
        description:
            'A bottom app bar displays navigation and key actions at the bottom of mobile screens.',
        image: '${imagePath}bottom_nav.png',
        examples: [
          ExamplesView('style1', '/appbar-buttom-1'),
        ]),
    ComponentsModels(
        name: 'Buttons: floating action button',
        description:
            'A bottom app bar displays navigation and key actions at the bottom of mobile screens.',
        image: '${imagePath}botton_floating.png',
        examples: [
          ExamplesView('style1', '/appbar-buttom-1'),
        ]),
  ];
}

class ExamplesView {
  String? concept;
  String? route;

  ExamplesView(this.concept, this.route);
}
