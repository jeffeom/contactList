//
//  Contact.h
//  ContactList
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSArray

@property NSString *name;
@property NSString *email;

-(instancetype)initWithName:(NSString*)name andEmail:(NSString*)email;

@end
