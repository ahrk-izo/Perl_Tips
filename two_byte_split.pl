use strict;
use warnings;
use Data::Dumper;

use Encode 'decode';
use Encode 'encode';

$|=1;

my $yobi_list_word = '日月火水木金土';
print $yobi_list_word, "\n";

# utfフラグを付ける(2バイト文字ずつsplitするためにデコード)
# ファイルの文字コードに合わせる
my $yobi_list_word_edit = decode('utf-8', $yobi_list_word);
# my $yobi_list_word_edit = decode('Shift-JIS', $yobi_list_word);

my @list = split(//, $yobi_list_word_edit);
foreach (@list){
    # utfフラグ落とし
    print encode('utf-8', $_), "\n";
    # print encode('Shift-JIS', $_);
}
# ファイルの文字コードによって、デコード、エンコードのコードを変える
# エンコード：情報を符号化(デジタル化)すること
# デコード：符号化されたデータをもとの情報に戻すこと
