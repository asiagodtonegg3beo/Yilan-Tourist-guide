.class public Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;
.super Ljava/lang/Object;
.source "ConsistentPolygonRingChecker.java"


# instance fields
.field private final LINKING_TO_OUTGOING:I

.field private final SCANNING_FOR_INCOMING:I

.field private graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/PlanarGraph;)V
    .locals 1
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->SCANNING_FOR_INCOMING:I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->LINKING_TO_OUTGOING:I

    .line 41
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .line 42
    return-void
.end method

.method private getPotentialResultAreaEdges(Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;I)Ljava/util/List;
    .locals 4
    .param p1, "deStar"    # Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;
    .param p2, "opCode"    # I

    .prologue
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v2, "resultAreaEdgeList":Ljava/util/List;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 71
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->isPotentialResultAreaEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->isPotentialResultAreaEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_2
    return-object v2
.end method

.method private isPotentialResultAreaEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;I)Z
    .locals 5
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p2, "opCode"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v0

    .line 81
    .local v0, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInteriorAreaEdge()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {v0, v2, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v3

    .line 85
    invoke-virtual {v0, v1, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v4

    .line 83
    invoke-static {v3, v4, p2}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isResultOfOp(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private testLinkResultDirectedEdges(Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;I)V
    .locals 10
    .param p1, "deStar"    # Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;
    .param p2, "opCode"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->getPotentialResultAreaEdges(Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;I)Ljava/util/List;

    move-result-object v5

    .line 102
    .local v5, "ringEdges":Ljava/util/List;
    const/4 v0, 0x0

    .line 103
    .local v0, "firstOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v2, 0x0

    .line 104
    .local v2, "incoming":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v6, 0x1

    .line 106
    .local v6, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 107
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 108
    .local v4, "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v3

    .line 111
    .local v3, "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v7

    invoke-virtual {v7}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v7

    if-nez v7, :cond_1

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    if-nez v0, :cond_2

    .line 115
    invoke-direct {p0, v4, p2}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->isPotentialResultAreaEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 116
    move-object v0, v4

    .line 119
    :cond_2
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 121
    :pswitch_0
    invoke-direct {p0, v3, p2}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->isPotentialResultAreaEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 122
    move-object v2, v3

    .line 123
    const/4 v6, 0x2

    .line 124
    goto :goto_1

    .line 126
    :pswitch_1
    invoke-direct {p0, v4, p2}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->isPotentialResultAreaEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 128
    const/4 v6, 0x1

    goto :goto_1

    .line 133
    .end local v3    # "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v4    # "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_3
    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 135
    if-nez v0, :cond_4

    .line 136
    new-instance v7, Lorg/locationtech/jts/geom/TopologyException;

    const-string v8, "no outgoing dirEdge found"

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)V

    throw v7

    .line 139
    :cond_4
    return-void

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public check(I)V
    .locals 3
    .param p1, "opCode"    # I

    .prologue
    .line 59
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nodeit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 61
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-direct {p0, v2, p1}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->testLinkResultDirectedEdges(Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;I)V

    goto :goto_0

    .line 63
    .end local v0    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method public checkAll()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->check(I)V

    .line 47
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->check(I)V

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->check(I)V

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/overlay/ConsistentPolygonRingChecker;->check(I)V

    .line 50
    return-void
.end method
