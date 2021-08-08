.class public Lorg/locationtech/jts/noding/MCIndexNoder;
.super Lorg/locationtech/jts/noding/SinglePassNoder;
.source "MCIndexNoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/noding/MCIndexNoder$SegmentOverlapAction;
    }
.end annotation


# instance fields
.field private idCounter:I

.field private index:Lorg/locationtech/jts/index/SpatialIndex;

.field private monoChains:Ljava/util/List;

.field private nOverlaps:I

.field private nodedSegStrings:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lorg/locationtech/jts/noding/SinglePassNoder;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->monoChains:Ljava/util/List;

    .line 39
    new-instance v0, Lorg/locationtech/jts/index/strtree/STRtree;

    invoke-direct {v0}, Lorg/locationtech/jts/index/strtree/STRtree;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->index:Lorg/locationtech/jts/index/SpatialIndex;

    .line 40
    iput v1, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->idCounter:I

    .line 43
    iput v1, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->nOverlaps:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/noding/SegmentIntersector;)V
    .locals 2
    .param p1, "si"    # Lorg/locationtech/jts/noding/SegmentIntersector;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lorg/locationtech/jts/noding/SinglePassNoder;-><init>(Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->monoChains:Ljava/util/List;

    .line 39
    new-instance v0, Lorg/locationtech/jts/index/strtree/STRtree;

    invoke-direct {v0}, Lorg/locationtech/jts/index/strtree/STRtree;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->index:Lorg/locationtech/jts/index/SpatialIndex;

    .line 40
    iput v1, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->idCounter:I

    .line 43
    iput v1, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->nOverlaps:I

    .line 51
    return-void
.end method

.method private add(Lorg/locationtech/jts/noding/SegmentString;)V
    .locals 5
    .param p1, "segStr"    # Lorg/locationtech/jts/noding/SegmentString;

    .prologue
    .line 98
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/locationtech/jts/index/chain/MonotoneChainBuilder;->getChains([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "segChains":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 101
    .local v1, "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    iget v3, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->idCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->idCounter:I

    invoke-virtual {v1, v3}, Lorg/locationtech/jts/index/chain/MonotoneChain;->setId(I)V

    .line 102
    iget-object v3, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->index:Lorg/locationtech/jts/index/SpatialIndex;

    invoke-virtual {v1}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lorg/locationtech/jts/index/SpatialIndex;->insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    .line 103
    iget-object v3, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->monoChains:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v1    # "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    :cond_0
    return-void
.end method

.method private intersectChains()V
    .locals 8

    .prologue
    .line 74
    new-instance v2, Lorg/locationtech/jts/noding/MCIndexNoder$SegmentOverlapAction;

    iget-object v6, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->segInt:Lorg/locationtech/jts/noding/SegmentIntersector;

    invoke-direct {v2, p0, v6}, Lorg/locationtech/jts/noding/MCIndexNoder$SegmentOverlapAction;-><init>(Lorg/locationtech/jts/noding/MCIndexNoder;Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 76
    .local v2, "overlapAction":Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;
    iget-object v6, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->monoChains:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 78
    .local v4, "queryChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    iget-object v6, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->index:Lorg/locationtech/jts/index/SpatialIndex;

    invoke-virtual {v4}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/locationtech/jts/index/SpatialIndex;->query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, "overlapChains":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "j":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 85
    .local v5, "testChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    invoke-virtual {v5}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getId()I

    move-result v6

    invoke-virtual {v4}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getId()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 86
    invoke-virtual {v4, v5, v2}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeOverlaps(Lorg/locationtech/jts/index/chain/MonotoneChain;Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V

    .line 87
    iget v6, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->nOverlaps:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->nOverlaps:I

    .line 90
    :cond_2
    iget-object v6, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->segInt:Lorg/locationtech/jts/noding/SegmentIntersector;

    invoke-interface {v6}, Lorg/locationtech/jts/noding/SegmentIntersector;->isDone()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    .end local v1    # "j":Ljava/util/Iterator;
    .end local v3    # "overlapChains":Ljava/util/List;
    .end local v4    # "queryChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    .end local v5    # "testChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    :cond_3
    return-void
.end method


# virtual methods
.method public computeNodes(Ljava/util/Collection;)V
    .locals 2
    .param p1, "inputSegStrings"    # Ljava/util/Collection;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->nodedSegStrings:Ljava/util/Collection;

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

    invoke-direct {p0, v1}, Lorg/locationtech/jts/noding/MCIndexNoder;->add(Lorg/locationtech/jts/noding/SegmentString;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/noding/MCIndexNoder;->intersectChains()V

    .line 70
    return-void
.end method

.method public getIndex()Lorg/locationtech/jts/index/SpatialIndex;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->index:Lorg/locationtech/jts/index/SpatialIndex;

    return-object v0
.end method

.method public getMonotoneChains()Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->monoChains:Ljava/util/List;

    return-object v0
.end method

.method public getNodedSubstrings()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/noding/MCIndexNoder;->nodedSegStrings:Ljava/util/Collection;

    invoke-static {v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getNodedSubstrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
