import 'package:flutter/material.dart';
import 'package:linktree/widgets/avatar.dart';
import 'package:linktree/widgets/link_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img_bg_2.jpg'),
                    fit: BoxFit.cover)),
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 720) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          flex: 4,
                          child: Avatar(),
                        ),
                        Flexible(flex: 4, child: LinkCard())
                      ],
                    );
                  }
                  return CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Flexible(flex: 3, child: Avatar()),
                            Flexible(flex: 4, child: LinkCard())
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            )),
      ),
    );
  }
}
