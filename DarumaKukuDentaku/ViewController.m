//
//  ViewController.m
//  DarumaKukuDentaku
//
//  Created by 正義 北川 on 12/01/14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController
@synthesize soundURL01,soundURL02,soundURL03,soundURL04,soundURL05,soundURL06,soundURL07,soundURL08,soundURL09,soundURL10,soundURL12,soundURL14,soundURL15,soundURL16,soundURL18,soundURL20,soundURL21,soundURL24,soundURL25,soundURL27,soundURL28,soundURL30,soundURL32,soundURL35,soundURL36,soundURL40,soundURL42,soundURL45,soundURL48,soundURL49,soundURL54,soundURL56,soundURL63,soundURL64,soundURL72,soundURL81;    
@synthesize sound01,sound02,sound03,sound04,sound05,sound06,sound07,sound08,sound09,sound10,sound12,sound14,sound15,sound16,sound18,sound20,sound21,sound24,sound25,sound27,sound28,sound30,sound32,sound35,sound36,sound40,sound42,sound45,sound48,sound49,sound54,sound56,sound63,sound64,sound72,sound81; 

@synthesize numBtn;
@synthesize calBtn;
@synthesize resetBtn;
@synthesize calView;
@synthesize leftLabel;
@synthesize rightLabel;

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
    
    CFBundleRef mainBundle;  
    mainBundle = CFBundleGetMainBundle ();  
    
    soundURL01  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound01"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL01, &sound01);  
    CFRelease (soundURL01);  
    
    soundURL02  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound02"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL02, &sound02);  
    CFRelease (soundURL02);  

    soundURL03  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound03"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL03, &sound03);  
    CFRelease (soundURL03);  

    soundURL04  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound04"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL04, &sound04);  
    CFRelease (soundURL04);  

    soundURL05  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound05"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL05, &sound05);  
    CFRelease (soundURL05);  

    soundURL06  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound06"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL06, &sound06);  
    CFRelease (soundURL06);  

    soundURL07  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound07"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL07, &sound07);  
    CFRelease (soundURL07);  

    soundURL08  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound08"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL08, &sound08);  
    CFRelease (soundURL08);  

    soundURL09  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound09"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL09, &sound09);  
    CFRelease (soundURL09);  

    soundURL10  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound10"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL10, &sound10);  
    CFRelease (soundURL10);  

    soundURL12  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound12"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL12, &sound12);  
    CFRelease (soundURL12);  

    soundURL14  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound14"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL14, &sound14);  
    CFRelease (soundURL14);  

    soundURL15  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound15"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL15, &sound15);  
    CFRelease (soundURL15);  

    soundURL16  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound16"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL16, &sound16);  
    CFRelease (soundURL16);  

    soundURL18  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound18"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL18, &sound18);  
    CFRelease (soundURL18);  

    soundURL20  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound20"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL20, &sound20);  
    CFRelease (soundURL20);  

    soundURL21  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound21"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL21, &sound21);  
    CFRelease (soundURL21);  

    soundURL24  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound24"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL24, &sound24);  
    CFRelease (soundURL24);  

    soundURL25  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound25"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL25, &sound25);  
    CFRelease (soundURL25);  

    soundURL27  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound27"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL27, &sound27);  
    CFRelease (soundURL27);  

    soundURL28  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound28"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL28, &sound28);  
    CFRelease (soundURL28);  

    soundURL30  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound30"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL30, &sound30);  
    CFRelease (soundURL30);  

    soundURL32  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound32"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL32, &sound32);  
    CFRelease (soundURL32);  

    soundURL35  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound35"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL35, &sound35);  
    CFRelease (soundURL35);  

    soundURL36  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound36"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL36, &sound36);  
    CFRelease (soundURL36);  

    soundURL40  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound40"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL40, &sound40);  
    CFRelease (soundURL40);  

    soundURL42  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound42"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL42, &sound42);  
    CFRelease (soundURL42);  

    soundURL45  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound45"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL45, &sound45);  
    CFRelease (soundURL45);  

    soundURL48  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound48"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL48, &sound48);  
    CFRelease (soundURL48);  

    soundURL49  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound49"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL49, &sound49);  
    CFRelease (soundURL49);  

    soundURL54  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound54"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL54, &sound54);  
    CFRelease (soundURL54);  

    soundURL56  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound56"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL56, &sound56);  
    CFRelease (soundURL56);  

    soundURL63  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound63"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL63, &sound63);  
    CFRelease (soundURL63);  

    soundURL64  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound64"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL64, &sound64);  
    CFRelease (soundURL64);  

    soundURL72  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound72"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL72, &sound72);  
    CFRelease (soundURL72);  

    soundURL81  = CFBundleCopyResourceURL (mainBundle,CFSTR ("sound81"),CFSTR ("wav"),NULL);  
    AudioServicesCreateSystemSoundID (soundURL81, &sound81);  
    CFRelease (soundURL81);  

}

