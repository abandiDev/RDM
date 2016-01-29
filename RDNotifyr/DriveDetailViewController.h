//
//  DriveDetailViewController.h
//  RDNotifyr
//
//  Created by Abhilash Bandi on 29/01/16.
//  Copyright © 2016 MobileServices. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DriveDetailViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UIButton *btnAvailable;
@property (weak, nonatomic) IBOutlet UIButton *btnNotAvailalbe;
- (IBAction)availableClicked:(id)sender;
- (IBAction)notAvailableClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *driveDetailTableView;
@property (weak, nonatomic) IBOutlet UITableView *panelDetailTableView;
- (IBAction)segmentChanged:(id)sender;


@end
