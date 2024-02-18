import 'package:flutter/material.dart';
import 'package:flutter_prism/flutter_prism.dart';
import 'package:isu/page/o_m_s/ext.dart';
import 'package:markdown_viewer/markdown_viewer.dart';

class Secret extends StatelessWidget {
  const Secret({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('神秘窗口'),
        ),
        body: SingleChildScrollView(
          child: MarkdownViewer(
            markdown,
            enableTaskList: true,
            enableSuperscript: false,
            enableSubscript: false,
            enableFootnote: false,
            enableImageSize: false,
            enableKbd: false,
            syntaxExtensions: [ExampleSyntax()],
            highlightBuilder: (text, language, infoString) {
              final prism = Prism(
                mouseCursor: SystemMouseCursors.text,
                style: Theme.of(context).brightness == Brightness.dark
                    ? const PrismStyle.dark()
                    : const PrismStyle(),
              );
              return prism.render(text, language ?? 'plain');
            },
            onTapLink: (href, title) {
              print({href, title});
            },
            elementBuilders: [
              ExampleBuilder(),
            ],
            styleSheet: const MarkdownStyle(
              listItemMarkerTrailingSpace: 12,
              codeSpan: TextStyle(
                fontFamily: 'RobotoMono',
              ),
              codeBlock: TextStyle(
                fontSize: 14,
                letterSpacing: -0.3,
                fontFamily: 'RobotoMono',
              ),
            ),
          ),
        ));
  }
}

const markdown = r'''
# 今天 **如何**？

- **您**是从哪里看到这个项目呢？  
- **您**为什么会选择使用这个项目呢？
- **您**还会再使用下去吗？

这是我心中的疑问。我不知道这个项目能走多远。  
当我写下第一行代码（`golang`）时，我构想这个项目的庞大的使用人群，能够为社会创造多大的价值……  
然后，我推翻了一次次计划，一个个方案，更换了一大堆技术栈，试写了一大堆代码……   

直到，我找到了`flutter`，和不可分割的dart。  
这是我从未使用过的全新语言与框架，它的设计模式和Web又有很大区别……  

但我没再变动任何框架。  
当我第一次搭出material页面时，我就意识到这一次，或者，我会用它一辈子。  
相见恨晚的前端设计模式，极少代码构筑起来优美的页面，让井底之蛙的我一见钟情。  
我甚至在痛恨自己，痛恨那个三年前没听同行劝学flutter的自己。  
但无论如何，最好的时间在十年前，其次是现在。  

总之，感谢您使用这个项目及其桌面/移动端程序。  
它看起来幼稚，简陋，低级，但，永不止步。


### 今后目标

- [x] ==100%== conform to CommonMark.
- [x] ==100%== conform to GFM.
- [x] Easy to implement syntax **highlighting**, for example `flutter_prism`:
   ```dart
   // Dart language.
   void main() {
     print('Hello, World!');
   }
   ```
- [x] Easy to custom, for example:
  > This is a #custom_extension

''';
