.class public Lorg/locationtech/jts/simplify/VWSimplifier;
.super Ljava/lang/Object;
.source "VWSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/simplify/VWSimplifier$VWTransformer;
    }
.end annotation


# instance fields
.field private distanceTolerance:D

.field private inputGeom:Lorg/locationtech/jts/geom/Geometry;

.field private isEnsureValidTopology:Z


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "inputGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->isEnsureValidTopology:Z

    .line 77
    iput-object p1, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/simplify/VWSimplifier;)D
    .locals 2
    .param p0, "x0"    # Lorg/locationtech/jts/simplify/VWSimplifier;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->distanceTolerance:D

    return-wide v0
.end method

.method public static simplify(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 61
    new-instance v0, Lorg/locationtech/jts/simplify/VWSimplifier;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/simplify/VWSimplifier;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 62
    .local v0, "simp":Lorg/locationtech/jts/simplify/VWSimplifier;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/simplify/VWSimplifier;->setDistanceTolerance(D)V

    .line 63
    invoke-virtual {v0}, Lorg/locationtech/jts/simplify/VWSimplifier;->getResultGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getResultGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/locationtech/jts/simplify/VWSimplifier$VWTransformer;

    iget-boolean v1, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->isEnsureValidTopology:Z

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/simplify/VWSimplifier$VWTransformer;-><init>(Lorg/locationtech/jts/simplify/VWSimplifier;Z)V

    iget-object v1, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/simplify/VWSimplifier$VWTransformer;->transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method public setDistanceTolerance(D)V
    .locals 3
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-wide p1, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->distanceTolerance:D

    .line 93
    return-void
.end method

.method public setEnsureValid(Z)V
    .locals 0
    .param p1, "isEnsureValidTopology"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/locationtech/jts/simplify/VWSimplifier;->isEnsureValidTopology:Z

    .line 112
    return-void
.end method
