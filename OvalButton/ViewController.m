//
//  ViewController.m
//  OvalButton
//
//  Created by Satoshi Yamada on 2012/08/25.
//  Copyright (c) 2012年 Satoshi Yamada. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
	[self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)action1:(id)sender {
	self.label.text = @"Selected:R";
}

- (IBAction)action2:(id)sender {
	self.label.text = @"Selected:G";
}

- (IBAction)action3:(id)sender {
	self.label.text = @"Selected:B";
}

@end
