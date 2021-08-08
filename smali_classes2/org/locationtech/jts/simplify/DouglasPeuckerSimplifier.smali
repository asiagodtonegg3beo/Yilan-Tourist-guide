.class public Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;
.super Ljava/lang/Object;
.source "DouglasPeuckerSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;
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
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->isEnsureValidTopology:Z

    .line 75
    iput-object p1, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;)D
    .locals 2
    .param p0, "x0"    # Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->distanceTolerance:D

    return-wide v0
.end method

.method public static simplify(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 59
    new-instance v0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 60
    .local v0, "tss":Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->setDistanceTolerance(D)V

    .line 61
    invoke-virtual {v0}, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->getResultGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getResultGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;

    iget-boolean v1, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->isEnsureValidTopology:Z

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;-><init>(Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;Z)V

    iget-object v1, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method public setDistanceTolerance(D)V
    .locals 3
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-wide p1, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->distanceTolerance:D

    .line 90
    return-void
.end method

.method public setEnsureValid(Z)V
    .locals 0
    .param p1, "isEnsureValidTopology"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->isEnsureValidTopology:Z

    .line 109
    return-void
.end method
