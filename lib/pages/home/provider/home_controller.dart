import '../models/content_box_model.dart';

class HomeController {
  final List<ContentBoxModel> boxList = [
    ContentBoxModel(
        btnText: 'About Appdesign',
        description:
            'Visually stunning web designs that captivate your audience by blending your brand voice and customer needs.',
        title: 'App design'),
    ContentBoxModel(
        btnText: 'About Webflow',
        description:
            'Get custom web development solutions that are tailored to your specifications, designed to deliver a flawless user experience.',
        title: 'Development'),
    ContentBoxModel(
        btnText: 'About SEO',
        description:
            'Proven SEO strategies that enhance your online performance, bringing you to the forefront of organic search results.',
        title: 'Content & Seo'),
  ];
}
