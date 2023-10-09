//
//  OTT.h
//  Client_ReactNative
//
//  Created by NguyenVanSao on 2/19/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OTT : NSObject
+(OTT *)getInstance;
-(void)initialize:(NSString *)clientKey;
-(NSString *)generate:(NSString *)url configKey:(NSString *)configKey;
@end
