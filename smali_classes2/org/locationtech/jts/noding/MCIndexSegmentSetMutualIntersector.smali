.class public Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;
.super Ljava/lang/Object;
.source "MCIndexSegmentSetMutualIntersector.java"

# interfaces
.implements Lorg/locationtech/jts/noding/SegmentSetMutualIntersector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector$SegmentOverlapAction;
    }
.end annotation


# instance fields
.field private index:Lorg/locationtech/jts/index/strtree/STRtree;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "baseSegStrings"    # Ljava/util/Collection;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/locationtech/jts/index/strtree/STRtree;

    invoke-direct {v0}, Lorg/locationtech/jts/index/strtree/STRtree;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->index:Lorg/locationtech/jts/index/strtree/STRtree;

    .line 51
    invoke-direct {p0, p1}, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->initBaseSegments(Ljava/util/Collection;)V

    .line 52
    return-void
.end method

.method private addToIndex(Lorg/locationtech/jts/noding/SegmentString;)V
    .locals 5
    .param p1, "segStr"    # Lorg/locationtech/jts/noding/SegmentString;

    .prologue
    .line 74
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/locationtech/jts/index/chain/MonotoneChainBuilder;->getChains([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, "segChains":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 77
    .local v1, "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    iget-object v3, p0, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->index:Lorg/locationtech/jts/index/strtree/STRtree;

    invoke-virtual {v1}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/locationtech/jts/index/strtree/STRtree;->insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v1    # "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    :cond_0
    return-void
.end method

.method private addToMonoChains(Lorg/locationtech/jts/noding/SegmentString;Ljava/util/List;)V
    .locals 4
    .param p1, "segStr"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "monoChains"    # Ljava/util/List;

    .prologue
    .line 102
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/locationtech/jts/index/chain/MonotoneChainBuilder;->getChains([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "segChains":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 105
    .local v1, "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v1    # "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    :cond_0
    return-void
.end method

.method private initBaseSegments(Ljava/util/Collection;)V
    .locals 2
    .param p1, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/SegmentString;

    invoke-direct {p0, v1}, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->addToIndex(Lorg/locationtech/jts/noding/SegmentString;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->index:Lorg/locationtech/jts/index/strtree/STRtree;

    invoke-virtual {v1}, Lorg/locationtech/jts/index/strtree/STRtree;->build()V

    .line 70
    return-void
.end method

.method private intersectChains(Ljava/util/List;Lorg/locationtech/jts/noding/SegmentIntersector;)V
    .locals 8
    .param p1, "monoChains"    # Ljava/util/List;
    .param p2, "segInt"    # Lorg/locationtech/jts/noding/SegmentIntersector;

    .prologue
    .line 111
    new-instance v2, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector$SegmentOverlapAction;

    invoke-direct {v2, p0, p2}, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector$SegmentOverlapAction;-><init>(Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 113
    .local v2, "overlapAction":Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 115
    .local v4, "queryChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    iget-object v6, p0, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->index:Lorg/locationtech/jts/index/strtree/STRtree;

    invoke-virtual {v4}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/index/strtree/STRtree;->query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, "overlapChains":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "j":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 118
    .local v5, "testChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    invoke-virtual {v4, v5, v2}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeOverlaps(Lorg/locationtech/jts/index/chain/MonotoneChain;Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V

    .line 119
    invoke-interface {p2}, Lorg/locationtech/jts/noding/SegmentIntersector;->isDone()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    .end local v1    # "j":Ljava/util/Iterator;
    .end local v3    # "overlapChains":Ljava/util/List;
    .end local v4    # "queryChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    .end local v5    # "testChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    :cond_2
    return-void
.end method


# virtual methods
.method public getIndex()Lorg/locationtech/jts/index/SpatialIndex;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->index:Lorg/locationtech/jts/index/strtree/STRtree;

    return-object v0
.end method

.method public process(Ljava/util/Collection;Lorg/locationtech/jts/noding/SegmentIntersector;)V
    .locals 3
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "segInt"    # Lorg/locationtech/jts/noding/SegmentIntersector;

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "monoChains":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/noding/SegmentString;

    invoke-direct {p0, v2, v1}, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->addToMonoChains(Lorg/locationtech/jts/noding/SegmentString;Ljava/util/List;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;->intersectChains(Ljava/util/List;Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 98
    return-void
.end method
