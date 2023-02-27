import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovesmart/presentation/cubits/navigation_dart_cubit.dart';
import 'package:ovesmart/presentation/pages/mainscreen/pages/job.dart';
import 'package:ovesmart/presentation/pages/mainscreen/pages/notifications.dart';
import 'package:ovesmart/presentation/pages/mainscreen/pages/profile.dart';
import 'package:ovesmart/presentation/pages/mainscreen/pages/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  //  void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          return Scaffold(
              body: pages[state],
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: const Color(0XFFDF636B),
                currentIndex: state,
                unselectedItemColor: Colors.grey,
                landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
                type: BottomNavigationBarType.fixed,
                onTap: (index) =>
                    BlocProvider.of<NavigationCubit>(context).changePage(index),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/briefcase.svg',
                      color: Colors.grey,
                      // semanticsLabel: 'Acme Logo'
                    ),
                    activeIcon: SvgPicture.asset(
                      'assets/icons/briefcase.svg',
                      color: const Color(0xFFDF636B),
                      // semanticsLabel: 'Acme Logo'
                    ),
                    label: 'job',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: Colors.grey,
                      // semanticsLabel: 'Acme Logo'
                    ),
                    activeIcon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: const Color(0xFFDF636B),
                      // semanticsLabel: 'Acme Logo'
                    ),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/chat-alt-2.svg',
                      color: Colors.grey,
                      // semanticsLabel: 'Acme Logo'
                    ),
                    activeIcon: SvgPicture.asset(
                      'assets/icons/chat-alt-2.svg',
                      color: const Color(0xFFDF636B),
                      // semanticsLabel: 'Acme Logo'
                    ),
                    label: 'Notification',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/user-circle.svg',
                      color: Colors.grey,
                      // semanticsLabel: 'Acme Logo'
                    ),
                    activeIcon: SvgPicture.asset(
                      'assets/icons/user-circle.svg',
                      color: const Color(0xFFDF636B),
                      // semanticsLabel: 'Acme Logo'
                    ),
                    label: 'Profile',
                  ),
                ],
              ));
        },
      ),
    );
  }
}

List<Widget> pages = const [Job(), Search(), NotificationScreen(), Profile()];
