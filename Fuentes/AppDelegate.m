//
//  AppDelegate.m
//  Fuentes
//
//  Created by Luis Herrera on 10-06-17.
//  Copyright © 2017 Luis Herrera. All rights reserved.
//

#import "AppDelegate.h"
#import "LHLFontsTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //Custom Appearance
    [self customizeAppearance];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    
    //Creamos un controlador
    LHLFontsTableViewController *fontsVC = [[LHLFontsTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    //Creamos un Conbinador
    UINavigationController *fontsNav = [[UINavigationController alloc]initWithRootViewController:fontsVC];
    
    //Añadimos un controlador raiz
    self.window.rootViewController = fontsNav;
    
    [self.window makeKeyAndVisible];
   
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)customizeAppearance{
    UIColor *darkBlue = [UIColor colorWithRed:(5/255)
                                        green:(25/255)
                                         blue:(90/255)
                                        alpha:1];
    
    UIColor *darkRed = [UIColor colorWithRed:(200/255)
                                       green:(200/255)
                                        blue:(52/255)
                                       alpha:1];
    //Modificamos color de secciones de la tabla
    [[UITableViewHeaderFooterView appearance]setTintColor:darkBlue];
    //Color sección de la derecha
    [[UITableView appearance]setSectionIndexColor:[UIColor redColor]];
    //Color de textLabel de cada sección de tableView
    [[UILabel appearanceWhenContainedInInstancesOfClasses:@[[UITableViewHeaderFooterView class]]]setTextColor:[UIColor whiteColor]];
    
    //Color de la barra de la navegación del NavigationController
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"narBarBackgroundPortrait"]
                                       forBarMetrics:UIBarMetricsDefault];
     //Color del navigationLeftBar
    [[UINavigationBar appearance]setTintColor:[UIColor whiteColor]];
    
    //Efecto shadow y tipo de fuente del titulo del navigationBar
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    shadow.shadowOffset = CGSizeMake(0, -1);
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSShadowAttributeName: shadow,
                                                           NSFontAttributeName: [UIFont fontWithName:@"Star Jedi" size:20]}];
    
    //Color de texto y titulo del navigationBar
    UINavigationBar.appearance.barStyle = UIStatusBarStyleLightContent;
    
    
    UIImage *elastic = [[UIImage imageNamed:@"backBtn"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 5) resizingMode:UIImageResizingModeStretch];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:elastic
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
}



@end
