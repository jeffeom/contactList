//
//  ContactList.h
//  ContactList
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSMutableArray

@property NSMutableArray* userContacts;

-(void)addContact:(Contact *)contact;

-(void)readContact;

@end
