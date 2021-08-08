.class public Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;
.super Ljava/lang/Object;
.source "SimpleNestedRingTester.java"


# instance fields
.field private graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

.field private nestedPt:Lorg/locationtech/jts/geom/Coordinate;

.field private rings:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 1
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->rings:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/LinearRing;)V
    .locals 1
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getNestedPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public isNonNested()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 53
    iget-object v8, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    .line 54
    .local v1, "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 56
    .local v3, "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v8, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 57
    iget-object v8, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/LinearRing;

    .line 58
    .local v6, "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v6}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 60
    .local v7, "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    if-ne v1, v6, :cond_1

    .line 56
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v8

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    iget-object v8, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-static {v3, v6, v8}, Lorg/locationtech/jts/operation/valid/IsValidOp;->findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 67
    .local v2, "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v2, :cond_2

    move v8, v9

    :goto_2
    const-string v11, "Unable to find a ring point not a node of the search ring"

    invoke-static {v8, v11}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 70
    invoke-static {v2, v7}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    .line 71
    .local v4, "isInside":Z
    if-eqz v4, :cond_0

    .line 72
    iput-object v2, p0, Lorg/locationtech/jts/operation/valid/SimpleNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 77
    .end local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v2    # "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "isInside":Z
    .end local v5    # "j":I
    .end local v6    # "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v7    # "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_3
    return v10

    .restart local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .restart local v2    # "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v5    # "j":I
    .restart local v6    # "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    .restart local v7    # "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    move v8, v10

    .line 67
    goto :goto_2

    .line 52
    .end local v2    # "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    .end local v6    # "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v7    # "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v3    # "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "j":I
    :cond_4
    move v10, v9

    .line 77
    goto :goto_3
.end method
