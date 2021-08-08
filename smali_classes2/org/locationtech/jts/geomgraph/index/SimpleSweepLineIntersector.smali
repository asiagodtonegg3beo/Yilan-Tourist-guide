.class public Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;
.super Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;
.source "SimpleSweepLineIntersector.java"


# instance fields
.field events:Ljava/util/List;

.field nOverlaps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    .line 45
    return-void
.end method

.method private add(Ljava/util/List;)V
    .locals 3
    .param p1, "edges"    # Ljava/util/List;

    .prologue
    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 68
    .local v0, "edge":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-direct {p0, v0, v0}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->add(Lorg/locationtech/jts/geomgraph/Edge;Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    .end local v0    # "edge":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method

.method private add(Ljava/util/List;Ljava/lang/Object;)V
    .locals 3
    .param p1, "edges"    # Ljava/util/List;
    .param p2, "edgeSet"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 75
    .local v0, "edge":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->add(Lorg/locationtech/jts/geomgraph/Edge;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    .end local v0    # "edge":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method

.method private add(Lorg/locationtech/jts/geomgraph/Edge;Ljava/lang/Object;)V
    .locals 8
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "edgeSet"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 83
    .local v2, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 84
    new-instance v3, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;

    invoke-direct {v3, p1, v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;-><init>(Lorg/locationtech/jts/geomgraph/Edge;I)V

    .line 85
    .local v3, "ss":Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;
    new-instance v1, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->getMinX()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v1, p2, v4, v5, v6}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;-><init>(Ljava/lang/Object;DLjava/lang/Object;)V

    .line 86
    .local v1, "insertEvent":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    new-instance v5, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->getMaxX()D

    move-result-wide v6

    invoke-direct {v5, v6, v7, v1}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;-><init>(DLorg/locationtech/jts/geomgraph/index/SweepLineEvent;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "insertEvent":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    .end local v3    # "ss":Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;
    :cond_0
    return-void
.end method

.method private computeIntersections(Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 3
    .param p1, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 111
    const/4 v2, 0x0

    iput v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->nOverlaps:I

    .line 112
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->prepareEvents()V

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 116
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 117
    .local v0, "ev":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->isInsert()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->getDeleteEventIndex()I

    move-result v2

    invoke-direct {p0, v1, v2, v0, p1}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->processOverlaps(IILorg/locationtech/jts/geomgraph/index/SweepLineEvent;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "ev":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    :cond_1
    return-void
.end method

.method private prepareEvents()V
    .locals 3

    .prologue
    .line 98
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 103
    .local v0, "ev":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->isDelete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->getInsertEvent()Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->setDeleteEventIndex(I)V

    .line 100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
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
    .line 125
    invoke-virtual {p3}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;

    .line 131
    .local v2, "ss0":Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 132
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->events:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 133
    .local v0, "ev1":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->isInsert()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;

    .line 136
    .local v3, "ss1":Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->isSameLabel(Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    invoke-virtual {v2, v3, p4}, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->computeIntersections(Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 138
    iget v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->nOverlaps:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->nOverlaps:I

    .line 131
    .end local v3    # "ss1":Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
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
    .line 58
    invoke-direct {p0, p1, p1}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->add(Ljava/util/List;Ljava/lang/Object;)V

    .line 59
    invoke-direct {p0, p2, p2}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->add(Ljava/util/List;Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0, p3}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->computeIntersections(Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 61
    return-void
.end method

.method public computeIntersections(Ljava/util/List;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;Z)V
    .locals 1
    .param p1, "edges"    # Ljava/util/List;
    .param p2, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    .param p3, "testAllSegments"    # Z

    .prologue
    .line 49
    if-eqz p3, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->add(Ljava/util/List;Ljava/lang/Object;)V

    .line 53
    :goto_0
    invoke-direct {p0, p2}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->computeIntersections(Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 54
    return-void

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/index/SimpleSweepLineIntersector;->add(Ljava/util/List;)V

    goto :goto_0
.end method
