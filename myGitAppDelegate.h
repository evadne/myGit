//
//  myGitAppDelegate.h
//  myGit
//
//  Created by Evadne Wu on 6/14/10.
//  Copyright 2010 Iridia Productions. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface myGitAppDelegate : NSObject <NSApplicationDelegate> {

	NSWindow *window;
	NSString *thePath;

}

- (void) refreshGitLocation;

@property (assign) IBOutlet NSWindow *window;
@property (assign) NSString *thePath;

@end
