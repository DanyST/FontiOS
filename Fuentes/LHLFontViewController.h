//
//  LHLFontViewController.h
//  Fuentes
//
//  Created by Luis Herrera on 11-06-17.
//  Copyright © 2017 Luis Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LHLFontViewController : UIViewController

@property (nonatomic, strong) UIFont *font;

@property (nonatomic, weak) IBOutlet UILabel *fontName;
@property (weak, nonatomic) IBOutlet UITextView *info;


-(id)initWithFont:(UIFont *)aFont;


@end
