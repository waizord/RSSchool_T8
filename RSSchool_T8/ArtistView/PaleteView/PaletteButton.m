//
//  colorButton.m
//  RSSchool_T8
//
//  Created by Ivan on 7/19/21.
//

#import "PaletteButton.h"

@interface PaletteButton()

@end
@implementation PaletteButton

- (id)init
{
   self = [super init];
   if (self) {
       
   }
  return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self putView:self insideShadowWithColor:UIColor.blackColor andRadius:10.0 andOffset:CGSizeZero andOpacity:1];
//    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
//    colorView.layer.cornerRadius = 6;
//    colorView.layer.backgroundColor = UIColor.whiteColor.CGColor;
//
//    UIView *shadowView = [[UIView alloc] initWithFrame:self.frame];
//    shadowView.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.25].CGColor;
//    shadowView.layer.shadowOffset = CGSizeZero;
//    shadowView.layer.shadowOpacity = 1.0;
//    shadowView.layer.shadowRadius = 2;
//    shadowView.layer.cornerRadius = 10;
//
//    CALayer *border = [CALayer new];
//    border.backgroundColor = UIColor.blackColor.CGColor;
//    border.bounds = self.bounds;
//    border.position = self.center;
//    border.cornerRadius = 10;
//
//    [shadowView.layer addSublayer:border];
//    [shadowView  addSubview:self];
//    [self addSubview:colorView];
    
    
    
    
    /*
     var shadows = UIView()
     shadows.frame = view.frame
     shadows.clipsToBounds = false
     view.addSubview(shadows)

     let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 10)
     let layer0 = CALayer()
     layer0.shadowPath = shadowPath0.cgPath
     layer0.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
     layer0.shadowOpacity = 1
     layer0.shadowRadius = 2
     layer0.shadowOffset = CGSize(width: 0, height: 0)
     layer0.bounds = shadows.bounds
     layer0.position = shadows.center
     shadows.layer.addSublayer(layer0)

     var shapes = UIView()
     shapes.frame = view.frame
     shapes.clipsToBounds = true
     view.addSubview(shapes)

     let layer1 = CALayer()
     layer1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
     layer1.bounds = shapes.bounds
     layer1.position = shapes.center
     shapes.layer.addSublayer(layer1)

     shapes.layer.cornerRadius = 10
     */
    
    //[self.layer setBorderColor:[UIColor colorNamed:@"Little Boy Blue"].CGColor];
}

- (void)setDefaultState {
    
}

- (void)setHighlightedState {
    
}

- (void)setDisabledState {
    
}
- (UIView*)putView:(UIView*)view insideShadowWithColor:(UIColor*)color andRadius:(CGFloat)shadowRadius andOffset:(CGSize)shadowOffset andOpacity:(CGFloat)shadowOpacity
{
    CGRect shadowFrame; // Modify this if needed

    // Modified this line
    shadowFrame.size = CGSizeMake(view.frame.size.width, view.frame.size.height);

    shadowFrame.origin.x = 0.f;
    shadowFrame.origin.y = 0.f;
    UIView * shadow = [[UIView alloc] initWithFrame:shadowFrame];

    // Modified this line
    shadow.userInteractionEnabled = YES;
    shadow.layer.shadowColor = color.CGColor;
    shadow.layer.shadowOffset = shadowOffset;
    shadow.layer.shadowRadius = shadowRadius;
    shadow.layer.masksToBounds = NO;
    shadow.clipsToBounds = NO;
    shadow.layer.shadowOpacity = shadowOpacity;

    [shadow addSubview:view];
    return shadow;
}

@end
