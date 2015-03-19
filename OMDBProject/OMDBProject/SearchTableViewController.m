//
//  SearchTableViewController.m
//  OMDBProject
//
//  Created by Jose Alvarado on 3/18/15.
//  Copyright (c) 2015 JoseAlvarado. All rights reserved.
//

#import "SearchTableViewController.h"
#import "ResultTableViewController.h"

@interface SearchTableViewController ()

@end

@implementation SearchTableViewController{
    NSDictionary *dictJson;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonDonePressed:(id)sender {
    
    NSString *title = _textFieldTitle.text;
    
    if ([title length] < 1){
        UIAlertView *alertViewError = [[UIAlertView alloc] initWithTitle:@"Incorrect Request" message:@"Title is required" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertViewError show];
    } else {
        NSString *url = @"http://www.omdbapi.com/";
        
        url = [NSString stringWithFormat:@"%@?t=%@", url, title];
        
        NSInteger year = _textFieldYear.text.integerValue;
        if (year){
            url = [NSString stringWithFormat:@"%@&y=%li", url, year];
        } else {
        }
        
        NSInteger plot = _segmentedControlPlot.selectedSegmentIndex;
        if (plot == 0){
            url = [NSString stringWithFormat:@"%@&plot=short", url];
        } else {
            url = [NSString stringWithFormat:@"%@&plot=full", url];
        }
    
        NSInteger returnType = _segmentedControlDataReturnType.selectedSegmentIndex;
        if (returnType == 0){
            url = [NSString stringWithFormat:@"%@&r=json", url];
        } else {
            url = [NSString stringWithFormat:@"%@&r=xml", url];
        }
        
        NSInteger tomatoes = _segmentedControlTomatoes.selectedSegmentIndex;
        if (tomatoes == 0){
            url = [NSString stringWithFormat:@"%@&tomatoes=true", url];
        } else {
            url = [NSString stringWithFormat:@"%@&tomatoes=false", url];
        }
        
        NSInteger type = _segmentedControlType.selectedSegmentIndex;
        if (type == 0){
            url = [NSString stringWithFormat:@"%@&type=movie", url];
        } else if (type == 1){
            url = [NSString stringWithFormat:@"%@&type=series", url];
        } else {
            url = [NSString stringWithFormat:@"%@&type=episode", url];
        }
        
        NSLog(@"URL %@", url);
        
        NSURLSession *session = [NSURLSession sharedSession];
        
        [[session dataTaskWithURL:[NSURL URLWithString:url] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            
            if (error){
                UIAlertView *alertViewError = [[UIAlertView alloc] initWithTitle:@"Try again later" message:@"Try again later" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
                [alertViewError show];
            } else {
                
                if (returnType == 0){
                    dictJson = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
                    
                    NSLog(@"Response :%@", dictJson);
                    
                    NSString *errorMessage = [dictJson objectForKey:@"Error"];
                    if (errorMessage) {
                        dispatch_async(dispatch_get_main_queue(), ^{
                           
                            UIAlertView *alertViewError = [[UIAlertView alloc] initWithTitle:@"Error" message:errorMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
                            [alertViewError show];
                        });
                    } else {
                        dispatch_async(dispatch_get_main_queue(), ^{
                            _textViewOutput.text = [NSString stringWithFormat:@"%@", dictJson];
                            
                            [self performSegueWithIdentifier:@"Result" sender:sender];
                        });
                    }
                } else {
                    NSString* stringXML = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                    
                    NSLog(@"Response :%@", stringXML);
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        _textViewOutput.text = [NSString stringWithFormat:@"%@", stringXML];
                    });
                }
            }
        }] resume];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
        
    if ([segue.identifier isEqualToString:@"Result"]) {
        ResultTableViewController *destViewController = segue.destinationViewController;
//        NSLog(@"dict %@", dictJson);
        destViewController.result = dictJson;
    }
}
@end
