.class public Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;
.super Ljava/lang/Object;
.source "TopologyPreservingSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringMapBuilderFilter;,
        Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringTransformer;
    }
.end annotation


# instance fields
.field private inputGeom:Lorg/locationtech/jts/geom/Geometry;

.field private lineSimplifier:Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;

.field private linestringMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "inputGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;

    invoke-direct {v0}, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->lineSimplifier:Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;

    .line 93
    iput-object p1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->linestringMap:Ljava/util/Map;

    return-object v0
.end method

.method public static simplify(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 82
    new-instance v0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 83
    .local v0, "tss":Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->setDistanceTolerance(D)V

    .line 84
    invoke-virtual {v0}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->getResultGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getResultGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    .line 120
    :goto_0
    return-object v1

    .line 116
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->linestringMap:Ljava/util/Map;

    .line 117
    iget-object v1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    new-instance v2, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringMapBuilderFilter;

    invoke-direct {v2, p0}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringMapBuilderFilter;-><init>(Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;)V

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 118
    iget-object v1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->lineSimplifier:Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;

    iget-object v2, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->linestringMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->simplify(Ljava/util/Collection;)V

    .line 119
    new-instance v1, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringTransformer;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringTransformer;-><init>(Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;)V

    iget-object v2, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringTransformer;->transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .local v0, "result":Lorg/locationtech/jts/geom/Geometry;
    move-object v1, v0

    .line 120
    goto :goto_0
.end method

.method public setDistanceTolerance(D)V
    .locals 3
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->lineSimplifier:Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->setDistanceTolerance(D)V

    .line 109
    return-void
.end method
