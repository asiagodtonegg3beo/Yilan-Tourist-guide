.class public Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;
.super Ljava/lang/Object;
.source "BufferCurveMaximumDistanceFinder.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxPointDistanceFilter"
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
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .line 72
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .line 76
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->geom:Lorg/locationtech/jts/geom/Geometry;

    .line 77
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->initialize()V

    .line 81
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->geom:Lorg/locationtech/jts/geom/Geometry;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-static {v0, p1, v1}, Lorg/locationtech/jts/operation/buffer/validate/DistanceToPointFinder;->computeDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->minPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMaximum(Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 83
    return-void
.end method

.method public getMaxPointDistance()Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferCurveMaximumDistanceFinder$MaxPointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    return-object v0
.end method
