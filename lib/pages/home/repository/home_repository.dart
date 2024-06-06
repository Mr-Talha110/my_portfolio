import 'package:my_portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeRepository {
  socialLinks(index) async {
    switch (index) {
      case 0:
        if (!await launchUrl(SocialUrls.linkedInUrl)) {
          throw Exception('Could not launch ${SocialUrls.linkedInUrl}');
        }
        break;
      case 1:
        if (!await launchUrl(SocialUrls.githubUrl)) {
          throw Exception('Could not launch ${SocialUrls.githubUrl}');
        }
        break;
      case 2:
        if (!await launchUrl(SocialUrls.githubUrl)) {
          throw Exception('Could not launch ${SocialUrls.githubUrl}');
        }
        break;
      default:
    }
  }
}
