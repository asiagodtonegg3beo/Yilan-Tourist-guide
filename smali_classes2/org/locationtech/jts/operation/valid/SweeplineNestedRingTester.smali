.class public Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;
.super Ljava/lang/Object;
.source "SweeplineNestedRingTester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;
    }
.end annotation


# instance fields
.field private graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

.field private nestedPt:Lorg/locationtech/jts/geom/Coordinate;

.field private rings:Ljava/util/List;

.field private sweepLine:Lorg/locationtech/jts/index/sweepline/SweepLineIndex;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 1
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->rings:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 46
    iput-object p1, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/LinearRing;)Z
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;
    .param p1, "x1"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "x2"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->isInside(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/LinearRing;)Z

    move-result v0

    return v0
.end method

.method private buildIndex()V
    .locals 8

    .prologue
    .line 68
    new-instance v2, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;

    invoke-direct {v2}, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;-><init>()V

    iput-object v2, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->sweepLine:Lorg/locationtech/jts/index/sweepline/SweepLineIndex;

    .line 70
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_0

    .line 71
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/LinearRing;

    .line 72
    .local v6, "ring":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v6}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 73
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    new-instance v1, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;-><init>(DDLjava/lang/Object;)V

    .line 74
    .local v1, "sweepInt":Lorg/locationtech/jts/index/sweepline/SweepLineInterval;
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->sweepLine:Lorg/locationtech/jts/index/sweepline/SweepLineIndex;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->add(Lorg/locationtech/jts/index/sweepline/SweepLineInterval;)V

    .line 70
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "env":Lorg/locationtech/jts/geom/Envelope;
    .end local v1    # "sweepInt":Lorg/locationtech/jts/index/sweepline/SweepLineInterval;
    .end local v6    # "ring":Lorg/locationtech/jts/geom/LinearRing;
    :cond_0
    return-void
.end method

.method private isInside(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/LinearRing;)Z
    .locals 8
    .param p1, "innerRing"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "searchRing"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 80
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 81
    .local v1, "innerRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 83
    .local v3, "searchRingPts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v6

    .line 86
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->graph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-static {v1, p2, v4}, Lorg/locationtech/jts/operation/valid/IsValidOp;->findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 87
    .local v0, "innerRingPt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v0, :cond_2

    move v4, v5

    :goto_1
    const-string v7, "Unable to find a ring point not a node of the search ring"

    invoke-static {v4, v7}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 89
    invoke-static {v0, v3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    .line 90
    .local v2, "isInside":Z
    if-eqz v2, :cond_0

    .line 91
    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    move v6, v5

    .line 92
    goto :goto_0

    .end local v2    # "isInside":Z
    :cond_2
    move v4, v6

    .line 87
    goto :goto_1
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/LinearRing;)V
    .locals 1
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->rings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public getNestedPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->nestedPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public isNonNested()Z
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->buildIndex()V

    .line 60
    new-instance v0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;-><init>(Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;)V

    .line 62
    .local v0, "action":Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->sweepLine:Lorg/locationtech/jts/index/sweepline/SweepLineIndex;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->computeOverlaps(Lorg/locationtech/jts/index/sweepline/SweepLineOverlapAction;)V

    .line 63
    iget-boolean v1, v0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;->isNonNested:Z

    return v1
.end method
