//
//  ContactList.m
//  ContactList
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.userContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)userContact{
    [self.userContacts addObject: userContact];
}

-(void)readContact{
    
    
//    for (Contact *userContact in self.userContacts) {
//        
//        NSString *name = [userContact.name stringByReplacingOccurrencesOfString:@"\n" withString:@""];
//        NSString *email = [userContact.email stringByReplacingOccurrencesOfString:@"\n" withString:@""];
//        NSLog(@"%d: <%@>(%@)", i, name, email);
//    }

    for(int i = 0 ; i < [self.userContacts count]; i++){
        
        Contact *userContact = self.userContacts[i];

        
        NSString *name = [userContact.name stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        NSString *email = [userContact.email stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        NSLog(@"%d: <%@>(%@)", i, name, email);
    }
}


@end
