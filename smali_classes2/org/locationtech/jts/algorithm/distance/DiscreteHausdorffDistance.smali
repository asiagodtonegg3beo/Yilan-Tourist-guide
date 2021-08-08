.class public Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;
.super Ljava/lang/Object;
.source "DiscreteHausdorffDistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;,
        Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;
    }
.end annotation


# instance fields
.field private densifyFrac:D

.field private g0:Lorg/locationtech/jts/geom/Geometry;

.field private g1:Lorg/locationtech/jts/geom/Geometry;

.field private ptDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->ptDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->densifyFrac:D

    .line 83
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->g0:Lorg/locationtech/jts/geom/Geometry;

    .line 84
    iput-object p2, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->g1:Lorg/locationtech/jts/geom/Geometry;

    .line 85
    return-void
.end method

.method private compute(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->ptDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->computeOrientedDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 121
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->ptDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-direct {p0, p2, p1, v0}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->computeOrientedDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 122
    return-void
.end method

.method private computeOrientedDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V
    .locals 6
    .param p1, "discreteGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "ptDist"    # Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .prologue
    .line 126
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;

    invoke-direct {v0, p2}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 127
    .local v0, "distFilter":Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V

    .line 128
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxPointDistanceFilter;->getMaxPointDistance()Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMaximum(Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 130
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->densifyFrac:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 131
    new-instance v1, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;

    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->densifyFrac:D

    invoke-direct {v1, p2, v2, v3}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;-><init>(Lorg/locationtech/jts/geom/Geometry;D)V

    .line 132
    .local v1, "fracFilter":Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 133
    invoke-virtual {v1}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->getMaxPointDistance()Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMaximum(Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 136
    .end local v1    # "fracFilter":Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;
    :cond_0
    return-void
.end method

.method public static distance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D
    .locals 4
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 61
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 62
    .local v0, "dist":Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->distance()D

    move-result-wide v2

    return-wide v2
.end method

.method public static distance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)D
    .locals 4
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "densifyFrac"    # D

    .prologue
    .line 67
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 68
    .local v0, "dist":Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;
    invoke-virtual {v0, p2, p3}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->setDensifyFraction(D)V

    .line 69
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->distance()D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public distance()D
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->g0:Lorg/locationtech/jts/geom/Geometry;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->g1:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->compute(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 107
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->ptDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->ptDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public orientedDistance()D
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->g0:Lorg/locationtech/jts/geom/Geometry;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->g1:Lorg/locationtech/jts/geom/Geometry;

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->ptDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->computeOrientedDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 113
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->ptDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public setDensifyFraction(D)V
    .locals 3
    .param p1, "densifyFrac"    # D

    .prologue
    .line 97
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fraction is not in range (0.0 - 1.0]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iput-wide p1, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->densifyFrac:D

    .line 102
    return-void
.end method
