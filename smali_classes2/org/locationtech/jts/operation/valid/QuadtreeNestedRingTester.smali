.class public Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;
.super Ljava/lang/Object;
.source "QuadtreeNestedRingTester.java"


# instance fields
.field private graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

.field private nestedPt:Lorg/locationtech/jts/geom/Coordinate;

.field private quadtree:Lorg/locationtech/jts/index/quadtree/Quadtree;

.field private rings:Ljava/util/List;

.field private totalEnv:Lorg/locationtech/jts/geom/Envelope;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 1
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->rings:Ljava/util/List;

    .line 38
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->totalEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 44
    iput-object p1, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 45
    return-void
.end method

.method private buildQuadtree()V
    .locals 4

    .prologue
    .line 91
    new-instance v3, Lorg/locationtech/jts/index/quadtree/Quadtree;

    invoke-direct {v3}, Lorg/locationtech/jts/index/quadtree/Quadtree;-><init>()V

    iput-object v3, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->quadtree:Lorg/locationtech/jts/index/quadtree/Quadtree;

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 94
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    .line 95
    .local v2, "ring":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 96
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->quadtree:Lorg/locationtech/jts/index/quadtree/Quadtree;

    invoke-virtual {v3, v0, v2}, Lorg/locationtech/jts/index/quadtree/Quadtree;->insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "env":Lorg/locationtech/jts/geom/Envelope;
    .end local v2    # "ring":Lorg/locationtech/jts/geom/LinearRing;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/LinearRing;)V
    .locals 2
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->totalEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    .line 53
    return-void
.end method

.method public getNestedPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public isNonNested()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 57
    invoke-direct {p0}, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->buildQuadtree()V

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 60
    iget-object v9, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    .line 61
    .local v1, "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 63
    .local v3, "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v9, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->quadtree:Lorg/locationtech/jts/index/quadtree/Quadtree;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/locationtech/jts/index/quadtree/Quadtree;->query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;

    move-result-object v6

    .line 65
    .local v6, "results":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 66
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/locationtech/jts/geom/LinearRing;

    .line 67
    .local v7, "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v7}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    .line 69
    .local v8, "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    if-ne v1, v7, :cond_1

    .line 65
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v9

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 75
    iget-object v9, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-static {v3, v7, v9}, Lorg/locationtech/jts/operation/valid/IsValidOp;->findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 76
    .local v2, "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v2, :cond_2

    move v9, v10

    :goto_2
    const-string v12, "Unable to find a ring point not a node of the search ring"

    invoke-static {v9, v12}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 79
    invoke-static {v2, v8}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    .line 80
    .local v4, "isInside":Z
    if-eqz v4, :cond_0

    .line 81
    iput-object v2, p0, Lorg/locationtech/jts/operation/valid/QuadtreeNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 86
    .end local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v2    # "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "isInside":Z
    .end local v5    # "j":I
    .end local v6    # "results":Ljava/util/List;
    .end local v7    # "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v8    # "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_3
    return v11

    .restart local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .restart local v2    # "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v5    # "j":I
    .restart local v6    # "results":Ljava/util/List;
    .restart local v7    # "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    .restart local v8    # "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    move v9, v11

    .line 76
    goto :goto_2

    .line 59
    .end local v2    # "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    .end local v7    # "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v8    # "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "j":I
    .end local v6    # "results":Ljava/util/List;
    :cond_4
    move v11, v10

    .line 86
    goto :goto_3
.end method
