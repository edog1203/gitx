//
//  PBGitSVBranchItem.m
//  GitX
//
//  Created by Nathan Kinsinger on 3/2/10.
//  Copyright 2010 Nathan Kinsinger. All rights reserved.
//

#import "PBGitSVBranchItem.h"


@implementation PBGitSVBranchItem


+ (id)branchItemWithRevSpec:(PBGitRevSpecifier *)revSpecifier
{
	PBGitSVBranchItem *item = [self itemWithTitle:[[revSpecifier description] lastPathComponent]];
	item.revSpecifier = revSpecifier;
	
	return item;
}


- (NSImage *) icon
{
	static NSImage *branchImage = nil;
	if (!branchImage)
		branchImage = [NSImage imageNamed:@"Branch.png"];
	
	return branchImage;
}

@end
