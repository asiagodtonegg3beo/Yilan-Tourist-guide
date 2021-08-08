.class public Lorg/locationtech/jts/precision/MinimumClearance;
.super Ljava/lang/Object;
.source "MinimumClearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;
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
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lorg/locationtech/jts/precision/MinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 147
    return-void
.end method

.method private compute()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 188
    iget-object v3, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v3, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 192
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearance:D

    .line 195
    iget-object v3, p0, Lorg/locationtech/jts/precision/MinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    iget-object v3, p0, Lorg/locationtech/jts/precision/MinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v3}, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;->build(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/index/strtree/STRtree;

    move-result-object v0

    .line 201
    .local v0, "geomTree":Lorg/locationtech/jts/index/strtree/STRtree;
    new-instance v3, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;

    invoke-direct {v3, v6}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;-><init>(Lorg/locationtech/jts/precision/MinimumClearance$1;)V

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/index/strtree/STRtree;->nearestNeighbour(Lorg/locationtech/jts/index/strtree/ItemDistance;)[Ljava/lang/Object;

    move-result-object v2

    .line 202
    .local v2, "nearest":[Ljava/lang/Object;
    new-instance v1, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;

    invoke-direct {v1, v6}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;-><init>(Lorg/locationtech/jts/precision/MinimumClearance$1;)V

    .line 203
    .local v1, "mcd":Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Lorg/locationtech/jts/operation/distance/FacetSequence;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Lorg/locationtech/jts/operation/distance/FacetSequence;

    invoke-virtual {v1, v3, v4}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->distance(Lorg/locationtech/jts/operation/distance/FacetSequence;Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearance:D

    .line 206
    invoke-virtual {v1}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    iput-object v3, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0
.end method

.method public static getDistance(Lorg/locationtech/jts/geom/Geometry;)D
    .locals 4
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 115
    new-instance v0, Lorg/locationtech/jts/precision/MinimumClearance;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/precision/MinimumClearance;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 116
    .local v0, "rp":Lorg/locationtech/jts/precision/MinimumClearance;
    invoke-virtual {v0}, Lorg/locationtech/jts/precision/MinimumClearance;->getDistance()D

    move-result-wide v2

    return-wide v2
.end method

.method public static getLine(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 130
    new-instance v0, Lorg/locationtech/jts/precision/MinimumClearance;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/precision/MinimumClearance;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 131
    .local v0, "rp":Lorg/locationtech/jts/precision/MinimumClearance;
    invoke-virtual {v0}, Lorg/locationtech/jts/precision/MinimumClearance;->getLine()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDistance()D
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lorg/locationtech/jts/precision/MinimumClearance;->compute()V

    .line 162
    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearance:D

    return-wide v0
.end method

.method public getLine()Lorg/locationtech/jts/geom/LineString;
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lorg/locationtech/jts/precision/MinimumClearance;->compute()V

    .line 180
    iget-object v0, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/precision/MinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/precision/MinimumClearance;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/precision/MinimumClearance;->minClearancePts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    goto :goto_0
.end method
