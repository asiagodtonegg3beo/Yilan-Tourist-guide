.class public Lorg/locationtech/jts/geomgraph/index/SimpleEdgeSetIntersector;
.super Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;
.source "SimpleEdgeSetIntersector.java"


# instance fields
.field nOverlaps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;-><init>()V

    .line 37
    return-void
.end method

.method private computeIntersects(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 5
    .param p1, "e0"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "e1"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p3, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 75
    .local v2, "pts0":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 76
    .local v3, "pts1":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i0":I
    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 77
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 78
    invoke-virtual {p3, p1, v0, p2, v1}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->addIntersections(Lorg/locationtech/jts/geomgraph/Edge;ILorg/locationtech/jts/geomgraph/Edge;I)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i1":I
    :cond_1
    return-void
.end method


# virtual methods
.method public computeIntersections(Ljava/util/List;Ljava/util/List;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 5
    .param p1, "edges0"    # Ljava/util/List;
    .param p2, "edges1"    # Ljava/util/List;
    .param p3, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 56
    const/4 v4, 0x0

    iput v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleEdgeSetIntersector;->nOverlaps:I

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i0":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 60
    .local v0, "edge0":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i1":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Edge;

    .line 62
    .local v1, "edge1":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-direct {p0, v0, v1, p3}, Lorg/locationtech/jts/geomgraph/index/SimpleEdgeSetIntersector;->computeIntersects(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    goto :goto_0

    .line 65
    .end local v0    # "edge0":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "edge1":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v3    # "i1":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public computeIntersections(Ljava/util/List;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;Z)V
    .locals 5
    .param p1, "edges"    # Ljava/util/List;
    .param p2, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    .param p3, "testAllSegments"    # Z

    .prologue
    .line 41
    const/4 v4, 0x0

    iput v4, p0, Lorg/locationtech/jts/geomgraph/index/SimpleEdgeSetIntersector;->nOverlaps:I

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i0":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 45
    .local v0, "edge0":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i1":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Edge;

    .line 47
    .local v1, "edge1":Lorg/locationtech/jts/geomgraph/Edge;
    if-nez p3, :cond_2

    if-eq v0, v1, :cond_1

    .line 48
    :cond_2
    invoke-direct {p0, v0, v1, p2}, Lorg/locationtech/jts/geomgraph/index/SimpleEdgeSetIntersector;->computeIntersects(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    goto :goto_0

    .line 51
    .end local v0    # "edge0":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "edge1":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v3    # "i1":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
