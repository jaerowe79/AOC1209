//
//  AppDelegate.m
//  AOCWEEK1
//
//  Created by Janis Jae on 8/29/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 1. Create a new Empty Application Project - done
    
    // 2. Create a variable using the float data type. Cast the float
    // to an int and using NSLog, output both the initial float value
    // as well as the int value.

    
    int family = 4;
    float money = 2000.50f;
    float admission = 10.25;
    int cost = (int)money - (family * (int)admission);

    
    
    NSLog(@"We want to go to the amusement park and zoo, after paying admission for the entire family we will have %i of %.2f left from our total funds.", cost, money);
    
    // 3. Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
    
    NSLog(@"We made it to our destination, but only some family members want to ride the rides at the amusement park.");

    float tickets = 4.25;
    int rides = 10;
    BOOL gonnaRide = YES;
    BOOL notGonnaRide = NO;
    float rideCost = rides *(int)tickets;
    int riders = 4;
    float spending = cost - (riders * rideCost);
    
    if ((riders == 4 && gonnaRide) || notGonnaRide)
    {
        NSLog(@"Everyone decided to ride the rides today, it is going to leave us with only %.2f!", spending);
    }
    
    
    // 4. Use an if, else if and else check using any of the data types of your choice.
    
    NSLog(@"If we have any money left after the amusement park, we would like to see some exhibits at the zoo!");
    
    if ((int)spending < (int)money)
    {
        NSLog(@"We still have some money left, let's visit another exhibit!");
    }
    else if ((int)spending == (int)money)
    {
        NSLog(@"This is the last of our money, we can't visit any more exhibits after this.");
    }
    else
    {
        NSLog(@"We can't afford to visit any exhibits right now.");
    }
    
    // 5. Perform a single for loop printing out values to the console
    int count = 10;
  //  NSLog(@"We visited an exhibit, %i exhibits down!", count);
    for (int i=2; i<=count; i++)
    {
        NSLog(@"We've visited %i exhibits.", i-1);
    }

    NSLog(@"Ok, we've visited all of the zoo exhibits we could, what's next?");
    
    // 6. Perform a nested loop printing out values to the console
    NSLog(@"I decide to sneak off to the arcade to try to win some prizes!");
    
    NSArray *wins = [NSArray arrayWithObjects:@"big win!",
                                               @"decent win.",
                                               @"not enough of a win.", nil];
    NSArray *losses = [NSArray arrayWithObjects:@"I lost all my tokens!",
                                               @"I should have stopped while I had some tickets left.",
                                               @"I broke even", nil];
    for (NSString *currentWins in wins) {
        for (int i=0; i<losses.count; i++) {
            NSString *currentLosses = [losses objectAtIndex:i];
            NSLog(@"%@ %@, ", currentLosses, currentWins);
        }
    }
    
    //7. Perform a while loop that increments an int variable and outputs to the console.
    
    
    int iLose = 1;
    int numberOfLosses = 10;
    BOOL iWillLose = YES;
    
    while (iWillLose) {
        NSLog(@"I lost another game! That makes %i losses!", iLose);
        if (iLose == numberOfLosses) {
            iWillLose = NO;
            NSLog(@"Ok, I need to stop playing now.");
        }
        iLose++;
    }
    
    NSLog(@"I guess I better meet back up with the rest of the family.");
    NSLog(@"That was a fun day!");
    
    return YES;
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
