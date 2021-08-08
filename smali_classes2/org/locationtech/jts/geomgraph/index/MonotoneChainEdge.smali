.class public Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;
.super Ljava/lang/Object;
.source "MonotoneChainEdge.java"


# instance fields
.field e:Lorg/locationtech/jts/geomgraph/Edge;

.field env1:Lorg/locationtech/jts/geom/Envelope;

.field env2:Lorg/locationtech/jts/geom/Envelope;

.field pts:[Lorg/locationtech/jts/geom/Coordinate;

.field startIndex:[I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/Edge;)V
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->env1:Lorg/locationtech/jts/geom/Envelope;

    .line 48
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->env2:Lorg/locationtech/jts/geom/Envelope;

    .line 51
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->e:Lorg/locationtech/jts/geomgraph/Edge;

    .line 52
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 53
    new-instance v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainIndexer;

    invoke-direct {v0}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainIndexer;-><init>()V

    .line 54
    .local v0, "mcb":Lorg/locationtech/jts/geomgraph/index/MonotoneChainIndexer;
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainIndexer;->getChainStartIndices([Lorg/locationtech/jts/geom/Coordinate;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    .line 55
    return-void
.end method

.method private computeIntersectsForChain(IILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;IILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 20
    .param p1, "start0"    # I
    .param p2, "end0"    # I
    .param p3, "mce"    # Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;
    .param p4, "start1"    # I
    .param p5, "end1"    # I
    .param p6, "ei"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v16, v3, p1

    .line 102
    .local v16, "p00":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v17, v3, p2

    .line 103
    .local v17, "p01":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v18, v3, p4

    .line 104
    .local v18, "p10":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v19, v3, p5

    .line 107
    .local v19, "p11":Lorg/locationtech/jts/geom/Coordinate;
    sub-int v3, p2, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sub-int v3, p5, p4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->e:Lorg/locationtech/jts/geomgraph/Edge;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->e:Lorg/locationtech/jts/geomgraph/Edge;

    move-object/from16 v0, p6

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->addIntersections(Lorg/locationtech/jts/geomgraph/Edge;ILorg/locationtech/jts/geomgraph/Edge;I)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->env1:Lorg/locationtech/jts/geom/Envelope;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/locationtech/jts/geom/Envelope;->init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->env2:Lorg/locationtech/jts/geom/Envelope;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lorg/locationtech/jts/geom/Envelope;->init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->env1:Lorg/locationtech/jts/geom/Envelope;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->env2:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    add-int v3, p1, p2

    div-int/lit8 v5, v3, 0x2

    .line 118
    .local v5, "mid0":I
    add-int v3, p4, p5

    div-int/lit8 v8, v3, 0x2

    .line 122
    .local v8, "mid1":I
    move/from16 v0, p1

    if-ge v0, v5, :cond_3

    .line 123
    move/from16 v0, p4

    if-ge v0, v8, :cond_2

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->computeIntersectsForChain(IILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;IILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 124
    :cond_2
    move/from16 v0, p5

    if-ge v8, v0, :cond_3

    move-object/from16 v9, p0

    move/from16 v10, p1

    move v11, v5

    move-object/from16 v12, p3

    move v13, v8

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v9 .. v15}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->computeIntersectsForChain(IILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;IILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 126
    :cond_3
    move/from16 v0, p2

    if-ge v5, v0, :cond_0

    .line 127
    move/from16 v0, p4

    if-ge v0, v8, :cond_4

    move-object/from16 v9, p0

    move v10, v5

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move v14, v8

    move-object/from16 v15, p6

    invoke-direct/range {v9 .. v15}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->computeIntersectsForChain(IILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;IILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 128
    :cond_4
    move/from16 v0, p5

    if-ge v8, v0, :cond_0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->computeIntersectsForChain(IILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;IILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    goto :goto_0
.end method


# virtual methods
.method public computeIntersects(Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 3
    .param p1, "mce"    # Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;
    .param p2, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 76
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 77
    invoke-virtual {p0, v0, p1, v1, p2}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->computeIntersectsForChain(ILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;ILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public computeIntersectsForChain(ILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;ILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 7
    .param p1, "chainIndex0"    # I
    .param p2, "mce"    # Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;
    .param p3, "chainIndex1"    # I
    .param p4, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    aget v1, v0, p1

    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v0, p2, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    aget v4, v0, p3

    iget-object v0, p2, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    add-int/lit8 v3, p3, 0x1

    aget v5, v0, v3

    move-object v0, p0

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->computeIntersectsForChain(IILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;IILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 93
    return-void
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getMaxX(I)D
    .locals 7
    .param p1, "chainIndex"    # I

    .prologue
    .line 68
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    iget-wide v0, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 69
    .local v0, "x1":D
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    add-int/lit8 v6, p1, 0x1

    aget v5, v5, v6

    aget-object v4, v4, v5

    iget-wide v2, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 70
    .local v2, "x2":D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .end local v0    # "x1":D
    :goto_0
    return-wide v0

    .restart local v0    # "x1":D
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getMinX(I)D
    .locals 7
    .param p1, "chainIndex"    # I

    .prologue
    .line 62
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    iget-wide v0, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 63
    .local v0, "x1":D
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    add-int/lit8 v6, p1, 0x1

    aget v5, v5, v6

    aget-object v4, v4, v5

    iget-wide v2, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 64
    .local v2, "x2":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .end local v0    # "x1":D
    :goto_0
    return-wide v0

    .restart local v0    # "x1":D
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getStartIndexes()[I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->startIndex:[I

    return-object v0
.end method
