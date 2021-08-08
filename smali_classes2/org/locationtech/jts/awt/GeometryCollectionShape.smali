.class public Lorg/locationtech/jts/awt/GeometryCollectionShape;
.super Ljava/lang/Object;
.source "GeometryCollectionShape.java"

# interfaces
.implements Ljava/awt/Shape;


# instance fields
.field private shapes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/awt/GeometryCollectionShape;->shapes:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public add(Ljava/awt/Shape;)V
    .locals 1
    .param p1, "shape"    # Ljava/awt/Shape;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/locationtech/jts/awt/GeometryCollectionShape;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public contains(DD)Z
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method contains() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(DDDD)Z
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method contains() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/awt/geom/Point2D;)Z
    .locals 2
    .param p1, "p"    # Ljava/awt/geom/Point2D;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method contains() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 2
    .param p1, "r"    # Ljava/awt/geom/Rectangle2D;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method contains() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method getBounds() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 4

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "rectangle":Ljava/awt/geom/Rectangle2D;
    iget-object v3, p0, Lorg/locationtech/jts/awt/GeometryCollectionShape;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/Shape;

    .line 55
    .local v2, "shape":Ljava/awt/Shape;
    if-nez v1, :cond_0

    .line 56
    invoke-interface {v2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    .line 62
    .end local v2    # "shape":Ljava/awt/Shape;
    :cond_1
    return-object v1
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;
    .locals 2
    .param p1, "at"    # Ljava/awt/geom/AffineTransform;

    .prologue
    .line 102
    new-instance v0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;

    iget-object v1, p0, Lorg/locationtech/jts/awt/GeometryCollectionShape;->shapes:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;-><init>(Ljava/util/Collection;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 1
    .param p1, "at"    # Ljava/awt/geom/AffineTransform;
    .param p2, "flatness"    # D

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/awt/GeometryCollectionShape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v0

    return-object v0
.end method

.method public intersects(DDDD)Z
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method intersects() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 2
    .param p1, "r"    # Ljava/awt/geom/Rectangle2D;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method intersects() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
