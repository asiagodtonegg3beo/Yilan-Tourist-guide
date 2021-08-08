.class public Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;
.super Ljava/lang/Object;
.source "IndexedNestedRingTester.java"


# instance fields
.field private graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

.field private index:Lorg/locationtech/jts/index/SpatialIndex;

.field private nestedPt:Lorg/locationtech/jts/geom/Coordinate;

.field private rings:Ljava/util/List;

.field private totalEnv:Lorg/locationtech/jts/geom/Envelope;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 1
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->rings:Ljava/util/List;

    .line 36
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->totalEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 42
    iput-object p1, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 43
    return-void
.end method

.method private buildIndex()V
    .locals 4

    .prologue
    .line 100
    new-instance v3, Lorg/locationtech/jts/index/strtree/STRtree;

    invoke-direct {v3}, Lorg/locationtech/jts/index/strtree/STRtree;-><init>()V

    iput-object v3, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->index:Lorg/locationtech/jts/index/SpatialIndex;

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 103
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    .line 104
    .local v2, "ring":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 105
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->index:Lorg/locationtech/jts/index/SpatialIndex;

    invoke-interface {v3, v0, v2}, Lorg/locationtech/jts/index/SpatialIndex;->insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
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
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->totalEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    .line 51
    return-void
.end method

.method public getNestedPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public isNonNested()Z
    .locals 11

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->buildIndex()V

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 58
    iget-object v9, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    .line 59
    .local v1, "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 61
    .local v3, "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v9, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->index:Lorg/locationtech/jts/index/SpatialIndex;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/locationtech/jts/index/SpatialIndex;->query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;

    move-result-object v6

    .line 63
    .local v6, "results":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 64
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/locationtech/jts/geom/LinearRing;

    .line 65
    .local v7, "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v7}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    .line 67
    .local v8, "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    if-ne v1, v7, :cond_1

    .line 63
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v9

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 73
    iget-object v9, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-static {v3, v7, v9}, Lorg/locationtech/jts/operation/valid/IsValidOp;->findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 85
    .local v2, "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v2, :cond_0

    .line 88
    invoke-static {v2, v8}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    .line 89
    .local v4, "isInside":Z
    if-eqz v4, :cond_0

    .line 90
    iput-object v2, p0, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 91
    const/4 v9, 0x0

    .line 95
    .end local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v2    # "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "isInside":Z
    .end local v5    # "j":I
    .end local v6    # "results":Ljava/util/List;
    .end local v7    # "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v8    # "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_2
    return v9

    .line 57
    .restart local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .restart local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v5    # "j":I
    .restart local v6    # "results":Ljava/util/List;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "j":I
    .end local v6    # "results":Ljava/util/List;
    :cond_3
    const/4 v9, 0x1

    goto :goto_2
.end method
