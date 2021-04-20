import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progess_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Gerenciamento de estado",
              style: AppTextStyles.heading15,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "3 de 10",
                    style: AppTextStyles.body11,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: ProgressIndicatorWidget(
                      value: 0.3,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
