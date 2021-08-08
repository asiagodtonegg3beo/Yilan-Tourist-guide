.class public abstract Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;
.super Ljava/lang/Object;
.source "ShortCircuitedGeometryVisitor.java"


# instance fields
.field private isDone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;->isDone:Z

    .line 29
    return-void
.end method


# virtual methods
.method public applyTo(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;->isDone:Z

    if-nez v2, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 34
    .local v0, "element":Lorg/locationtech/jts/geom/Geometry;
    instance-of v2, v0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-nez v2, :cond_1

    .line 35
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;->visit(Lorg/locationtech/jts/geom/Geometry;)V

    .line 36
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;->isDone:Z

    .line 44
    .end local v0    # "element":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void

    .line 42
    .restart local v0    # "element":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;->applyTo(Lorg/locationtech/jts/geom/Geometry;)V

    .line 32
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract isDone()Z
.end method

.method protected abstract visit(Lorg/locationtech/jts/geom/Geometry;)V
.end method
