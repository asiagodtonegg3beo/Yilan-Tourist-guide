.class public Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;
.super Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;
.source "SimpleMCSweepLineIntersector.java"


# instance fields
.field events:Ljava/util/List;

.field nOverlaps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    .line 50
    return-void
.end method

.method private add(Ljava/util/List;)V
    .locals 3
    .param p1, "edges"    # Ljava/util/List;

    .prologue
    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 73
    .local v0, "edge":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-direct {p0, v0, v0}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->add(Lorg/locationtech/jts/geomgraph/Edge;Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v0    # "edge":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method

.method private add(Ljava/util/List;Ljava/lang/Object;)V
    .locals 3
    .param p1, "edges"    # Ljava/util/List;
    .param p2, "edgeSet"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 80
    .local v0, "edge":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->add(Lorg/locationtech/jts/geomgraph/Edge;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    .end local v0    # "edge":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method

.method private add(Lorg/locationtech/jts/geomgraph/Edge;Ljava/lang/Object;)V
    .locals 10
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "edgeSet"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getMonotoneChainEdge()Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

    move-result-object v3

    .line 87
    .local v3, "mce":Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->getStartIndexes()[I

    move-result-object v4

    .line 88
    .local v4, "startIndex":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    .line 89
    new-instance v2, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;

    invoke-direct {v2, v3, v0}, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;-><init>(Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;I)V

    .line 90
    .local v2, "mc":Lorg/locationtech/jts/geomgraph/index/MonotoneChain;
    new-instance v1, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->getMinX(I)D

    move-result-wide v6

    invoke-direct {v1, p2, v6, v7, v2}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;-><init>(Ljava/lang/Object;DLjava/lang/Object;)V

    .line 91
    .local v1, "insertEvent":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    new-instance v6, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->getMaxX(I)D

    move-result-wide v8

    invoke-direct {v6, v8, v9, v1}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;-><init>(DLorg/locationtech/jts/geomgraph/index/SweepLineEvent;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "insertEvent":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    .end local v2    # "mc":Lorg/locationtech/jts/geomgraph/index/MonotoneChain;
    :cond_0
    return-void
.end method

.method private computeIntersections(Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 3
    .param p1, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 116
    const/4 v2, 0x0

    iput v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->nOverlaps:I

    .line 117
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->prepareEvents()V

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 121
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 122
    .local v0, "ev":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->isInsert()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->getDeleteEventIndex()I

    move-result v2

    invoke-direct {p0, v1, v2, v0, p1}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->processOverlaps(IILorg/locationtech/jts/geomgraph/index/SweepLineEvent;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 125
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    .end local v0    # "ev":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    :cond_1
    return-void

    .line 119
    .restart local v0    # "ev":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private prepareEvents()V
    .locals 3

    .prologue
    .line 103
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 108
    .local v0, "ev":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->isDelete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->getInsertEvent()Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->setDeleteEventIndex(I)V

    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "ev":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    :cond_1
    return-void
.end method

.method private processOverlaps(IILorg/locationtech/jts/geomgraph/index/SweepLineEvent;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ev0"    # Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    .param p4, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 133
    invoke-virtual {p3}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;

    .line 139
    .local v2, "mc0":Lorg/locationtech/jts/geomgraph/index/MonotoneChain;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 140
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 141
    .local v0, "ev1":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->isInsert()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;

    .line 144
    .local v3, "mc1":Lorg/locationtech/jts/geomgraph/index/MonotoneChain;
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->isSameLabel(Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    invoke-virtual {v2, v3, p4}, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;->computeIntersections(Lorg/locationtech/jts/geomgraph/index/MonotoneChain;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 146
    iget v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->nOverlaps:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->nOverlaps:I

    .line 139
    .end local v3    # "mc1":Lorg/locationtech/jts/geomgraph/index/MonotoneChain;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "ev1":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    :cond_1
    return-void
.end method


# virtual methods
.method public computeIntersections(Ljava/util/List;Ljava/util/List;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 0
    .param p1, "edges0"    # Ljava/util/List;
    .param p2, "edges1"    # Ljava/util/List;
    .param p3, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 63
    invoke-direct {p0, p1, p1}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->add(Ljava/util/List;Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0, p2, p2}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->add(Ljava/util/List;Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0, p3}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->computeIntersections(Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 66
    return-void
.end method

.method public computeIntersections(Ljava/util/List;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;Z)V
    .locals 1
    .param p1, "edges"    # Ljava/util/List;
    .param p2, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    .param p3, "testAllSegments"    # Z

    .prologue
    .line 54
    if-eqz p3, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->add(Ljava/util/List;Ljava/lang/Object;)V

    .line 58
    :goto_0
    invoke-direct {p0, p2}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->computeIntersections(Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 59
    return-void

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;->add(Ljava/util/List;)V

    goto :goto_0
.end method
