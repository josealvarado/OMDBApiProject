//
//  ResultTableViewController.h
//  OMDBProject
//
//  Created by Jose Alvarado on 3/18/15.
//  Copyright (c) 2015 JoseAlvarado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultTableViewController : UITableViewController

@property (nonatomic, strong) NSDictionary *result;

@property (weak, nonatomic) IBOutlet UIImageView *imageViewPoster;


@property (weak, nonatomic) IBOutlet UILabel *labelActors;

@property (weak, nonatomic) IBOutlet UILabel *labelAwards;

@property (weak, nonatomic) IBOutlet UILabel *labelBoxOffice;

@property (weak, nonatomic) IBOutlet UILabel *labelCountry;

@property (weak, nonatomic) IBOutlet UILabel *labelDVD;

@property (weak, nonatomic) IBOutlet UILabel *labelDirector;

@property (weak, nonatomic) IBOutlet UILabel *labelGenre;

@property (weak, nonatomic) IBOutlet UILabel *labelLanguage;

@property (weak, nonatomic) IBOutlet UILabel *labelMetascore;

@property (weak, nonatomic) IBOutlet UILabel *labelPlot;

@property (weak, nonatomic) IBOutlet UILabel *labelProduction;

@property (weak, nonatomic) IBOutlet UILabel *labelRated;

@property (weak, nonatomic) IBOutlet UILabel *labelReleased;

@property (weak, nonatomic) IBOutlet UILabel *labelRuntime;

@property (weak, nonatomic) IBOutlet UILabel *labelType;

@property (weak, nonatomic) IBOutlet UILabel *labelWebsite;

@property (weak, nonatomic) IBOutlet UILabel *labelWriter;

@property (weak, nonatomic) IBOutlet UILabel *labelYear;

@property (weak, nonatomic) IBOutlet UILabel *labelIMDBID;

@property (weak, nonatomic) IBOutlet UILabel *labelIMDBRating;

@property (weak, nonatomic) IBOutlet UILabel *labelIMDBVotes;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoConsensus;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoFresh;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoImage;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoMeter;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoRating;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoReviews;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoRotten;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoUserMeter;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoUserRating;

@property (weak, nonatomic) IBOutlet UILabel *labelTomatoUserReviews;

@property (weak, nonatomic) IBOutlet UITableViewCell *tableViewCellTomatoConsensus;



@end
