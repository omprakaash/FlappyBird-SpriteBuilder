#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character=(Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    timesinceobs=0.0f;
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
    timesinceobs+=delta;
    if(timesinceobs>2.0f){
        [self addObstacle];
        timesinceobs=0.0f;
    }
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    [character flap];
}

@end
