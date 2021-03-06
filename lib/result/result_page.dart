import 'package:flutter/material.dart';

import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int acertos;
  final int length;
  const ResultPage({
    Key? key,
    required this.title,
    required this.acertos,
    required this.length,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 100),
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.trophy),
          Column(
            children: [
              Text(
                "Parabens",
                style: AppTextStyles.heading40,
              ),
              SizedBox(
                height: 16,
              ),
              Text.rich(
                TextSpan(
                  text: "Voce concluiu",
                  style: AppTextStyles.body,
                  children: [
                    TextSpan(
                      text: "\n$title",
                      style: AppTextStyles.bodyBold,
                    ),
                    TextSpan(
                      text: "\ncom $acertos de $length acertos",
                      style: AppTextStyles.body,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 68,
                      ),
                      child: NextButtonWidget.purple(
                        label: "Compartilhar",
                        onTap: () {
                          //Share.share(
                          //  "DevQuiz NLW 5 - Flutter: Resultado do Quiz: $title\nObtive: ${acertos / length}");
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 68,
                      ),
                      child: NextButtonWidget.transparent(
                        label: "Voltar ao inicio",
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
