# The Japanese Educational Preambles for Typst


## 概要

- 高校数学教材向け Typst テンプレート（私家版）

この .typ ファイルは，日本における高等学校数学科の教材・板書案を作るための私家版テンプレートである。すなわち，主たる対象は日本の高等学校数学科教員である。まったく個人的な好みによる体裁であるが、Typst での教材作成に役立つことがあれば幸いである。

- 私家版である。いろいろと難があると思われるが、今はまだ Typst の情報が少ないので、広める意味があると考えた。
- 単位（`em` や `pt` など）を吟味していない。一部を変えると全体が崩れるおそれなどもある。
- 本来は `#for` や `#while` で処理すべきところがいくつもあるが、上手く動かないなどしたため、腕力で済ませている。


## ライセンス

- This package released under the MIT license.
	- https://opensource.org/license/mit
	- https://github.com/opensource-jp/licenses/blob/main/MIT/MIT.md


## 使いかた

```
#import "/template/typstjep_YYYYMMDD.typ": *
#show: Document => doctemplate(
  "著者名（PDF のプロパティになる）",
  "タイトル（ヘッダ左上に現れる",
  "メモ（ヘッダ右上に現れる）",
  Document
)
```
