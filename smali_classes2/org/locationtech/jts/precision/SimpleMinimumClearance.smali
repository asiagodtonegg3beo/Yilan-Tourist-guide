.class public Lorg/locationtech/jts/precision/SimpleMinimumClearance;
.super Ljava/lang/Object;
.source "SimpleMinimumClearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;,
        Lorg/locationtech/jts/precision/SimpleMinimumClearance$VertexCoordinateFilter;
    }
.end annotation


# instance fields
.field private inputGeom:Lorg/locationtech/jts/geom/Geometry;

.field private minClearance:D

.field private minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/precision/SimpleMinimumClearance;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method static synthetic access$100(Lorg/locationtech/jts/precision/SimpleMinimumClearance;DLorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/precision/SimpleMinimumClearance;
    .param p1, "x1"    # D
    .param p3, "x2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "x3"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->updateClearance(DLorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    return-void
.end method

.method static synthetic access$200(Lorg/locationtech/jts/precision/SimpleMinimumClearance;DLorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/precision/SimpleMinimumClearance;
    .param p1, "x1"    # D
    .param p3, "x2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "x3"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p5, "x4"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->updateClearance(DLorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    return-void
.end method

.method private compute()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 78
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearance:D

    .line 79
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    new-instance v1, Lorg/locationtech/jts/precision/SimpleMinimumClearance$VertexCoordinateFilter;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance$VertexCoordinateFilter;-><init>(Lorg/locationtech/jts/precision/SimpleMinimumClearance;)V

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V

    goto :goto_0
.end method

.method public static getDistance(Lorg/locationtech/jts/geom/Geometry;)D
    .locals 4
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 43
    new-instance v0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 44
    .local v0, "rp":Lorg/locationtech/jts/precision/SimpleMinimumClearance;
    invoke-virtual {v0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->getDistance()D

    move-result-wide v2

    return-wide v2
.end method

.method public static getLine(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 49
    new-instance v0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 50
    .local v0, "rp":Lorg/locationtech/jts/precision/SimpleMinimumClearance;
    invoke-virtual {v0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->getLine()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    return-object v1
.end method

.method private updateClearance(DLorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 3
    .param p1, "candidateValue"    # D
    .param p3, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearance:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 85
    iput-wide p1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearance:D

    .line 86
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v2, v0, v1

    .line 87
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x1

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v2, v0, v1

    .line 89
    :cond_0
    return-void
.end method

.method private updateClearance(DLorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p1, "candidateValue"    # D
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "seg0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p5, "seg1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 94
    iget-wide v2, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearance:D

    cmpg-double v1, p1, v2

    if-gez v1, :cond_0

    .line 95
    iput-wide p1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearance:D

    .line 96
    iget-object v1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v3, p3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v3, v1, v2

    .line 97
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0, p4, p5}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 98
    .local v0, "seg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x1

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, p3}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v3, v1, v2

    .line 100
    .end local v0    # "seg":Lorg/locationtech/jts/geom/LineSegment;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDistance()D
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->compute()V

    .line 65
    iget-wide v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearance:D

    return-wide v0
.end method

.method public getLine()Lorg/locationtech/jts/geom/LineString;
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->compute()V

    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method
