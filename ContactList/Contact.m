//
//  Contact.m
//  ContactList
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Contact.h"
#import "InputCollector.h"

@implementation Contact


- (instancetype)initWithName:(NSString*)name andEmail:(NSString*)email;
{
    self = [super init];
    if (self) {
        self.name = name;
        self.email = email;
    }
    return self;
}
@end
