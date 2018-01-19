//
//  AppDelegate.h
//  simpletableview
//
//  Created by Student-13 on 18/01/18.
//  Copyright © 2018 felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;
@property UITableView *mytableview;
@property NSArray *friendsarray;
@property UIViewController *viewcontrolller;

@property NSArray *imagearray;



@end

//no of returns nsinteger