//
//  ViewController.m
//  DarumaKukuDentakuVar0
//
//  Created by 正義 北川 on 12/01/09.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize numBtn;
@synthesize resetBtn;
@synthesize calBtn;
@synthesize leftLabel;
@synthesize rightLabel;
@synthesize myView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setNumBtn:nil];
    [self setResetBtn:nil];
    [self setCalBtn:nil];
    [self setLeftLabel:nil];
    [self setRightLabel:nil];
    [self setMyView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

int i =0;
int leftNum = 0;
int rightNum = 0;
int ansTrg =0;

//値をリセット
- (IBAction)tapResetBtn:(id)sender {
    
    
    leftLabel.text = @"";
    rightLabel.text = @"";
    myView.image = [UIImage imageNamed:@"normal.png"];

    
    leftNum = 0;
    rightNum = 0;
    ansTrg = 0;
    i = 0;
    
}

//計算
- (IBAction)tapCalBtn:(id)sender {
    
    if (ansTrg == 1) {
        //だるま画像の差し替え
        leftLabel.text = @"";
        rightLabel.text = @"";
        myView.image = [UIImage imageNamed:@"over.png"];
        
        
        int ans;
        ans = leftNum * rightNum;
        
        
        NSLog(@"%d", ans);

        leftNum = 0;
        rightNum = 0;
        ansTrg = 0;
        i = 0;

    }
    
    
}

- (IBAction)tapNumBtn:(id)sender {
    
    myView.image = [UIImage imageNamed:@"normal.png"];

    //押されたボタンを変数に格納
    UIButton * button = (UIButton *)sender;
    int num = button.tag;
    
    NSLog(@"%s %d", __func__, button.tag);
    
    //左目に入力
    if (i == 0) {
        NSString *lNum = [NSString stringWithFormat:@"%d", num];
        
        [leftLabel setText:lNum];
        leftNum = num;
        i = 1;
        
    }
    
    //右目に入力
    else if (i == 1) {
        NSString *rNum = [NSString stringWithFormat:@"%d", num];
        
        [rightLabel setText:rNum];
        rightNum = num;
        i = 0;
        ansTrg = 1;
    }

}
@end
