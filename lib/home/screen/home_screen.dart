import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_form/auth/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(
              builder: (context) {
                final user = context.select(
                  (AuthCubit auth) => auth.state.user,
                );
                return Column(
                  children: [
                    Text('User ID: ${user?.id}'),
                    Text('Name: ${user?.name} ${user?.balance}'),
                  ],
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthCubit>().logout();
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
