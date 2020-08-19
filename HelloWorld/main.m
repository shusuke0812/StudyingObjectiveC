#import "Song.h"
#import "Singer.h"

/* 実行プログラム */
int main(void) {
	id song;
	id singer;

	song = [[Song alloc] init];
	[song setLyrics:@"La La La ..."];

	singer = [Singer alloc] init];
  [singer setSong:song];
	[singer sing];

	return 0;
}
