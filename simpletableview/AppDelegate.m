//
//  AppDelegate.m
//  simpletableview
//
//  Created by Student-13 on 18/01/18.
//  Copyright © 2018 felix. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];
    self.viewcontrolller=[[UIViewController alloc]init];
    
    self.mytableview=[[UITableView alloc]init];
    self.mytableview.frame=CGRectMake(30, 50, 300, 500);
    [self.viewcontrolller.view addSubview:self.mytableview];
    
    self.window.rootViewController=self.viewcontrolller;
    
    self.friendsarray=@[@"nidhi",@"rohidas",@"prashant",@"riya",@"omkar"];
    
    //for assigment
    
    self.imagearray=@[@"4.jpg",@"aga khan place.png",@"allSongs.png",@"chaturshringi-temple.png",@"Jf7pUy.jpg"];
    
    self.mytableview.delegate=self;
    self.mytableview.dataSource=self;
    
    [self.window makeKeyAndVisible];
 
    // Override point for customization after application launch.
    return YES;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.friendsarray.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    cell.textLabel.text=[self.friendsarray objectAtIndex:indexPath.row];
   //cell.imageView.image=[UIImage imageNamed:@"chaturshringi-temple.png"];
    
   cell.imageView.image=[UIImage imageNamed:[self.imagearray objectAtIndex:indexPath.row]];
    return cell;
    
}







- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
