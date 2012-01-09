//
//  ViewController.h
//  DarumaKukuDentakuVar0
//
//  Created by 正義 北川 on 12/01/09.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)tapResetBtn:(id)sender;
- (IBAction)tapCalBtn:(id)sender;
- (IBAction)tapNumBtn:(id)sender;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *numBtn;
@property (weak, nonatomic) IBOutlet UIButton *resetBtn;
@property (weak, nonatomic) IBOutlet UIButton *calBtn;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@property (weak, nonatomic) IBOutlet UIImageView *myView;

@end
