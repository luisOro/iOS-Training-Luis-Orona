//
//  ViewController.m
//  UILabel_1.2
//
//  Created by Consultant on 8/23/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM-dd-yyyy"];
    
    NSString *finalDate = [dateFormatter stringFromDate:[NSDate date]];
    label=[[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2, 150, 20)];//Set frame of label in your viewcontroller.
    [label setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];
    [label setBackgroundColor:[UIColor clearColor]];//Set background color of label.
    [label setText:finalDate];//Set text in label.
    [label setTextColor:[UIColor redColor]];//Set text color in label.
    [label setShadowColor:[UIColor darkGrayColor]];//Set shadow color in label.
    [label setFont:[UIFont fontWithName:@"Verdana" size:18]]; //Set font text in label
    
    [label setTextAlignment:NSTextAlignmentCenter];//Set text alignment in label.
    [label setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
    [label setNumberOfLines:2];//Set number of lines in label.
    
    UILabel *labelPress = [[UILabel alloc] init];
    labelPress=[[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2, 150, 20)];//Set frame of label in your viewcontroller.
    [labelPress setCenter:CGPointMake(self.view.frame.size.width / 2, (self.view.frame.size.height / 2)+80)];
    [labelPress setBackgroundColor:[UIColor clearColor]];//Set background color of label.
    [labelPress setText:@"Press label"];//Set text in label.
    [labelPress setTextColor:[UIColor redColor]];//Set text color in label.
    [labelPress setShadowColor:[UIColor darkGrayColor]];//Set shadow color in label.
    [labelPress setFont:[UIFont fontWithName:@"Verdana" size:18]]; //Set font text in label
    
    [labelPress setTextAlignment:NSTextAlignmentCenter];//Set text alignment in label.
    [labelPress setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
    [labelPress setNumberOfLines:2];//Set number of lines in label.
    
    UITapGestureRecognizer* gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    // if labelView is not set userInteractionEnabled, you must do so
    [labelPress setUserInteractionEnabled:YES];
    [labelPress addGestureRecognizer:gesture];
    
    [self.view addSubview:labelPress];//Add it to the view of your choice.
    [self.view addSubview:label];//Add it to the view of your choice.
    
    
    
    UILabel *label1 = [[UILabel alloc] init];
    label1=[[UILabel alloc]initWithFrame:CGRectMake(20, 50, 80 , 30)];//Set frame of label in your viewcontroller.
    [label1 setBackgroundColor:[UIColor clearColor]];//Set background color of label.
    [label1 setText:@"Hello 1"];//Set text in label.
    [label1 setTextColor:[UIColor redColor]];//Set text color in label.
    [label1 setShadowColor:[UIColor darkGrayColor]];//Set shadow color in label.
    [label1 setFont:[UIFont fontWithName:@"Verdana" size:18]]; //Set font text in label
    
    [label1 setTextAlignment:NSTextAlignmentCenter];//Set text alignment in label.
    [label1 setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
    [label1 setNumberOfLines:2];//Set number of lines in label.
    [self.view addSubview:label1];//Add it to the view of your choice.
    
    UILabel *label2 = [[UILabel alloc] init];
    label2=[[UILabel alloc]initWithFrame:CGRectMake(105, 50, 80 , 30)];//Set frame of label in your viewcontroller.
    [label2 setBackgroundColor:[UIColor clearColor]];//Set background color of label.
    [label2 setText:@"Hello 2"];//Set text in label.
    [label2 setTextColor:[UIColor redColor]];//Set text color in label.
    [label2 setShadowColor:[UIColor darkGrayColor]];//Set shadow color in label.
    [label2 setFont:[UIFont fontWithName:@"Verdana" size:18]]; //Set font text in label
    
    [label2 setTextAlignment:NSTextAlignmentCenter];//Set text alignment in label.
    [label2 setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
    [label2 setNumberOfLines:2];//Set number of lines in label.
    [self.view addSubview:label2];//Add it to the view of your choice.
    
    UILabel *label3 = [[UILabel alloc] init];
    label3=[[UILabel alloc]initWithFrame:CGRectMake(190, 50, 80 , 30)];//Set frame of label in your viewcontroller.
    [label3 setBackgroundColor:[UIColor clearColor]];//Set background color of label.
    [label3 setText:@"Hello 3"];//Set text in label.
    [label3 setTextColor:[UIColor redColor]];//Set text color in label.
    [label3 setShadowColor:[UIColor darkGrayColor]];//Set shadow color in label.
    [label3 setFont:[UIFont fontWithName:@"Verdana" size:18]]; //Set font text in label
    
    [label3 setTextAlignment:NSTextAlignmentCenter];//Set text alignment in label.
    [label3 setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
    [label3 setNumberOfLines:2];//Set number of lines in label.
    [self.view addSubview:label3];//Add it to the view of your choice.
    
    for (int i = 0; i < 5; i++)
    {
        UILabel *labelLoop = [[UILabel alloc] init];
        labelLoop=[[UILabel alloc]initWithFrame:CGRectMake(40 + (65*i), 90, 65 , 30)];//Set frame of label in your viewcontroller.
        [labelLoop setBackgroundColor:[UIColor clearColor]];//Set background color of label.
        [labelLoop setText:[@"Loop" stringByAppendingString:[NSString stringWithFormat:@"%i", i+1]]];//Set text in label.
        [labelLoop setTextColor:[UIColor redColor]];//Set text color in label.
        [labelLoop setShadowColor:[UIColor darkGrayColor]];//Set shadow color in label.
        [labelLoop setFont:[UIFont fontWithName:@"Verdana" size:18]]; //Set font text in label
        
        [labelLoop setTextAlignment:NSTextAlignmentCenter];//Set text alignment in label.
        [labelLoop setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
        [labelLoop setNumberOfLines:2];//Set number of lines in label.
        [self.view addSubview:labelLoop];//Add it to the view of your choice.
    }
        //Stack View
        UIStackView *stackView = [[UIStackView alloc] init];

        stackView.axis = UILayoutConstraintAxisVertical;
        stackView.distribution = UIStackViewDistributionEqualSpacing;
        stackView.alignment = UIStackViewAlignmentCenter;
        stackView.spacing = 20;



        
    
    //For vertical stack view, you might want to add a height constraint to your label or whatever view you are adding.
    for (int i = 0; i < 5; i++)
    {
        UILabel *labelLoop = [[UILabel alloc] initWithFrame:CGRectZero];
        //UILabel *labelLoop = [[UILabel alloc] init];
        //labelLoop=[[UILabel alloc]initWithFrame:CGRectMake(60 + (65*i), 90, 65 , 30)];//Set frame of label in your viewcontroller.
        [labelLoop setBackgroundColor:[UIColor clearColor]];//Set background color of label.
        [labelLoop setText:[@"Stack" stringByAppendingString:[NSString stringWithFormat:@"%i", i+1]]];//Set text in label.
        [labelLoop setTextColor:[UIColor redColor]];//Set text color in label.
        [labelLoop setShadowColor:[UIColor darkGrayColor]];//Set shadow color in label.
        [labelLoop setFont:[UIFont fontWithName:@"Verdana" size:18]]; //Set font text in label
        
        [labelLoop setTextAlignment:NSTextAlignmentCenter];//Set text alignment in label.
        [labelLoop setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
        [labelLoop setNumberOfLines:2];//Set number of lines in label.
        [stackView addArrangedSubview:labelLoop];
        
    }
    stackView.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:stackView];


    //Layout for Stack View
    [stackView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = true;
    
}

- (void)handleTap:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        NSLog(@"Pressed button.");
    }
}
@end
