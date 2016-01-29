//
//  DriveDetailViewController.m
//  RDNotifyr
//
//  Created by Abhilash Bandi on 29/01/16.
//  Copyright © 2016 MobileServices. All rights reserved.
//

#import "DriveDetailViewController.h"
#import "UtilitiesVC.h"
#import "DriveCell.h"
@interface DriveDetailViewController ()

@end

@implementation DriveDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Drive Details";
    self.driveDetailTableView.dataSource = self;
    self.driveDetailTableView.delegate = self;
    //[self alertWithTitle:@"Not prepared" withMessage:@"Not Implemented"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)alertWithTitle:(NSString *)title withMessage:(NSString *)message{
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 7;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"driveCell" forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Platform";
            cell.detailTextLabel.text = @"BI";
            break;
        case 1:
            cell.textLabel.text = @"Experience";
            cell.detailTextLabel.text = @"0-5 Years";
            break;
        case 2:
            cell.textLabel.text = @"Location";
            cell.detailTextLabel.text = @"Hyderabad";
            cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
            break;
        case 3:
            cell.textLabel.text = @"Date And Time";
            cell.detailTextLabel.text = @"Feb-1-2015 10:30 AM";
            break;
        case 4:
            cell.textLabel.text = @"Expected Candidates";
            cell.detailTextLabel.text = @"100";
            break;
        case 5:
            cell.textLabel.text = @"Turned Up Candidates";
            cell.detailTextLabel.text = @"50";
            break;
        case 6:
            cell.textLabel.text = @"Offered";
            cell.detailTextLabel.text = @"10";
            break;
            
        default:
            break;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70.0f;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)availableClicked:(id)sender {
    [self alertWithTitle:@"Not prepared" withMessage:@"Not Implemented"];
}

- (IBAction)notAvailableClicked:(id)sender {
    [self alertWithTitle:@"Not prepared" withMessage:@"Not Implemented"];
}
@end
