//
//  ExampleImageCache.m
//  TSFileCache
//
//  Created by Tomasz Szulc Prywatny on 15/04/14.
//  Copyright (c) 2014 Tomasz Szulc. All rights reserved.
//

#import "TSImageCache.h"

@implementation TSImageCache

static TSImageCache *_sharedInstance = nil;
+ (instancetype)sharedInstance {
    if (!_sharedInstance) {
        _sharedInstance = [super cacheInTemporaryDirectoryWithRelativeURL:[NSURL fileURLWithPath:@"/Cache/Images"]];
        /// Prepare directory
        [_sharedInstance prepare:nil];
        [TSFileCache setSharedInstance:_sharedInstance];
    }
    return _sharedInstance;
}

- (UIImage *)imageForKey:(NSString *)key {
    NSData *data = [super dataForKey:key];
    return [UIImage imageWithData:data];
}

- (void)cacheImage:(UIImage *)image forKey:(NSString *)key {
    NSData *data = UIImagePNGRepresentation(image);
    [super storeData:data forKey:key];
}

- (void)removeImageForKey:(NSString *)key{
    [super removeDataForKey:key];
}

- (void)clear {
    [super clear];
}

@end

@implementation TSImageCache (Subscript)

- (void)setObject:(UIImage *)image forKeyedSubscript:(NSString *)key {
    [self cacheImage:image forKey:key];
}

- (UIImage *)objectForKeyedSubscript:(NSString *)key {
    return [self imageForKey:key];
}

@end