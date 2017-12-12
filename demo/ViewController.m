//
//  ViewController.m
//  demo
//
//  Created by mac on 2017/12/12.
//  Copyright © 2017年 毕研超. All rights reserved.
//

#import "ViewController.h"
#import <SceneKit/SceneKit.h>
#import <ARKit/ARKit.h>


@interface ViewController ()<ARSCNViewDelegate>
{
    ARSCNView *sce;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  
    sce = [[ARSCNView alloc] initWithFrame:self.view.bounds];
    sce.delegate = self;
    [self.view addSubview:sce];
    
     SCNScene *scene = [SCNScene sceneNamed:@"art.scnassets/ship.scn"];
    
    
    sce.scene = scene;
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Create a session configuration
    ARWorldTrackingConfiguration *configuration = [ARWorldTrackingConfiguration new];
    
    // Run the view's session
    [sce.session runWithConfiguration:configuration];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // Pause the view's session
    [sce.session pause];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
