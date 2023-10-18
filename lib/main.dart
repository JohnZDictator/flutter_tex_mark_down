import 'package:flutter/material.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_tex/flutter_tex.dart';
// import 'package:markdown/markdown.dart' as md;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String code = r'$$f(x) = a_nx^n + a_{n-1}x^{n-1} + \ldots + a_1x + a_0$$';

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TeXView(
            child: TeXViewDocument(
              """<p>$code</p>""",
              // r"""<p>A polynomial function is a function that can be written in the form: \n\n$$f(x) = a_nx^n + a_{n-1}x^{n-1} + ... + a_1x + a_0$$\n\nwhere $$a_n, a_{n-1}, ..., a_1, a_0$$ are coefficients, and $n$ is a non-negative integer representing the degree of the polynomial. The degree of the polynomial is determined by the highest power of the variable, which is $n$. Each term in the polynomial is a monomial, where the variable is raised to a non-negative integer power.</p>""",
            ),
          ),
          // child: MarkdownBody(
          //   data: code,
          //   extensionSet: md.ExtensionSet(
          //     md.ExtensionSet.gitHubFlavored.blockSyntaxes,
          //     <md.InlineSyntax>[
          //       md.EmojiSyntax(),
          //       ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
          //     ],
          //   ),
          // ),
        ),
        // child: MarkdownBody(data: code),
      ),
    );
    // return MarkupText(
    //   '''$$f(x) = a_nx^n + a_{n-1}x^{n-1} + \ldots + a_1x + a_0$$''',
    // );
  }
}
