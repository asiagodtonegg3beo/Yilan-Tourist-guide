.class public Lorg/locationtech/jts/algorithm/MinimumDiameter;
.super Ljava/lang/Object;
.source "MinimumDiameter.java"


# instance fields
.field private convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

.field private final inputGeom:Lorg/locationtech/jts/geom/Geometry;

.field private final isConvex:Z

.field private minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

.field private minPtIndex:I

.field private minWidth:D

.field private minWidthPt:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "inputGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;-><init>(Lorg/locationtech/jts/geom/Geometry;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Z)V
    .locals 2
    .param p1, "inputGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "isConvex"    # Z

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 73
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    .line 74
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    .line 100
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 101
    iput-boolean p2, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->isConvex:Z

    .line 102
    return-void
.end method

.method private static computeC(DDLorg/locationtech/jts/geom/Coordinate;)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 321
    iget-wide v0, p4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v0, p0

    iget-wide v2, p4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v2, p2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private computeConvexRingMinDiameter([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 207
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    .line 208
    const/4 v0, 0x1

    .line 210
    .local v0, "currMaxIndex":I
    new-instance v2, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 212
    .local v2, "seg":Lorg/locationtech/jts/geom/LineSegment;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 213
    aget-object v3, p1, v1

    iput-object v3, v2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 214
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    iput-object v3, v2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 215
    invoke-direct {p0, p1, v2, v0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->findMaxPerpDistance([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineSegment;I)I

    move-result v0

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method private computeMinimumDiameter()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-boolean v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->isConvex:Z

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v1}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeWidthConvex(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0

    .line 163
    :cond_1
    new-instance v1, Lorg/locationtech/jts/algorithm/ConvexHull;

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/algorithm/ConvexHull;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    invoke-virtual {v1}, Lorg/locationtech/jts/algorithm/ConvexHull;->getConvexHull()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 164
    .local v0, "convexGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeWidthConvex(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0
.end method

.method private static computeSegmentForLine(DDD)Lorg/locationtech/jts/geom/LineSegment;
    .locals 10
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    .line 333
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 334
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    div-double v2, p4, p2

    invoke-direct {v0, v6, v7, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 335
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    div-double v2, p4, p2

    div-double v4, p0, p2

    sub-double/2addr v2, v4

    invoke-direct {v1, v8, v9, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 341
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    new-instance v2, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v2, v0, v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v2

    .line 338
    .end local v0    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v1    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    div-double v2, p4, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 339
    .restart local v0    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    div-double v2, p4, p0

    div-double v4, p2, p0

    sub-double/2addr v2, v4

    invoke-direct {v1, v2, v3, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .restart local v1    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    goto :goto_0
.end method

.method private computeWidthConvex(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 6
    .param p1, "convexGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 171
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_0

    .line 172
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "convexGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 177
    :goto_0
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 178
    iput-wide v4, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    .line 179
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 180
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    .line 196
    :goto_1
    return-void

    .line 174
    .restart local p1    # "convexGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 182
    .end local p1    # "convexGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    if-ne v0, v3, :cond_2

    .line 183
    iput-wide v4, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    .line 184
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 185
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 186
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 189
    :cond_3
    iput-wide v4, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    .line 190
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 191
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 192
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v3

    iput-object v1, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_1

    .line 195
    :cond_4
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeConvexRingMinDiameter([Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_1
.end method

.method private findMaxPerpDistance([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineSegment;I)I
    .locals 8
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "seg"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p3, "startIndex"    # I

    .prologue
    .line 221
    aget-object v6, p1, p3

    invoke-virtual {p2, v6}, Lorg/locationtech/jts/geom/LineSegment;->distancePerpendicular(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 222
    .local v2, "maxPerpDistance":D
    move-wide v4, v2

    .line 223
    .local v4, "nextPerpDistance":D
    move v0, p3

    .line 224
    .local v0, "maxIndex":I
    move v1, v0

    .line 225
    .local v1, "nextIndex":I
    :goto_0
    cmpl-double v6, v4, v2

    if-ltz v6, :cond_0

    .line 226
    move-wide v2, v4

    .line 227
    move v0, v1

    .line 229
    invoke-static {p1, v0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->nextIndex([Lorg/locationtech/jts/geom/Coordinate;I)I

    move-result v1

    .line 230
    aget-object v6, p1, v1

    invoke-virtual {p2, v6}, Lorg/locationtech/jts/geom/LineSegment;->distancePerpendicular(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    goto :goto_0

    .line 233
    :cond_0
    iget-wide v6, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    cmpg-double v6, v2, v6

    if-gez v6, :cond_1

    .line 234
    iput v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minPtIndex:I

    .line 235
    iput-wide v2, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    .line 236
    iget v6, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minPtIndex:I

    aget-object v6, p1, v6

    iput-object v6, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 237
    new-instance v6, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v6, p2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/LineSegment;)V

    iput-object v6, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    .line 241
    :cond_1
    return v0
.end method

.method public static getMinimumDiameter(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 66
    new-instance v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->getDiameter()Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public static getMinimumRectangle(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 57
    new-instance v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->getMinimumRectangle()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method private static nextIndex([Lorg/locationtech/jts/geom/Coordinate;I)I
    .locals 1
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "index"    # I

    .prologue
    .line 246
    add-int/lit8 p1, p1, 0x1

    .line 247
    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 248
    :cond_0
    return p1
.end method


# virtual methods
.method public getDiameter()Lorg/locationtech/jts/geom/LineString;
    .locals 5

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeMinimumDiameter()V

    .line 147
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    .line 150
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/LineSegment;->project(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 151
    .local v0, "basePt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    goto :goto_0
.end method

.method public getLength()D
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeMinimumDiameter()V

    .line 112
    iget-wide v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    return-wide v0
.end method

.method public getMinimumRectangle()Lorg/locationtech/jts/geom/Geometry;
    .locals 44

    .prologue
    .line 265
    invoke-direct/range {p0 .. p0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeMinimumDiameter()V

    .line 268
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidth:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v4, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v5, v5, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v5, v5, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v4

    .line 315
    :goto_0
    return-object v4

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/LineSegment;->toGeometry(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v4

    goto :goto_0

    .line 276
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v4, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v18, v4, v6

    .line 277
    .local v18, "dx":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v4, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v28, v4, v6

    .line 284
    .local v28, "dy":D
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 285
    .local v26, "minPara":D
    const-wide v20, -0x10000000000001L

    .line 286
    .local v20, "maxPara":D
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 287
    .local v14, "minPerp":D
    const-wide v8, -0x10000000000001L

    .line 290
    .local v8, "maxPerp":D
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v4, v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_6

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, v30

    move-wide/from16 v0, v18

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeC(DDLorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v40

    .line 293
    .local v40, "paraC":D
    cmpl-double v4, v40, v20

    if-lez v4, :cond_2

    move-wide/from16 v20, v40

    .line 294
    :cond_2
    cmpg-double v4, v40, v26

    if-gez v4, :cond_3

    move-wide/from16 v26, v40

    .line 296
    :cond_3
    move-wide/from16 v0, v28

    neg-double v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->convexHullPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v6, v6, v30

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1, v6}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeC(DDLorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v42

    .line 297
    .local v42, "perpC":D
    cmpl-double v4, v42, v8

    if-lez v4, :cond_4

    move-wide/from16 v8, v42

    .line 298
    :cond_4
    cmpg-double v4, v42, v14

    if-gez v4, :cond_5

    move-wide/from16 v14, v42

    .line 290
    :cond_5
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 302
    .end local v40    # "paraC":D
    .end local v42    # "perpC":D
    :cond_6
    move-wide/from16 v0, v18

    neg-double v4, v0

    move-wide/from16 v0, v28

    neg-double v6, v0

    invoke-static/range {v4 .. v9}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeSegmentForLine(DDD)Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v32

    .line 303
    .local v32, "maxPerpLine":Lorg/locationtech/jts/geom/LineSegment;
    move-wide/from16 v0, v18

    neg-double v10, v0

    move-wide/from16 v0, v28

    neg-double v12, v0

    invoke-static/range {v10 .. v15}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeSegmentForLine(DDD)Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v34

    .line 304
    .local v34, "minPerpLine":Lorg/locationtech/jts/geom/LineSegment;
    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v21}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeSegmentForLine(DDD)Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v31

    .line 305
    .local v31, "maxParaLine":Lorg/locationtech/jts/geom/LineSegment;
    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v18

    invoke-static/range {v22 .. v27}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeSegmentForLine(DDD)Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v33

    .line 308
    .local v33, "minParaLine":Lorg/locationtech/jts/geom/LineSegment;
    invoke-virtual/range {v31 .. v32}, Lorg/locationtech/jts/geom/LineSegment;->lineIntersection(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v35

    .line 309
    .local v35, "p0":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->lineIntersection(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v36

    .line 310
    .local v36, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual/range {v33 .. v34}, Lorg/locationtech/jts/geom/LineSegment;->lineIntersection(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v37

    .line 311
    .local v37, "p2":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->lineIntersection(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v38

    .line 313
    .local v38, "p3":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v6, 0x0

    aput-object v35, v5, v6

    const/4 v6, 0x1

    aput-object v36, v5, v6

    const/4 v6, 0x2

    aput-object v37, v5, v6

    const/4 v6, 0x3

    aput-object v38, v5, v6

    const/4 v6, 0x4

    aput-object v35, v5, v6

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v39

    .line 315
    .local v39, "shell":Lorg/locationtech/jts/geom/LinearRing;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getSupportingSegment()Lorg/locationtech/jts/geom/LineString;
    .locals 4

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeMinimumDiameter()V

    .line 134
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v3, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minBaseSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v3, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public getWidthCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumDiameter;->computeMinimumDiameter()V

    .line 123
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumDiameter;->minWidthPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
