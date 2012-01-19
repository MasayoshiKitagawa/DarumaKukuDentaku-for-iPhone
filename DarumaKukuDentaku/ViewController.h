//
//  ViewController.h
//  DarumaKukuDentaku
//
//  Created by 正義 北川 on 12/01/14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <AudioToolbox/AudioToolbox.h>


@interface ViewController : UIViewController{
    CFURLRef        soundURL01,soundURL02;  
    SystemSoundID   sound01,sound02;
}
@property (readwrite)   CFURLRef        soundURL01,soundURL02,soundURL03,soundURL04,soundURL05,soundURL06,soundURL07,soundURL08,soundURL09,soundURL10,soundURL12,soundURL14,soundURL15,soundURL16,soundURL18,soundURL20,soundURL21,soundURL24,soundURL25,soundURL27,soundURL28,soundURL30,soundURL32,soundURL35,soundURL36,soundURL40,soundURL42,soundURL45,soundURL48,soundURL49,soundURL54,soundURL56,soundURL63,soundURL64,soundURL72,soundURL81;  
@property (readonly)    SystemSoundID   sound01,sound02,sound03,sound04,sound05,sound06,sound07,sound08,sound09,sound10,sound12,sound14,sound15,sound16,sound18,sound20,sound21,sound24,sound25,sound27,sound28,sound30,sound32,sound35,sound36,sound40,sound42,sound45,sound48,sound49,sound54,sound56,sound63,sound64,sound72,sound81;  


@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *numBtn;
@property (weak, nonatomic) IBOutlet UIButton *calBtn;
@property (weak, nonatomic) IBOutlet UIButton *resetBtn;
@property (weak, nonatomic) IBOutlet UIImageView *calView;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
- (IBAction)tapNumBtn:(id)sender;
- (IBAction)tapCalBtn:(id)sender;
- (IBAction)tapResetBtn:(id)sender;

@end
