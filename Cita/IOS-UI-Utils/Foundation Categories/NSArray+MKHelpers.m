//
//  NSArray+MKHelpers.m
//  iOS UI Utils
//
//  Copyright 2012 Michael Katz
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "NSArray+MKHelpers.h"

@implementation NSArray (MKHelpers)

- (NSArray*) reverseArray
{
    NSUInteger count = self.count;
    NSMutableArray* ret = [NSMutableArray arrayWithCapacity:count];
    for (int i = count - 1; i >= 0; i--) {
        [ret addObject:[self objectAtIndex:i]];
    }
    return ret;
}

@end
