//
//  SearchTableViewController.h
//  OMDBProject
//
//  Created by Jose Alvarado on 3/18/15.
//  Copyright (c) 2015 JoseAlvarado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldTitle;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlPlot;

@property (weak, nonatomic) IBOutlet UITextField *textFieldYear;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlTomatoes;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlDataReturnType;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlType;

@property (weak, nonatomic) IBOutlet UITextView *textViewOutput;

- (IBAction)buttonDonePressed:(id)sender;

@end
