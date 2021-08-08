.class public abstract Lorg/locationtech/jts/index/strtree/AbstractSTRtree;
.super Ljava/lang/Object;
.source "AbstractSTRtree.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;
    }
.end annotation


# static fields
.field private static final DEFAULT_NODE_CAPACITY:I = 0xa

.field private static final serialVersionUID:J = -0x35ef64c82d4c54b9L


# instance fields
.field private built:Z

.field private itemBoundables:Ljava/util/ArrayList;

.field private nodeCapacity:I

.field protected root:Lorg/locationtech/jts/index/strtree/AbstractNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;-><init>(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "nodeCapacity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v1, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->built:Z

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->itemBoundables:Ljava/util/ArrayList;

    .line 93
    if-le p1, v0, :cond_0

    :goto_0
    const-string v1, "Node capacity must be greater than 1"

    invoke-static {v0, v1}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 94
    iput p1, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->nodeCapacity:I

    .line 95
    return-void

    :cond_0
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method private boundablesAtLevel(ILorg/locationtech/jts/index/strtree/AbstractNode;Ljava/util/Collection;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "top"    # Lorg/locationtech/jts/index/strtree/AbstractNode;
    .param p3, "boundables"    # Ljava/util/Collection;

    .prologue
    .line 430
    const/4 v2, -0x2

    if-le p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 431
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getLevel()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 432
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_0
    return-void

    .line 430
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 437
    .local v0, "boundable":Lorg/locationtech/jts/index/strtree/Boundable;
    instance-of v2, v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    if-eqz v2, :cond_4

    .line 438
    check-cast v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .end local v0    # "boundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-direct {p0, p1, v0, p3}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->boundablesAtLevel(ILorg/locationtech/jts/index/strtree/AbstractNode;Ljava/util/Collection;)V

    goto :goto_1

    .line 441
    .restart local v0    # "boundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_4
    instance-of v2, v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-static {v2}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 442
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected static compareDoubles(DD)I
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 140
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createHigherLevels(Ljava/util/List;I)Lorg/locationtech/jts/index/strtree/AbstractNode;
    .locals 4
    .param p1, "boundablesOfALevel"    # Ljava/util/List;
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 157
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->createParentBoundables(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "parentBoundables":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 159
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .line 161
    :goto_1
    return-object v1

    .end local v0    # "parentBoundables":Ljava/util/List;
    :cond_0
    move v1, v3

    .line 156
    goto :goto_0

    .line 161
    .restart local v0    # "parentBoundables":Ljava/util/List;
    :cond_1
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->createHigherLevels(Ljava/util/List;I)Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v1

    goto :goto_1
.end method

.method private itemsTree(Lorg/locationtech/jts/index/strtree/AbstractNode;)Ljava/util/List;
    .locals 5
    .param p1, "node"    # Lorg/locationtech/jts/index/strtree/AbstractNode;

    .prologue
    .line 339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, "valuesTreeForNode":Ljava/util/List;
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 342
    .local v0, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    instance-of v4, v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    if-eqz v4, :cond_1

    .line 343
    check-cast v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->itemsTree(Lorg/locationtech/jts/index/strtree/AbstractNode;)Ljava/util/List;

    move-result-object v2

    .line 345
    .local v2, "valuesTreeForChild":Ljava/util/List;
    if-eqz v2, :cond_0

    .line 346
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    .end local v2    # "valuesTreeForChild":Ljava/util/List;
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_1
    instance-of v4, v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    if-eqz v4, :cond_2

    .line 349
    check-cast v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_2
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    goto :goto_0

    .line 355
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 356
    const/4 v3, 0x0

    .line 357
    .end local v3    # "valuesTreeForNode":Ljava/util/List;
    :cond_4
    return-object v3
.end method

.method private query(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Ljava/util/List;)V
    .locals 5
    .param p1, "searchBounds"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/locationtech/jts/index/strtree/AbstractNode;
    .param p3, "matches"    # Ljava/util/List;

    .prologue
    .line 278
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v1

    .line 279
    .local v1, "childBoundables":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 280
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 281
    .local v0, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    move-result-object v3

    invoke-interface {v0}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;->intersects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_0
    instance-of v3, v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    if-eqz v3, :cond_1

    .line 285
    check-cast v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-direct {p0, p1, v0, p3}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->query(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Ljava/util/List;)V

    goto :goto_1

    .line 287
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_1
    instance-of v3, v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    if-eqz v3, :cond_2

    .line 288
    check-cast v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_2
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    goto :goto_1

    .line 294
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_3
    return-void
.end method

.method private query(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Lorg/locationtech/jts/index/ItemVisitor;)V
    .locals 5
    .param p1, "searchBounds"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/locationtech/jts/index/strtree/AbstractNode;
    .param p3, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 297
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "childBoundables":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 299
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 300
    .local v0, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    move-result-object v3

    invoke-interface {v0}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;->intersects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_0
    instance-of v3, v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    if-eqz v3, :cond_1

    .line 304
    check-cast v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-direct {p0, p1, v0, p3}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->query(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Lorg/locationtech/jts/index/ItemVisitor;)V

    goto :goto_1

    .line 306
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_1
    instance-of v3, v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    if-eqz v3, :cond_2

    .line 307
    check-cast v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/locationtech/jts/index/ItemVisitor;->visitItem(Ljava/lang/Object;)V

    goto :goto_1

    .line 310
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_2
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    goto :goto_1

    .line 313
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_3
    return-void
.end method

.method private remove(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "searchBounds"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/locationtech/jts/index/strtree/AbstractNode;
    .param p3, "item"    # Ljava/lang/Object;

    .prologue
    .line 391
    invoke-direct {p0, p2, p3}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->removeItem(Lorg/locationtech/jts/index/strtree/AbstractNode;Ljava/lang/Object;)Z

    move-result v2

    .line 392
    .local v2, "found":Z
    if-eqz v2, :cond_0

    .line 393
    const/4 v4, 0x1

    .line 417
    :goto_0
    return v4

    .line 395
    :cond_0
    const/4 v1, 0x0

    .line 397
    .local v1, "childToPrune":Lorg/locationtech/jts/index/strtree/AbstractNode;
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 399
    .local v0, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    move-result-object v4

    invoke-interface {v0}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;->intersects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    instance-of v4, v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 403
    check-cast v4, Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-direct {p0, p1, v4, p3}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->remove(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Ljava/lang/Object;)Z

    move-result v2

    .line 405
    if-eqz v2, :cond_1

    move-object v1, v0

    .line 406
    check-cast v1, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .line 412
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_2
    if-eqz v1, :cond_3

    .line 413
    invoke-virtual {v1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 414
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    move v4, v2

    .line 417
    goto :goto_0
.end method

.method private removeItem(Lorg/locationtech/jts/index/strtree/AbstractNode;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "node"    # Lorg/locationtech/jts/index/strtree/AbstractNode;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "childToRemove":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 377
    .local v0, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    instance-of v3, v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 378
    check-cast v3, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-virtual {v3}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 379
    move-object v1, v0

    goto :goto_0

    .line 382
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_1
    if-eqz v1, :cond_2

    .line 383
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    const/4 v3, 0x1

    .line 386
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected boundablesAtLevel(I)Ljava/util/List;
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "boundables":Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-direct {p0, p1, v1, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->boundablesAtLevel(ILorg/locationtech/jts/index/strtree/AbstractNode;Ljava/util/Collection;)V

    .line 423
    return-object v0
.end method

.method public declared-synchronized build()V
    .locals 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->built:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->itemBoundables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->createNode(I)Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v0

    .line 107
    :goto_1
    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->itemBoundables:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->built:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->itemBoundables:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 107
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->createHigherLevels(Ljava/util/List;I)Lorg/locationtech/jts/index/strtree/AbstractNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract createNode(I)Lorg/locationtech/jts/index/strtree/AbstractNode;
.end method

.method protected createParentBoundables(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p1, "childBoundables"    # Ljava/util/List;
    .param p2, "newLevel"    # I

    .prologue
    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, "parentBoundables":Ljava/util/ArrayList;
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->createNode(I)Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v3, "sortedChildBoundables":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->getComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 127
    .local v0, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->lastNode(Ljava/util/List;)Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->getNodeCapacity()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 128
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->createNode(I)Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->lastNode(Ljava/util/List;)Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/locationtech/jts/index/strtree/AbstractNode;->addChildBoundable(Lorg/locationtech/jts/index/strtree/Boundable;)V

    goto :goto_1

    .line 120
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "parentBoundables":Ljava/util/ArrayList;
    .end local v3    # "sortedChildBoundables":Ljava/util/ArrayList;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 132
    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v2    # "parentBoundables":Ljava/util/ArrayList;
    .restart local v3    # "sortedChildBoundables":Ljava/util/ArrayList;
    :cond_2
    return-object v2
.end method

.method protected depth()I
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->build()V

    .line 216
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->depth(Lorg/locationtech/jts/index/strtree/AbstractNode;)I

    move-result v0

    goto :goto_0
.end method

.method protected depth(Lorg/locationtech/jts/index/strtree/AbstractNode;)I
    .locals 5
    .param p1, "node"    # Lorg/locationtech/jts/index/strtree/AbstractNode;

    .prologue
    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, "maxChildDepth":I
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 224
    .local v0, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    instance-of v4, v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    if-eqz v4, :cond_0

    .line 225
    check-cast v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->depth(Lorg/locationtech/jts/index/strtree/AbstractNode;)I

    move-result v1

    .line 226
    .local v1, "childDepth":I
    if-le v1, v3, :cond_0

    .line 227
    move v3, v1

    goto :goto_0

    .line 230
    .end local v1    # "childDepth":I
    :cond_1
    add-int/lit8 v4, v3, 0x1

    return v4
.end method

.method protected abstract getComparator()Ljava/util/Comparator;
.end method

.method protected abstract getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;
.end method

.method public getNodeCapacity()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->nodeCapacity:I

    return v0
.end method

.method public getRoot()Lorg/locationtech/jts/index/strtree/AbstractNode;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->build()V

    .line 167
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    return-object v0
.end method

.method protected insert(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "bounds"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->built:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot insert items into an STR packed R-tree after it has been built."

    invoke-static {v0, v1}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 236
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->itemBoundables:Ljava/util/ArrayList;

    new-instance v1, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-direct {v1, p1, p2}, Lorg/locationtech/jts/index/strtree/ItemBoundable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->built:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->itemBoundables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/AbstractNode;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public itemsTree()Ljava/util/List;
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->build()V

    .line 331
    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-direct {p0, v1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->itemsTree(Lorg/locationtech/jts/index/strtree/AbstractNode;)Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "valuesTree":Ljava/util/List;
    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "valuesTree":Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    :cond_0
    return-object v0
.end method

.method protected lastNode(Ljava/util/List;)Lorg/locationtech/jts/index/strtree/AbstractNode;
    .locals 1
    .param p1, "nodes"    # Ljava/util/List;

    .prologue
    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    return-object v0
.end method

.method protected query(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p1, "searchBounds"    # Ljava/lang/Object;

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->build()V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "matches":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-virtual {v2}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getBounds()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;->intersects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-direct {p0, p1, v1, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->query(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected query(Ljava/lang/Object;Lorg/locationtech/jts/index/ItemVisitor;)V
    .locals 2
    .param p1, "searchBounds"    # Ljava/lang/Object;
    .param p2, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->build()V

    .line 260
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-virtual {v1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getBounds()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;->intersects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-direct {p0, p1, v0, p2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->query(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Lorg/locationtech/jts/index/ItemVisitor;)V

    goto :goto_0
.end method

.method protected remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "searchBounds"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 365
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->build()V

    .line 366
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-virtual {v1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getBounds()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;->intersects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-direct {p0, p1, v0, p2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->remove(Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/AbstractNode;Ljava/lang/Object;)Z

    move-result v0

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected size()I
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->build()V

    .line 193
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->root:Lorg/locationtech/jts/index/strtree/AbstractNode;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->size(Lorg/locationtech/jts/index/strtree/AbstractNode;)I

    move-result v0

    goto :goto_0
.end method

.method protected size(Lorg/locationtech/jts/index/strtree/AbstractNode;)I
    .locals 4
    .param p1, "node"    # Lorg/locationtech/jts/index/strtree/AbstractNode;

    .prologue
    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "size":I
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 201
    .local v0, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    instance-of v3, v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    if-eqz v3, :cond_1

    .line 202
    check-cast v0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->size(Lorg/locationtech/jts/index/strtree/AbstractNode;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 204
    .restart local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_1
    instance-of v3, v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    if-eqz v3, :cond_0

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_2
    return v2
.end method
