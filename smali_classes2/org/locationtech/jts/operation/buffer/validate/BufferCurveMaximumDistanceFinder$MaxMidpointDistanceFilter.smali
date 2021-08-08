.class public Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;
.super Ljava/lang/Object;
.source "BufferCurveMaximumDistanceFinder.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxMidpointDistanceFilter"
.end annotation


# instance fields
.field private geom:Lorg/locationtech/jts/geom/Geometry;

.field private maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

.field private minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .line 94
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .line 98
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->geom:Lorg/locationtech/jts/geom/Geometry;

    .line 99
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 12
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "index"    # I

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 103
    if-nez p2, :cond_0

    .line 115
    :goto_0
    return-void

    .line 106
    :cond_0
    add-int/lit8 v3, p2, -0x1

    invoke-interface {p1, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 107
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p1, p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 108
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v4, v6

    div-double/2addr v4, v10

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 112
    .local v0, "midPt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->initialize()V

    .line 113
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->geom:Lorg/locationtech/jts/geom/Geometry;

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-static {v3, v0, v4}, Lorg/locationtech/jts/operation/buffer/validate/DistanceToPointFinder;->computeDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 114
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMaximum(Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    goto :goto_0
.end method

.method public getMaxPointDistance()Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isGeometryChanged()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method
