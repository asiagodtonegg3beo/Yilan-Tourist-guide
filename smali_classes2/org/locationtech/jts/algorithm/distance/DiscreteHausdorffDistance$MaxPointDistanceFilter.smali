.class public Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;
.super Ljava/lang/Object;
.source "DiscreteHausdorffDistance.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxPointDistanceFilter"
.end annotation


# instance fields
.field private euclideanDist:Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;

.field private geom:Lorg/locationtech/jts/geom/Geometry;

.field private maxPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

.field private minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .line 142
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .line 143
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->euclideanDist:Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;

    .line 148
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->geom:Lorg/locationtech/jts/geom/Geometry;

    .line 149
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->initialize()V

    .line 154
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->geom:Lorg/locationtech/jts/geom/Geometry;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-static {v0, p1, v1}, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;->computeDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 155
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMaximum(Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 156
    return-void
.end method

.method public getMaxPointDistance()Lorg/locationtech/jts/algorithm/distance/PointPairDistance;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->maxPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    return-object v0
.end method
