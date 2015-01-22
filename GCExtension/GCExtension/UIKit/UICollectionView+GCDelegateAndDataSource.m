//
//  UICollectionView+GCDelegateAndDataSource.m
//  GCExtension
//
//  Created by njgarychow on 1/22/15.
//  Copyright (c) 2015 zhoujinqiang. All rights reserved.
//

#import "UICollectionView+GCDelegateAndDataSource.h"

#import "UICollectionView+GCDelegateAndDataSourceBlock.h"

@implementation UICollectionView (GCDelegateAndDataSource)

- (instancetype)withBlockForItemNumber:(NSInteger (^)(UICollectionView* view, NSInteger section))block {
    self.blockForItemNumber = block;
    return self;
}

- (instancetype)withBlockForSectionNumber:(NSInteger (^)(UICollectionView* view))block {
    self.blockForSectionNumber = block;
    return self;
}

- (instancetype)withBlockForItemCell:(UICollectionViewCell* (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemCell = block;
    [self usingBlocks];
    return self;
}

- (instancetype)withBlockForSupplementaryElement:(UICollectionReusableView* (^)(UICollectionView* view, NSString* kind, NSIndexPath* path))block {
    self.blockForSupplementaryElement = block;
    return self;
}




- (instancetype)withBlockForItemShouldSelect:(BOOL (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemShouldSelect = block;
    return self;
}

- (instancetype)withBlockForItemDidSelect:(void (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemDidSelect = block;
    return self;
}

- (instancetype)withBlockForItemShouldDeselect:(BOOL (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemShouldDeselect = block;
    return self;
}

- (instancetype)withBlockForItemDidDeselect:(void (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemDidDeselect = block;
    return self;
}

- (instancetype)withBlockForItemShouldHighlight:(BOOL (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemShouldHighlight = block;
    return self;
}

- (instancetype)withBlockForItemDidHighlight:(void (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemDidHighlight = block;
    return self;
}

- (instancetype)withBlockForItemDidUnhighlight:(void (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemDidUnhighlight = block;
    return self;
}

- (instancetype)withBlockForItemWillDisplay:(void (^)(UICollectionView* view, UICollectionViewCell* cell, NSIndexPath* path))block {
    self.blockForItemWillDisplay = block;
    return self;
}

- (instancetype)withBlockForSupplementaryWillDisplay:(void (^)(UICollectionView* view, UICollectionReusableView* reusableView, NSString* elementKind, NSIndexPath* path))block {
    self.blockForSupplementaryWillDisplay = block;
    return self;
}

- (instancetype)withBlockForItemCellDidEndDisplay:(void (^)(UICollectionView* view, UICollectionViewCell* cell, NSIndexPath* path))block {
    self.blockForItemCellDidEndDisplay = block;
    return self;
}

- (instancetype)withBlockForSupplementaryDidEndDisplay:(void (^)(UICollectionView* view, UICollectionReusableView* reusableView, NSString* elementKind, NSIndexPath* path))block {
    self.blockForSupplementaryDidEndDisplay = block;
    return self;
}

- (instancetype)withBlockForLayoutTransition:(UICollectionViewTransitionLayout* (^)(UICollectionView* view, UICollectionViewLayout* fromLayout, UICollectionViewLayout* toLayout))block {
    self.blockForLayoutTransition = block;
    return self;
}

- (instancetype)withBlockForItemMenuShouldShow:(BOOL (^)(UICollectionView* view, NSIndexPath* path))block {
    self.blockForItemMenuShouldShow = block;
    return self;
}

- (instancetype)withBlockForItemCanPerformAction:(BOOL (^)(UICollectionView* view, SEL action, NSIndexPath* path, id sender))block {
    self.blockForItemCanPerformAction = block;
    return self;
}

- (instancetype)withBlockForItemPerformAction:(void (^)(UICollectionView* view, SEL action, NSIndexPath* path, id sender))block {
    self.blockForItemPerformAction = block;
    return self;
}





- (instancetype)withBlockForFlowlayoutSize:(CGSize (^)(UICollectionView* view, UICollectionViewLayout* layout, NSIndexPath* path))block {
    self.blockForFlowLayoutSize = block;
    return self;
}

- (instancetype)withBlockForFlowLayoutSectionInset:(UIEdgeInsets (^)(UICollectionView* view, UICollectionViewLayout* layout, NSInteger section))block {
    self.blockForFlowLayoutSectionInset = block;
    return self;
}

- (instancetype)withBlockForFlowLayoutSectionMinimumSpacing:(CGFloat (^)(UICollectionView* view, UICollectionViewLayout* layout, NSInteger section))block {
    self.blockForFlowLayoutSectionMinimumSpacing = block;
    return self;
}

- (instancetype)withBlockForFlowLayoutSectionMinimumInteritemSpacing:(CGFloat (^)(UICollectionView* view, UICollectionViewLayout* layout, NSInteger section))block {
    self.blockForFlowLayoutSectionMinimumInteritemSpacing = block;
    return self;
}

- (instancetype)withBlockForFlowLayoutHeaderReferenceSize:(CGSize (^)(UICollectionView* view, UICollectionViewLayout* layout, NSInteger section))block {
    self.blockForFlowLayoutHeaderReferenceSize = block;
    return self;
}

- (instancetype)withBlockForFlowLayoutFooterReferenceSize:(CGSize (^)(UICollectionView* view, UICollectionViewLayout* layout, NSInteger section))block {
    self.blockForFlowLayoutFooterReferenceSize = block;
    return self;
}

@end
