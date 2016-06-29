//
//  main.m
//  ContactList
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "InputCollector.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *menuSelect;
        NSString *userName;
        NSString *userEmail;
        
        InputCollector *userInput = [[InputCollector alloc] init];
        ContactList *userContactList = [[ContactList alloc] init];
        
        while(true){
            menuSelect = [userInput inputForPrompt: @"What would you like do next? \n new - Create a new contact list - List all contacts quit - Exit Application \n"];
            
            if ([menuSelect  isEqual: @"exit\n"]){
                
                NSLog(@"Adieu");
                break;
                
            }else if([menuSelect isEqual:@"new\n"]) {
                
                userName = [userInput inputForPrompt:@"What is your name?"];
                userEmail = [userInput inputForPrompt:@"What is your email?"];
                
                Contact *userContact = [[Contact alloc] initWithName:userName andEmail:userEmail];
                
                NSLog(@"Your name is %@, and your email is %@", userContact.name, userContact.email);
                
                [userContactList addContact:userContact];
                
            }else if([menuSelect isEqual:@"list\n"]){
                [userContactList readContact];
            }
        }
        
        
        
    }
    return 0;
}
