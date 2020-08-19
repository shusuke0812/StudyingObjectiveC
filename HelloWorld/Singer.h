#import <Foundation/NSObject.h>
#import <stdio.h>
#import "Song.h"

// Singerクラスの宣言
@interface Singer: NSObject {
	Song *song;
}
- (void)setSong:(Song *)argSong;
- (void)sing;
@end
