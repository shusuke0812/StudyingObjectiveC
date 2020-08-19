#import "Singer.h"

// Singerクラスの実装
@implementation Singer: NSObject
- (void)setSong:(Song *)argSong {
	song = argSong;
}
- (void)sing {
	print("♪ %s ♪ \n", [[song lyrics] UTF8String]);
}
