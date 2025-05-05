import 'package:flight_app/app/app_link.dart';
import 'package:flight_app/ui/themes/theme_button.dart';
import 'package:flight_app/ui/themes/theme_radius.dart';
import 'package:flight_app/ui/themes/theme_spacing.dart';
import 'package:flight_app/ui/themes/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/route_manager.dart';

class NotfoundStarter extends StatelessWidget {
  const NotfoundStarter({super.key});

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri urlFullVersion = Uri.parse('https://codecanyon.net/item/bookmytix-flutter-flight-booking-app-template/57827751');

    return Padding(
      padding: EdgeInsets.all(spacingUnit(2)),
      child: Column(
        children: [
          const Text('Screen only available in the BookMyTix Full version', style: ThemeText.title2, textAlign: TextAlign.center,),
          const VSpace(),
          ClipRRect(
            borderRadius: ThemeRadius.medium,
            child: Image.asset('assets/images/preview_white.jpg'),
          ),
          const VSpace(),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                _launchUrl(urlFullVersion);
              },
              style: ThemeButton.btnBig.merge(ThemeButton.primary),
              child: const Text('Get the Full Version', style: ThemeText.subtitle),
            )
          ),
          const VSpace(),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.toNamed(AppLink.home);
              },
              style: ThemeButton.btnBig.merge(ThemeButton.outlinedPrimary(context)),
              child: const Text('Back to Home', style: ThemeText.subtitle),
            )
          ),
        ],
      ),
    );
  }
}