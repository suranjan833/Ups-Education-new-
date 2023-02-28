import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

class QuizStartController extends GetxController {
  Widget customQuestion() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          buildQuestions(
            questionNumber: '01',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: false,
            isRight2: true,
            isRight3: false,
            isRight4: false,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '02',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: false,
            isRight2: false,
            isRight3: false,
            isRight4: true,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '03',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: false,
            isRight2: false,
            isRight3: true,
            isRight4: false,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '04',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: true,
            isRight2: false,
            isRight3: false,
            isRight4: false,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '05',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: false,
            isRight2: false,
            isRight3: false,
            isRight4: true,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '06',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: false,
            isRight2: true,
            isRight3: false,
            isRight4: false,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '07',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: false,
            isRight2: false,
            isRight3: false,
            isRight4: true,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '08',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: false,
            isRight2: false,
            isRight3: true,
            isRight4: false,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '09',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: true,
            isRight2: false,
            isRight3: false,
            isRight4: false,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
          buildQuestions(
            questionNumber: '10',
            question:
                'A type of interaction refers to a situation in which the effets of two independent variables are enhanced by each other. Which of the below-mentioned is the correct types?',
            isRight1: false,
            isRight2: true,
            isRight3: false,
            isRight4: false,
            option1: 'Reinforced interaction',
            option2: 'Celling effects interaction',
            option3: 'Synergidtics interaction',
            option4: 'Antagonatics interactions',
          ),
        ],
      ),
    );
  }

  Widget buildQuestions({
    String? questionNumber,
    String? question,
    bool? isRight1,
    bool? isRight2,
    bool? isRight3,
    bool? isRight4,
    String? option1,
    String? option2,
    String? option3,
    String? option4,
    // String? option3,
  }) {
    return Container(
      padding: EdgeInsets.all(16.r),
      margin: EdgeInsets.symmetric(vertical: 8.r, horizontal: 1.r),
      color: AppColor.grey.withOpacity(0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Question: $questionNumber',
                style: TextStyle(
                    fontSize: 13.w, color: AppColor.black.withOpacity(0.5)),
              ),
              Text(
                '02 Mark',
                style: TextStyle(
                    fontSize: 13.w, color: AppColor.black.withOpacity(0.5)),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7.r),
            child: Text(
              question!,
              style: TextStyle(fontSize: 14.w, color: AppColor.black),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.w,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5.r,
                ),
                padding: EdgeInsets.symmetric(vertical: 7.r, horizontal: 10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: isRight1 == true ? AppColor.green : AppColor.white,
                ),
                child: Text(
                  'a.',
                  style: TextStyle(
                      color: isRight1 == true ? AppColor.white : AppColor.black,
                      fontSize: 15.r),
                ),
              ),
              Text(
                option1!,
                style: TextStyle(
                    color: isRight1 == true ? AppColor.green : AppColor.black,
                    fontSize: 13.r),
              ),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.w,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5.r,
                ),
                padding: EdgeInsets.symmetric(vertical: 7.r, horizontal: 10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: isRight2 == true ? AppColor.green : AppColor.white,
                ),
                child: Text(
                  'b.',
                  style: TextStyle(
                      color: isRight2 == true ? AppColor.white : AppColor.black,
                      fontSize: 15.r),
                ),
              ),
              Text(
                option2!,
                style: TextStyle(
                    color: isRight2 == true ? AppColor.green : AppColor.black,
                    fontSize: 13.r),
              ),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.w,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5.r,
                ),
                padding: EdgeInsets.symmetric(vertical: 7.r, horizontal: 10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: isRight3 == true ? AppColor.green : AppColor.white,
                ),
                child: Text(
                  'c.',
                  style: TextStyle(
                      color: isRight3 == true ? AppColor.white : AppColor.black,
                      fontSize: 15.r),
                ),
              ),
              Text(
                option3!,
                style: TextStyle(
                    color: isRight3 == true ? AppColor.green : AppColor.black,
                    fontSize: 13.r),
              ),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.w,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5.r,
                ),
                padding: EdgeInsets.symmetric(vertical: 7.r, horizontal: 10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: isRight4 == true ? AppColor.green : AppColor.white,
                ),
                child: Text(
                  'd.',
                  style: TextStyle(
                      color: isRight4 == true ? AppColor.white : AppColor.black,
                      fontSize: 15.r),
                ),
              ),
              Text(
                option4!,
                style: TextStyle(
                    color: isRight4 == true ? AppColor.green : AppColor.black,
                    fontSize: 13.r),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
