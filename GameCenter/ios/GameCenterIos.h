@interface GameCenterIos : NSObject
{
}

+ (GameCenterIos*)shared;

+ (void)gcLogin;

+ (BOOL)gcShowAchievements;
+ (void)gcPostAchievement:(NSDictionary*)dict;;
+ (void)gcClearAllAchivements;

+ (BOOL)gcShowScores:(NSDictionary*)dict;
+ (void)gcPostScore:(NSDictionary*)dict;;
+ (void)gcClearAllScores;

////////////////////
- (void)login;

- (BOOL)showAchievements;
- (void)postAchievement:(const char*)idName percent:(NSNumber*)percentComplete;
- (void)clearAllAchivements;

- (BOOL)showScores:(NSString*)idName;
- (void)postScore:(const char*)idName score:(NSNumber*)score;
- (void)clearAllScores;


@end
