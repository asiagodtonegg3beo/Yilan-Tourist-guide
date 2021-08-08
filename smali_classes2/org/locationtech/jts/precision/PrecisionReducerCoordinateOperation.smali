.class public Lorg/locationtech/jts/precision/PrecisionReducerCoordinateOperation;
.super Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;
.source "PrecisionReducerCoordinateOperation.java"


# instance fields
.field private removeCollapsed:Z

.field private targetPM:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;Z)V
    .locals 1
    .param p1, "targetPM"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p2, "removeCollapsed"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/precision/PrecisionReducerCoordinateOperation;->removeCollapsed:Z

    .line 30
    iput-object p1, p0, Lorg/locationtech/jts/precision/PrecisionReducerCoordinateOperation;->targetPM:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 31
    iput-boolean p2, p0, Lorg/locationtech/jts/precision/PrecisionReducerCoordinateOperation;->removeCollapsed:Z

    .line 32
    return-void
.end method


# virtual methods
.method public edit([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 35
    array-length v7, p1

    if-nez v7, :cond_1

    .line 36
    const/4 v0, 0x0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    array-length v7, p1

    new-array v6, v7, [Lorg/locationtech/jts/geom/Coordinate;

    .line 40
    .local v6, "reducedCoords":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_2

    .line 41
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, p1, v2

    invoke-direct {v1, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 42
    .local v1, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v7, p0, Lorg/locationtech/jts/precision/PrecisionReducerCoordinateOperation;->targetPM:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-virtual {v7, v1}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 43
    aput-object v1, v6, v2

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    .end local v1    # "coord":Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    new-instance v4, Lorg/locationtech/jts/geom/CoordinateList;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lorg/locationtech/jts/geom/CoordinateList;-><init>([Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 48
    .local v4, "noRepeatedCoordList":Lorg/locationtech/jts/geom/CoordinateList;
    invoke-virtual {v4}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 59
    .local v5, "noRepeatedCoords":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    .line 60
    .local v3, "minLength":I
    instance-of v7, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v7, :cond_3

    .line 61
    const/4 v3, 0x2

    .line 62
    :cond_3
    instance-of v7, p2, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v7, :cond_4

    .line 63
    const/4 v3, 0x4

    .line 65
    :cond_4
    move-object v0, v6

    .line 66
    .local v0, "collapsedCoords":[Lorg/locationtech/jts/geom/Coordinate;
    iget-boolean v7, p0, Lorg/locationtech/jts/precision/PrecisionReducerCoordinateOperation;->removeCollapsed:Z

    if-eqz v7, :cond_5

    .line 67
    const/4 v0, 0x0

    .line 70
    :cond_5
    array-length v7, v5

    if-lt v7, v3, :cond_0

    move-object v0, v5

    .line 75
    goto :goto_0
.end method