- (void)viewDidUnload
{
    [self setNumBtn:nil];
    [self setCalBtn:nil];
    [self setResetBtn:nil];
    [self setCalView:nil];
    [self setLeftLabel:nil];
    [self setRightLabel:nil];
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

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
    // Return YES for supported orientations
    //return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
//}

int i =0;
int leftNum = 0;
int rightNum = 0;
int ansTrg =0;


- (IBAction)tapNumBtn:(id)sender {
    calView.image = [UIImage imageNamed:@"normal.png"];
    
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

- (IBAction)tapCalBtn:(id)sender {
    if (ansTrg == 1) {
                //だるま画像の差し替え
                leftLabel.text = @"";
                rightLabel.text = @"";
                calView.image = [UIImage imageNamed:@"over.png"];
                
                
                int ans;
                ans = leftNum * rightNum;
        
        switch (ans) {
            case 1:
                AudioServicesPlaySystemSound (sound01);
                break;
            case 2:
                AudioServicesPlaySystemSound (sound02);
                break;
            case 3:
                AudioServicesPlaySystemSound (sound03);
                break;
            case 4:
                AudioServicesPlaySystemSound (sound04);
                break;
            case 5:
                AudioServicesPlaySystemSound (sound05);
                break;
            case 6:
                AudioServicesPlaySystemSound (sound06);
                break;
            case 7:
                AudioServicesPlaySystemSound (sound07);
                break;
            case 8:
                AudioServicesPlaySystemSound (sound08);
                break;
            case 9:
                AudioServicesPlaySystemSound (sound09);
                break;
            case 10:
                AudioServicesPlaySystemSound (sound10);
                break;
            case 12:
                AudioServicesPlaySystemSound (sound12);
                break;
            case 14:
                AudioServicesPlaySystemSound (sound14);
                break;
            case 15:
                AudioServicesPlaySystemSound (sound15);
                break;
            case 16:
                AudioServicesPlaySystemSound (sound16);
                break;
            case 18:
                AudioServicesPlaySystemSound (sound18);
                break;
            case 20:
                AudioServicesPlaySystemSound (sound20);
                break;
            case 21:
                AudioServicesPlaySystemSound (sound21);
                break;
            case 24:
                AudioServicesPlaySystemSound (sound24);
                break;
            case 25:
                AudioServicesPlaySystemSound (sound25);
                break;
            case 27:
                AudioServicesPlaySystemSound (sound27);
                break;
            case 28:
                AudioServicesPlaySystemSound (sound28);
                break;
            case 30:
                AudioServicesPlaySystemSound (sound30);
                break;
            case 32:
                AudioServicesPlaySystemSound (sound32);
                break;
            case 35:
                AudioServicesPlaySystemSound (sound35);
                break;
            case 36:
                AudioServicesPlaySystemSound (sound36);
                break;
            case 40:
                AudioServicesPlaySystemSound (sound40);
                break;
            case 42:
                AudioServicesPlaySystemSound (sound42);
                break;
            case 45:
                AudioServicesPlaySystemSound (sound45);
                break;
            case 48:
                AudioServicesPlaySystemSound (sound48);
                break;
            case 49:
                AudioServicesPlaySystemSound (sound49);
                break;
            case 54:
                AudioServicesPlaySystemSound (sound54);
                break;
            case 56:
                AudioServicesPlaySystemSound (sound56);
                break;
            case 63:
                AudioServicesPlaySystemSound (sound63);
                break;
            case 64:
                AudioServicesPlaySystemSound (sound64);
                break;
            case 72:
                AudioServicesPlaySystemSound (sound72);
                break;
            case 81:
                AudioServicesPlaySystemSound (sound81);
                break;
                
            }
                
                
                NSLog(@"%d", ans);
        
                leftNum = 0;
                rightNum = 0;
                ansTrg = 0;
                i = 0;
    }

}

//値をリセット
- (IBAction)tapResetBtn:(id)sender {
    leftLabel.text = @"";
        rightLabel.text = @"";
        calView.image = [UIImage imageNamed:@"normal.png"];
    
        
        leftNum = 0;
        rightNum = 0;
        ansTrg = 0;
        i = 0;

}
@end
