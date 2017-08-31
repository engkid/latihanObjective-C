//
//  CashlezViewController.h
//  CashlezTest
//
//  Created by Paybill Indonesia on 8/30/17.
//  Copyright © 2017 Emozen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "AppDelegate.h"

@interface CashlezViewController : UIViewController<UIGestureRecognizerDelegate, CLLocationManagerDelegate>

{
    CLLocationManager *locationManager;
}

@end
