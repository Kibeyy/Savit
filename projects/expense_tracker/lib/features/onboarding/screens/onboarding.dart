import 'package:expense_tracker/data/value_notifiers/value_notifier.dart';
import 'package:expense_tracker/features/auth/screens/signup_screen.dart';
import 'package:expense_tracker/features/onboarding/widgets/automatedfields_onboarding.dart';
import 'package:expense_tracker/features/onboarding/widgets/insights_onboarding.dart';
import 'package:expense_tracker/features/onboarding/widgets/savings_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: currentOnboardingPage,
        builder: (context, currentPage, child) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Stack(
                  children: [
                    PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _controller,
                      children: [
                        AutomatedFieldsinfo(),
                        InsightsOnboarding(),
                        SavingsOnboarding()
                      ],
                    ),
                    //page indicator
                    Container(
                        alignment: Alignment(0, 0.6),
                        child: SmoothPageIndicator(controller: _controller,
                          count: 3,
                          effect: WormEffect(
                            dotHeight: 6,
                            dotWidth: 6,
                          ),
                        )),

                    Container(
                      alignment: Alignment(0, 0.75),
                      //previous onboarding screen button
                      child: (currentPage == 1 || currentPage == 2)
                        ? SizedBox(
                        width: double.infinity,
                          child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          ),
                            onPressed: () {
                              //reduce current page count
                              currentOnboardingPage.value--;
                              //making the button scroll to next page
                              _controller.previousPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.fastEaseInToSlowEaseOut);
                            },
                            child: Text("Previous page")),
                        )
                          :
                      SizedBox(

                      ),


                    ),
                    Container(
                      alignment: Alignment(0, 0.9),
                      //button goes inhere
                      child: (currentPage == 0 || currentPage == 1)
                      //show next if page is one or 2
                        ? SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xFF5956F2),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                            ),
                            onPressed: () {
                              //increasing current page
                              currentOnboardingPage.value++;
                              //making the button scroll to next page

                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);

                            },
                            child: Text("Next")),
                      )
                      //show done button
                        : SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xFF5956F2),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                            ),
                            onPressed: () {
                              //making the button scroll to next page
                              Navigator.pushReplacement(context, MaterialPageRoute(
                                  builder: (context) {
                                    currentOnboardingPage.value = 0;
                                    return SignupScreen();
                                  },));

                            },
                            child: Text("Done")),
                      ),


            )

                  ]
              ),
            ),
          );
        },);
  }
}
