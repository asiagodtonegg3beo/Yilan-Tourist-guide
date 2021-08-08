.class public Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;
.super Ljava/lang/Object;
.source "BufferCurveMaximumDistanceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;,
        Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;
    }
.end annotation


# instance fields
.field private inputGeom:Lorg/locationtech/jts/geom/Geometry;

.field private maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "inputGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .line 42
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 43
    return-void
.end method

.method private computeMaxMidpointDistance(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "curve"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 65
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 66
    .local v0, "distFilter":Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 67
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxMidpointDistanceFilter;->getMaxPointDistance()Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMaximum(Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 68
    return-void
.end method

.method private computeMaxVertexDistance(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "curve"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 58
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 59
    .local v0, "distFilter":Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V

    .line 60
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->getMaxPointDistance()Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMaximum(Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 61
    return-void
.end method


# virtual methods
.method public findDistance(Lorg/locationtech/jts/geom/Geometry;)D
    .locals 2
    .param p1, "bufferCurve"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->computeMaxVertexDistance(Lorg/locationtech/jts/geom/Geometry;)V

    .line 48
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->computeMaxMidpointDistance(Lorg/locationtech/jts/geom/Geometry;)V

    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistancePoints()Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    return-object v0
.end method
