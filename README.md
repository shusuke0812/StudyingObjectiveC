Objective-C 勉強用のサンプルコード（基礎編）
====

## 目的
- Objective-Cで書かれたiOSアプリ用のライブラリを読めて、改造できるようにすること

## 開発環境
- MacOS Catalina version 10.15.4

## サンプルコード概要

### Hello World
#### 歌詞（文字列）を与えて、♪ 文字列 ♪ を表示するプログラム
- 標準出力
- クラスの宣言、実装
- 実行ファイルの作成
  
## 実行方法
1. バイナリ変換（コンパイル） -> バイナリファイルは拡張子.o
```bash
gcc -c ファイル名.m
```
2. バイナリファイル関連付（リンク）
```bash
gcc -o　実行ファイル名 バイナリファイル1.o バイナリファイル2.o -framwork Foundation
```
3. 実行ファイル起動
```bash
./実行ファイル名
```
- なお、コンパイルからリンクを一気に実行する場合は
```bash
gcc -o ファイル名1.m ファイル名2.m -framework Foundation
```

## Memo
#### ファイル構成
- クラス定義は宣言ファイル（.h = ヘッダファイル）と実装ファイル（.m）の２つを作成
- 実行プログラムはmain関数に書く（main.m）
- ヘッダファイルの読み込み指示はプリプロセッサ命令#import文をファイルの先頭に記述

#### クラス宣言
- @~はコンパイラディレクティブ（コンパイラへの命令）、クラスの記述はコンパイラディレクティブ内で行う
- 書き方は、`@interface クラス名: スーパークラス名`
- クラスのメンバ変数はスーパークラス名に続く{}の中に記述、書き方は `変数型 *変数名;` (変数はポインタとして宣言する）   
- クラスのメソッドは変数ブロック{}外に記述、書き方は `- (戻り値)メソッド名:（引数型）引数名` 

#### クラス実装
- クラス実装もコンパイラディレクティブ内で行う
- 書き方は、`@implementation クラス名: スーパークラス名`

#### 型
- idは汎用型（Objective-C固有）  

#### オブジェクトメソッド呼び出し
- 呼び出したいメソッドがあるオブジェクトを[ ]で囲ってメッセージを送る（Swiftで言う オブジェクト.メソッド() ）
```objectivec
/* メッセージ式の使用例 */
/* クラス宣言 */
@interface TestClass: NSObject {
	NSString *testString;
}
- (void)setTestString: (NSString *)test;
@end

/* クラス実装 */
@implementation TestClass: NSObject
- (void)setTestString: (NSString *)test {
	testString = test;
}
@end

/* 実行プログラム */
int main(void) {
	id testClass;
	testClass = [[TestClass alloc] init];
	[TestClass setTestString:@"La La La"];

	return 0
}
```


#### オプショナル型
- NS_ASSUME_NONNULL_BEGINとNS_ASSUME_NONNULL_ENDで囲った範囲のプロパティとメソッドはnonnullとする、ただし、その範囲内でも明示的にnullableを指定すればnullableとして扱うことが可能

## 参考文献  
- [一番初めのObjective-Cプログラム](https://www.atmarkit.co.jp/ait/articles/0810/08/news117.html)
- [ライブラリ：MXParallaxHeader](https://github.com/maxep/MXParallaxHeader)  
