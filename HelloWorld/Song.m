#import "Song.h"

/*
 * Songクラスの実装
 *
 * 下記はアクセサ（セッター、ゲッター）
 * lyrics：メンバの値を取得
 * setLyrics：メンバに値をセット
 */
@implementation Song: NSObject
- (NSString *)lyrics {
	return lyrics;
}
- (void)setLyrics:(NSString *)argLyrics {
	lyrics = argLyrics;
}
@end
