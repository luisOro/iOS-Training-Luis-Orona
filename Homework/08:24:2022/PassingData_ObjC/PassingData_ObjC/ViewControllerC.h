//
//  ViewControllerC.h
//  PassingData_ObjC
//
//  Created by Consultant on 8/24/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerC : UIViewController
@property (nonatomic, retain) NSString *data;
@property (weak, nonatomic) IBOutlet UILabel *messageUILabel;

@end

NS_ASSUME_NONNULL_END
