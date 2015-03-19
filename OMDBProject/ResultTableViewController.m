//
//  ResultTableViewController.m
//  OMDBProject
//
//  Created by Jose Alvarado on 3/18/15.
//  Copyright (c) 2015 JoseAlvarado. All rights reserved.
//

#import "ResultTableViewController.h"
#import "UIImage+Helpers.h"

@interface ResultTableViewController ()

@end

@implementation ResultTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"Data is over here now! %@", _result);
    
    NSString *imageURL = [_result objectForKey:@"Poster"];
    
    [UIImage loadFromURL:[NSURL URLWithString:imageURL] callback:^(UIImage *image){
        _imageViewPoster.image = image;
    }];
    
    self.title = [_result objectForKey:@"Title"];
    
    _labelActors.text = [_result objectForKey:@"Actors"];
    _labelAwards.text = [_result objectForKey:@"Awards"];
    _labelBoxOffice.text = [_result objectForKey:@"BoxOffice"];
    _labelCountry.text = [_result objectForKey:@"Country"];
    _labelDVD.text = [_result objectForKey:@"DVD"];
    _labelDirector.text = [_result objectForKey:@"Director"];
    _labelGenre.text = [_result objectForKey:@"Genre"];
    _labelLanguage.text = [_result objectForKey:@"Language"];
    _labelMetascore.text = [_result objectForKey:@"Metascore"];
    _labelPlot.text = [_result objectForKey:@"Plot"];
    _labelProduction.text = [_result objectForKey:@"Production"];
    _labelRated.text = [_result objectForKey:@"Rated"];
    _labelReleased.text = [_result objectForKey:@"Released"];
    _labelRuntime.text = [_result objectForKey:@"Runtime"];
    _labelType.text = [_result objectForKey:@"Type"];
    _labelWebsite.text = [_result objectForKey:@"Website"];
    _labelWriter.text = [_result objectForKey:@"Writer"];
    _labelYear.text = [_result objectForKey:@"Year"];
    _labelIMDBID.text = [_result objectForKey:@"imdbID"];
    _labelIMDBRating.text = [_result objectForKey:@"imdbRating"];
    _labelIMDBVotes.text = [_result objectForKey:@"imdbVotes"];
    
    _labelTomatoConsensus.text = [_result objectForKey:@"tomatoConsensus"];
    _labelTomatoFresh.text = [_result objectForKey:@"tomatoFresh"];
    _labelTomatoImage.text = [_result objectForKey:@"tomatoImage"];
    _labelTomatoMeter.text = [_result objectForKey:@"tomatoMeter"];
    _labelTomatoRating.text = [_result objectForKey:@"tomatoRating"];
    _labelTomatoReviews.text = [_result objectForKey:@"tomatoReviews"];
    _labelTomatoRotten.text = [_result objectForKey:@"tomatoRotten"];
    _labelTomatoUserMeter.text = [_result objectForKey:@"tomatoUserMeter"];
    _labelTomatoUserRating.text = [_result objectForKey:@"tomatoUserRating"];
    _labelTomatoUserReviews.text = [_result objectForKey:@"tomatoUserReviews"];
}

@end
