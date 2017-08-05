//
//  LHLFontViewController.m
//  Fuentes
//
//  Created by Luis Herrera on 11-06-17.
//  Copyright © 2017 Luis Herrera. All rights reserved.
//

#import "LHLFontViewController.h"

@interface LHLFontViewController ()

@end

@implementation LHLFontViewController

-(id)initWithFont:(UIFont *)aFont{
    
    if(self = [super initWithNibName:nil
                bundle:nil]) {
        _font = aFont;
        self.title = aFont.fontName;
    }
    
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self syncViewToModel];
}

-(void)syncViewToModel{
    
    self.fontName.text = self.font.fontName;
    self.fontName.font = [self.font fontWithSize:30];
    self.fontName.adjustsFontSizeToFitWidth = YES;
    self.info.font = self.font;
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
