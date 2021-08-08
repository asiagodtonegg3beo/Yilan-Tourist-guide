.class public Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;
.super Ljava/lang/Object;
.source "ShapeCollectionPathIterator.java"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# instance fields
.field private affineTransform:Ljava/awt/geom/AffineTransform;

.field private currentPathIterator:Ljava/awt/geom/PathIterator;

.field private done:Z

.field private shapeIterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .param p1, "shapes"    # Ljava/util/Collection;
    .param p2, "affineTransform"    # Ljava/awt/geom/AffineTransform;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator$1;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator$1;-><init>(Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;)V

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->currentPathIterator:Ljava/awt/geom/PathIterator;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->done:Z

    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->shapeIterator:Ljava/util/Iterator;

    .line 62
    iput-object p2, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->affineTransform:Ljava/awt/geom/AffineTransform;

    .line 63
    invoke-virtual {p0}, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->next()V

    .line 64
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 1
    .param p1, "coords"    # [D

    .prologue
    .line 98
    iget-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->currentPathIterator:Ljava/awt/geom/PathIterator;

    invoke-interface {v0, p1}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v0

    return v0
.end method

.method public currentSegment([F)I
    .locals 1
    .param p1, "coords"    # [F

    .prologue
    .line 94
    iget-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->currentPathIterator:Ljava/awt/geom/PathIterator;

    invoke-interface {v0, p1}, Ljava/awt/geom/PathIterator;->currentSegment([F)I

    move-result v0

    return v0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->done:Z

    return v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->currentPathIterator:Ljava/awt/geom/PathIterator;

    invoke-interface {v0}, Ljava/awt/geom/PathIterator;->next()V

    .line 84
    iget-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->currentPathIterator:Ljava/awt/geom/PathIterator;

    invoke-interface {v0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->shapeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->done:Z

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->currentPathIterator:Ljava/awt/geom/PathIterator;

    invoke-interface {v0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->shapeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Shape;

    iget-object v1, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->affineTransform:Ljava/awt/geom/AffineTransform;

    invoke-interface {v0, v1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;->currentPathIterator:Ljava/awt/geom/PathIterator;

    goto :goto_0
.end method
