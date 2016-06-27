//
//  main.m
//  LHL-June.WordEffect
//
//  Created by Asuka Nakagawa on 2016-06-27.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        char inputChars[255];
        printf("Input any string: ");
        fgets(inputChars, 255, stdin);
//        printf("Your input was %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was %@", inputString);
        
        // if userinput was 1(number): do this, if 2: do that
        
        // make it LOUDER
        NSString *louder = [inputString uppercaseString];
        NSLog(@"Uppercase: %@", louder);
        
        // make it lowercase
        NSString *whisper = [inputString lowercaseString];
        NSLog(@"Lowercase: %@", whisper);
        
        // numberize
        NSInteger num = [inputString integerValue];
        NSLog(@"Numberized: %ld", (long)num);
        
        // canadianize
        NSMutableString *canadian = [[inputString stringByAppendingString:@", eh?"] mutableCopy];
        NSLog(@"Canadianize: %@", canadian);
        
        // respond
        if ([inputString hasSuffix:@"?\n"]) {
            NSLog(@"I don't know.");
        }
        else if ([inputString hasSuffix:@"!\n"]) {
            NSLog(@"Whoa, calm down!");
        }
        else {
            NSLog(@"...");
        }

        // De-space-it
        NSMutableString *despace = [[inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"] mutableCopy];
        NSLog(@"Despace: %@", despace);
        
        
        // Stretch Goal:
        // 1.word count
        NSString *removedNewLine = [inputString substringToIndex:inputString.length-1];
        NSLog(@"Word count: %lu", (unsigned long)[removedNewLine length]);
        
        // 2.punctuation removal
        NSString *punctuation = [inputString stringByReplacingOccurrencesOfString:@"," withString:@""];
        punctuation = [punctuation stringByReplacingOccurrencesOfString:@"." withString:@""];
        punctuation = [punctuation stringByReplacingOccurrencesOfString:@"!" withString:@""];
        punctuation = [punctuation stringByReplacingOccurrencesOfString:@"?" withString:@""];
        NSLog(@"Punctuation removal: %@", punctuation);
//        [inputString rangeOfCharacterFromSet:(nonnull NSCharacterSet *)]; // USE WHILE LOOP
        
        // 3.convert everywhere you've used NSMutableString to NSString/ NSString to NSMutableString
        
    }
    return 0;
}
