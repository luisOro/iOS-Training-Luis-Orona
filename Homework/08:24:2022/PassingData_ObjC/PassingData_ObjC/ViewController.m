//
//  ViewController.m
//  PassingData_ObjC
//
//  Created by Consultant on 8/24/22.
//

#import "ViewController.h"
#import "ViewControllerB.h"
#import "ViewControllerC.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)propertiesButtonAction:(id)sender {
    UIStoryboard *board;

    if (!self.storyboard)
    {
        board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    }
    else
    {
        board = self.storyboard;
    }

    ViewControllerB *vc = [board instantiateViewControllerWithIdentifier:@"viewControllerB"];
    //[self.navigationController pushViewController:View animated:YES];
    
    //ViewControllerB *secondViewController = [[ViewControllerB alloc] init];
    vc.data = @"Hi! I'm Luis"; // Set the exposed property
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)segueButtonAction:(id)sender {
    [self performSegueWithIdentifier:@"showDetailingSegue" sender:self];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"showDetailingSegue"]){
        ViewControllerC *controller = (ViewControllerC *)segue.destinationViewController;
        controller.data = @"Hi Segue";
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
