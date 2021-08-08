.class public Lorg/locationtech/jts/index/strtree/STRtree;
.super Lorg/locationtech/jts/index/strtree/AbstractSTRtree;
.source "STRtree.java"

# interfaces
.implements Lorg/locationtech/jts/index/SpatialIndex;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/index/strtree/STRtree$STRtreeNode;
    }
.end annotation


# static fields
.field private static final DEFAULT_NODE_CAPACITY:I = 0xa

.field private static intersectsOp:Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp; = null

.field private static final serialVersionUID:J = 0x39920f7d5f261e4L

.field private static xComparator:Ljava/util/Comparator;

.field private static yComparator:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lorg/locationtech/jts/index/strtree/STRtree$1;

    invoke-direct {v0}, Lorg/locationtech/jts/index/strtree/STRtree$1;-><init>()V

    sput-object v0, Lorg/locationtech/jts/index/strtree/STRtree;->xComparator:Ljava/util/Comparator;

    .line 87
    new-instance v0, Lorg/locationtech/jts/index/strtree/STRtree$2;

    invoke-direct {v0}, Lorg/locationtech/jts/index/strtree/STRtree$2;-><init>()V

    sput-object v0, Lorg/locationtech/jts/index/strtree/STRtree;->yComparator:Ljava/util/Comparator;

    .line 106
    new-instance v0, Lorg/locationtech/jts/index/strtree/STRtree$3;

    invoke-direct {v0}, Lorg/locationtech/jts/index/strtree/STRtree$3;-><init>()V

    sput-object v0, Lorg/locationtech/jts/index/strtree/STRtree;->intersectsOp:Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/locationtech/jts/index/strtree/STRtree;-><init>(I)V

    .line 170
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "nodeCapacity"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;-><init>(I)V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/geom/Envelope;)D
    .locals 2
    .param p0, "x0"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 48
    invoke-static {p0}, Lorg/locationtech/jts/index/strtree/STRtree;->centreX(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lorg/locationtech/jts/geom/Envelope;)D
    .locals 2
    .param p0, "x0"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 48
    invoke-static {p0}, Lorg/locationtech/jts/index/strtree/STRtree;->centreY(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static avg(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 104
    add-double v0, p0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static centreX(Lorg/locationtech/jts/geom/Envelope;)D
    .locals 4
    .param p0, "e"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/index/strtree/STRtree;->avg(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static centreY(Lorg/locationtech/jts/geom/Envelope;)D
    .locals 4
    .param p0, "e"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/index/strtree/STRtree;->avg(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private createParentBoundablesFromVerticalSlices([Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .param p1, "verticalSlices"    # [Ljava/util/List;
    .param p2, "newLevel"    # I

    .prologue
    .line 130
    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "parentBoundables":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 133
    aget-object v2, p1, v0

    .line 134
    invoke-virtual {p0, v2, p2}, Lorg/locationtech/jts/index/strtree/STRtree;->createParentBoundablesFromVerticalSlice(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 133
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "i":I
    .end local v1    # "parentBoundables":Ljava/util/List;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 136
    .restart local v0    # "i":I
    .restart local v1    # "parentBoundables":Ljava/util/List;
    :cond_1
    return-object v1
.end method

.method private static getItems(Ljava/util/PriorityQueue;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lorg/locationtech/jts/index/strtree/BoundablePair;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "kNearestNeighbors":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/locationtech/jts/index/strtree/BoundablePair;>;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/Object;

    .line 491
    .local v1, "items":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 492
    .local v2, "resultIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/locationtech/jts/index/strtree/BoundablePair;>;"
    const/4 v0, 0x0

    .line 493
    .local v0, "count":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/index/strtree/BoundablePair;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getBoundable(I)Lorg/locationtech/jts/index/strtree/Boundable;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-virtual {v3}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    return-object v1
.end method

.method private nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;)[Ljava/lang/Object;
    .locals 2
    .param p1, "initBndPair"    # Lorg/locationtech/jts/index/strtree/BoundablePair;

    .prologue
    .line 338
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {p0, p1, v0, v1}, Lorg/locationtech/jts/index/strtree/STRtree;->nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;D)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;D)[Ljava/lang/Object;
    .locals 12
    .param p1, "initBndPair"    # Lorg/locationtech/jts/index/strtree/BoundablePair;
    .param p2, "maxDistance"    # D

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 346
    move-wide v4, p2

    .line 347
    .local v4, "distanceLowerBound":D
    const/4 v1, 0x0

    .line 350
    .local v1, "minPair":Lorg/locationtech/jts/index/strtree/BoundablePair;
    new-instance v6, Lorg/locationtech/jts/util/PriorityQueue;

    invoke-direct {v6}, Lorg/locationtech/jts/util/PriorityQueue;-><init>()V

    .line 353
    .local v6, "priQ":Lorg/locationtech/jts/util/PriorityQueue;
    invoke-virtual {v6, p1}, Lorg/locationtech/jts/util/PriorityQueue;->add(Ljava/lang/Comparable;)V

    .line 355
    :goto_0
    invoke-virtual {v6}, Lorg/locationtech/jts/util/PriorityQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v7, v4, v8

    if-lez v7, :cond_0

    .line 357
    invoke-virtual {v6}, Lorg/locationtech/jts/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/BoundablePair;

    .line 358
    .local v0, "bndPair":Lorg/locationtech/jts/index/strtree/BoundablePair;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getDistance()D

    move-result-wide v2

    .line 367
    .local v2, "currentDistance":D
    cmpl-double v7, v2, v4

    if-ltz v7, :cond_1

    .line 400
    .end local v0    # "bndPair":Lorg/locationtech/jts/index/strtree/BoundablePair;
    .end local v2    # "currentDistance":D
    :cond_0
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 401
    invoke-virtual {v1, v10}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getBoundable(I)Lorg/locationtech/jts/index/strtree/Boundable;

    move-result-object v7

    check-cast v7, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-virtual {v7}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v8, v10

    .line 402
    invoke-virtual {v1, v11}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getBoundable(I)Lorg/locationtech/jts/index/strtree/Boundable;

    move-result-object v7

    check-cast v7, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-virtual {v7}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v8, v11

    .line 400
    return-object v8

    .line 377
    .restart local v0    # "bndPair":Lorg/locationtech/jts/index/strtree/BoundablePair;
    .restart local v2    # "currentDistance":D
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->isLeaves()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 379
    move-wide v4, v2

    .line 380
    move-object v1, v0

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {v0, v6, v4, v5}, Lorg/locationtech/jts/index/strtree/BoundablePair;->expandToQueue(Lorg/locationtech/jts/util/PriorityQueue;D)V

    goto :goto_0
.end method

.method private nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;DI)[Ljava/lang/Object;
    .locals 10
    .param p1, "initBndPair"    # Lorg/locationtech/jts/index/strtree/BoundablePair;
    .param p2, "maxDistance"    # D
    .param p4, "k"    # I

    .prologue
    .line 407
    move-wide v4, p2

    .line 410
    .local v4, "distanceLowerBound":D
    new-instance v6, Lorg/locationtech/jts/util/PriorityQueue;

    invoke-direct {v6}, Lorg/locationtech/jts/util/PriorityQueue;-><init>()V

    .line 413
    .local v6, "priQ":Lorg/locationtech/jts/util/PriorityQueue;
    invoke-virtual {v6, p1}, Lorg/locationtech/jts/util/PriorityQueue;->add(Ljava/lang/Comparable;)V

    .line 415
    new-instance v1, Ljava/util/PriorityQueue;

    new-instance v7, Lorg/locationtech/jts/index/strtree/BoundablePairDistanceComparator;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/locationtech/jts/index/strtree/BoundablePairDistanceComparator;-><init>(Z)V

    invoke-direct {v1, p4, v7}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 417
    .local v1, "kNearestNeighbors":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/locationtech/jts/index/strtree/BoundablePair;>;"
    :goto_0
    invoke-virtual {v6}, Lorg/locationtech/jts/util/PriorityQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_0

    .line 419
    invoke-virtual {v6}, Lorg/locationtech/jts/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/BoundablePair;

    .line 420
    .local v0, "bndPair":Lorg/locationtech/jts/index/strtree/BoundablePair;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getDistance()D

    move-result-wide v2

    .line 432
    .local v2, "currentDistance":D
    cmpl-double v7, v2, v4

    if-ltz v7, :cond_1

    .line 482
    .end local v0    # "bndPair":Lorg/locationtech/jts/index/strtree/BoundablePair;
    .end local v2    # "currentDistance":D
    :cond_0
    invoke-static {v1}, Lorg/locationtech/jts/index/strtree/STRtree;->getItems(Ljava/util/PriorityQueue;)[Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 442
    .restart local v0    # "bndPair":Lorg/locationtech/jts/index/strtree/BoundablePair;
    .restart local v2    # "currentDistance":D
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->isLeaves()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 445
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v7

    if-ge v7, p4, :cond_2

    .line 446
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/locationtech/jts/index/strtree/BoundablePair;

    invoke-virtual {v7}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getDistance()D

    move-result-wide v8

    cmpl-double v7, v8, v2

    if-lez v7, :cond_3

    .line 453
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 454
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_3
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/locationtech/jts/index/strtree/BoundablePair;

    invoke-virtual {v7}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getDistance()D

    move-result-wide v4

    goto :goto_0

    .line 477
    :cond_4
    invoke-virtual {v0, v6, v4, v5}, Lorg/locationtech/jts/index/strtree/BoundablePair;->expandToQueue(Lorg/locationtech/jts/util/PriorityQueue;D)V

    goto :goto_0
.end method

.method private nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;I)[Ljava/lang/Object;
    .locals 2
    .param p1, "initBndPair"    # Lorg/locationtech/jts/index/strtree/BoundablePair;
    .param p2, "k"    # I

    .prologue
    .line 342
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/locationtech/jts/index/strtree/STRtree;->nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;DI)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createNode(I)Lorg/locationtech/jts/index/strtree/AbstractNode;
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 184
    new-instance v0, Lorg/locationtech/jts/index/strtree/STRtree$STRtreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/locationtech/jts/index/strtree/STRtree$STRtreeNode;-><init>(ILorg/locationtech/jts/index/strtree/STRtree$1;)V

    return-object v0
.end method

.method protected createParentBoundables(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .param p1, "childBoundables"    # Ljava/util/List;
    .param p2, "newLevel"    # I

    .prologue
    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/STRtree;->getNodeCapacity()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 122
    .local v0, "minLeafCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v1, "sortedChildBoundables":Ljava/util/ArrayList;
    sget-object v3, Lorg/locationtech/jts/index/strtree/STRtree;->xComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    int-to-double v4, v0

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 124
    invoke-virtual {p0, v1, v3}, Lorg/locationtech/jts/index/strtree/STRtree;->verticalSlices(Ljava/util/List;I)[Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "verticalSlices":[Ljava/util/List;
    invoke-direct {p0, v2, p2}, Lorg/locationtech/jts/index/strtree/STRtree;->createParentBoundablesFromVerticalSlices([Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 120
    .end local v0    # "minLeafCount":I
    .end local v1    # "sortedChildBoundables":Ljava/util/ArrayList;
    .end local v2    # "verticalSlices":[Ljava/util/List;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected createParentBoundablesFromVerticalSlice(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p1, "childBoundables"    # Ljava/util/List;
    .param p2, "newLevel"    # I

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->createParentBoundables(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public depth()I
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->depth()I

    move-result v0

    return v0
.end method

.method protected getComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lorg/locationtech/jts/index/strtree/STRtree;->yComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lorg/locationtech/jts/index/strtree/STRtree;->intersectsOp:Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    return-object v0
.end method

.method public insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V
    .locals 1
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 195
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public nearestNeighbour(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/ItemDistance;)Ljava/lang/Object;
    .locals 4
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "itemDist"    # Lorg/locationtech/jts/index/strtree/ItemDistance;

    .prologue
    .line 311
    new-instance v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/index/strtree/ItemBoundable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .local v0, "bnd":Lorg/locationtech/jts/index/strtree/Boundable;
    new-instance v1, Lorg/locationtech/jts/index/strtree/BoundablePair;

    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/STRtree;->getRoot()Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v2

    invoke-direct {v1, v2, v0, p3}, Lorg/locationtech/jts/index/strtree/BoundablePair;-><init>(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/ItemDistance;)V

    .line 313
    .local v1, "bp":Lorg/locationtech/jts/index/strtree/BoundablePair;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/index/strtree/STRtree;->nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    return-object v2
.end method

.method public nearestNeighbour(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;Lorg/locationtech/jts/index/strtree/ItemDistance;I)[Ljava/lang/Object;
    .locals 3
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "itemDist"    # Lorg/locationtech/jts/index/strtree/ItemDistance;
    .param p4, "k"    # I

    .prologue
    .line 289
    new-instance v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/index/strtree/ItemBoundable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    .local v0, "bnd":Lorg/locationtech/jts/index/strtree/Boundable;
    new-instance v1, Lorg/locationtech/jts/index/strtree/BoundablePair;

    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/STRtree;->getRoot()Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v2

    invoke-direct {v1, v2, v0, p3}, Lorg/locationtech/jts/index/strtree/BoundablePair;-><init>(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/ItemDistance;)V

    .line 291
    .local v1, "bp":Lorg/locationtech/jts/index/strtree/BoundablePair;
    invoke-direct {p0, v1, p4}, Lorg/locationtech/jts/index/strtree/STRtree;->nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;I)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public nearestNeighbour(Lorg/locationtech/jts/index/strtree/ItemDistance;)[Ljava/lang/Object;
    .locals 3
    .param p1, "itemDist"    # Lorg/locationtech/jts/index/strtree/ItemDistance;

    .prologue
    .line 263
    new-instance v0, Lorg/locationtech/jts/index/strtree/BoundablePair;

    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/STRtree;->getRoot()Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v1

    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/STRtree;->getRoot()Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/locationtech/jts/index/strtree/BoundablePair;-><init>(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/ItemDistance;)V

    .line 264
    .local v0, "bp":Lorg/locationtech/jts/index/strtree/BoundablePair;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/index/strtree/STRtree;->nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public nearestNeighbour(Lorg/locationtech/jts/index/strtree/STRtree;Lorg/locationtech/jts/index/strtree/ItemDistance;)[Ljava/lang/Object;
    .locals 3
    .param p1, "tree"    # Lorg/locationtech/jts/index/strtree/STRtree;
    .param p2, "itemDist"    # Lorg/locationtech/jts/index/strtree/ItemDistance;

    .prologue
    .line 332
    new-instance v0, Lorg/locationtech/jts/index/strtree/BoundablePair;

    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/STRtree;->getRoot()Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v1

    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/STRtree;->getRoot()Lorg/locationtech/jts/index/strtree/AbstractNode;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lorg/locationtech/jts/index/strtree/BoundablePair;-><init>(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/ItemDistance;)V

    .line 333
    .local v0, "bp":Lorg/locationtech/jts/index/strtree/BoundablePair;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/index/strtree/STRtree;->nearestNeighbour(Lorg/locationtech/jts/index/strtree/BoundablePair;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;
    .locals 1
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->query(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V
    .locals 0
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->query(Ljava/lang/Object;Lorg/locationtech/jts/index/ItemVisitor;)V

    .line 215
    return-void
.end method

.method public remove(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->size()I

    move-result v0

    return v0
.end method

.method protected verticalSlices(Ljava/util/List;I)[Ljava/util/List;
    .locals 10
    .param p1, "childBoundables"    # Ljava/util/List;
    .param p2, "sliceCount"    # I

    .prologue
    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 148
    .local v4, "sliceCapacity":I
    new-array v5, p2, [Ljava/util/List;

    .line 149
    .local v5, "slices":[Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 150
    .local v2, "i":Ljava/util/Iterator;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 151
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v5, v3

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "boundablesAddedToSlice":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    if-ge v0, v4, :cond_0

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 155
    .local v1, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    aget-object v6, v5, v3

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    goto :goto_1

    .line 150
    .end local v1    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "boundablesAddedToSlice":I
    :cond_1
    return-object v5
.end method
