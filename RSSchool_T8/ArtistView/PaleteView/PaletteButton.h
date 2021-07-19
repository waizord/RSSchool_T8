//
//  colorButton.h
//  RSSchool_T8
//
//  Created by Ivan on 7/19/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PaletteButton : UIButton

- (id)init;

- (UIView*)putView:(UIView*)view insideShadowWithColor:(UIColor*)color andRadius:(CGFloat)shadowRadius andOffset:(CGSize)shadowOffset andOpacity:(CGFloat)shadowOpacity;
@end

NS_ASSUME_NONNULL_END
