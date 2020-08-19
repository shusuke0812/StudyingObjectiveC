#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

/* Songクラス宣言 */
@interface Song: NSObject {
	NSString *lyrics;
}
- (NSString *)lyrics;
- (void)setLyrics:(NSString *)argLyrics;
@end
