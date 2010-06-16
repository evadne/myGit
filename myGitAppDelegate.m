//
//  myGitAppDelegate.m
//  myGit
//
//  Created by Evadne Wu on 6/14/10.
//  Copyright 2010 Iridia Productions. All rights reserved.
//

#import "myGitAppDelegate.h"

@implementation myGitAppDelegate

@synthesize window, thePath;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

	[self refreshGitLocation];

}





- (void) refreshGitLocation {
	
	NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/usr/bin/which"];
	[task setArguments:[NSArray arrayWithObjects: @"capp", nil]];
	
	NSPipe *pipe = [NSPipe pipe];
	[task setStandardOutput: pipe];
	
	NSFileHandle *fileHandle = [pipe fileHandleForReading];
	
	[task launch];
	[task waitUntilExit];
	
	self.thePath = [[[NSString alloc] initWithData:[fileHandle readDataToEndOfFile] encoding: NSUTF8StringEncoding] autorelease];	
	
}

@end




