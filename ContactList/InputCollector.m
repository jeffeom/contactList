//
//  InputCollector.m
//  ContactList
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "InputCollector.h"

char inputChars[255];

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@", promptString);
    fgets(inputChars, 255, stdin);
    NSString *userInput = [NSString stringWithUTF8String:inputChars];
    return userInput;
}

@end
