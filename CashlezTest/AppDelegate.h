//
//  AppDelegate.h
//  CashlezTest
//
//  Created by Paybill Indonesia on 8/30/17.
//  Copyright © 2017 Emozen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIView *view;
@property (nonatomic, retain) UINavigationController *navigationController;
@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

