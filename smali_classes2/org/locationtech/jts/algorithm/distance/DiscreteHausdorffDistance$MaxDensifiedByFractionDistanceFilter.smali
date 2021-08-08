.class public Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;
.super Ljava/lang/Object;
.source "DiscreteHausdorffDistance.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxDensifiedByFractionDistanceFilter"
.end annotation


# instance fields
.field private geom:Lorg/locationtech/jts/geom/Geometry;

.field private maxPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

.field private minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

.field private numSubSegs:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;D)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "fraction"    # D

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->maxPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .line 165
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->numSubSegs:I

    .line 170
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->geom:Lorg/locationtech/jts/geom/Geometry;

    .line 171
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->numSubSegs:I

    .line 172
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 18
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "index"    # I

    .prologue
    .line 179
    if-nez p2, :cond_1

    .line 198
    :cond_0
    return-void

    .line 182
    :cond_1
    add-int/lit8 v14, p2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 183
    .local v7, "p0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface/range {p1 .. p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    .line 185
    .local v8, "p1":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v14, v8, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->numSubSegs:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 186
    .local v2, "delx":D
    iget-wide v14, v8, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->numSubSegs:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 188
    .local v4, "dely":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->numSubSegs:I

    if-ge v6, v14, :cond_0

    .line 189
    iget-wide v14, v7, Lorg/locationtech/jts/geom/Coordinate;->x:D

    int-to-double v0, v6

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    add-double v10, v14, v16

    .line 190
    .local v10, "x":D
    iget-wide v14, v7, Lorg/locationtech/jts/geom/Coordinate;->y:D

    int-to-double v0, v6

    move-wide/from16 v16, v0

    mul-double v16, v16, v4

    add-double v12, v14, v16

    .line 191
    .local v12, "y":D
    new-instance v9, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 192
    .local v9, "pt":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-virtual {v14}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->initialize()V

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->geom:Lorg/locationtech/jts/geom/Geometry;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-static {v14, v9, v15}, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;->computeDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->maxPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->minPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    invoke-virtual {v14, v15}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMaximum(Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getMaxPointDistance()Lorg/locationtech/jts/algorithm/distance/PointPairDistance;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance$MaxDensifiedByFractionDistanceFilter;->maxPtDist:Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public isGeometryChanged()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method
