.class public Lorg/locationtech/jts/awt/PolygonShape;
.super Ljava/lang/Object;
.source "PolygonShape.java"

# interfaces
.implements Ljava/awt/Shape;


# instance fields
.field private polygonPath:Ljava/awt/geom/GeneralPath;

.field private ringPath:Ljava/awt/geom/GeneralPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/util/Collection;)V
    .locals 5
    .param p1, "shellVertices"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "holeVerticesCollection"    # Ljava/util/Collection;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lorg/locationtech/jts/awt/PolygonShape;->toPath([Lorg/locationtech/jts/geom/Coordinate;)Ljava/awt/geom/GeneralPath;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    .line 51
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v0, v2

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    .line 53
    .local v0, "holeVertices":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/awt/PolygonShape;->toPath([Lorg/locationtech/jts/geom/Coordinate;)Ljava/awt/geom/GeneralPath;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/awt/geom/GeneralPath;->append(Ljava/awt/Shape;Z)V

    goto :goto_0

    .line 55
    .end local v0    # "holeVertices":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-void
.end method

.method private toPath([Lorg/locationtech/jts/geom/Coordinate;)Ljava/awt/geom/GeneralPath;
    .locals 6
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v1, Ljava/awt/geom/GeneralPath;

    array-length v2, p1

    invoke-direct {v1, v4, v2}, Ljava/awt/geom/GeneralPath;-><init>(II)V

    .line 95
    .local v1, "path":Ljava/awt/geom/GeneralPath;
    array-length v2, p1

    if-lez v2, :cond_0

    .line 96
    aget-object v2, p1, v4

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    double-to-float v2, v2

    aget-object v3, p1, v4

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/awt/geom/GeneralPath;->moveTo(FF)V

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 98
    aget-object v2, p1, v0

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    double-to-float v2, v2

    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method addToRing(Ljava/awt/geom/Point2D;)V
    .locals 4
    .param p1, "p"    # Ljava/awt/geom/Point2D;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->ringPath:Ljava/awt/geom/GeneralPath;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/awt/geom/GeneralPath;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/geom/GeneralPath;-><init>(I)V

    iput-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->ringPath:Ljava/awt/geom/GeneralPath;

    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->ringPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/GeneralPath;->moveTo(FF)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->ringPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    goto :goto_0
.end method

.method public contains(DD)Z
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 113
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/GeneralPath;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(DDDD)Z
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 129
    iget-object v1, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/GeneralPath;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/awt/geom/Point2D;)Z
    .locals 1
    .param p1, "p"    # Ljava/awt/geom/Point2D;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {v0, p1}, Ljava/awt/geom/GeneralPath;->contains(Ljava/awt/geom/Point2D;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 1
    .param p1, "r"    # Ljava/awt/geom/Rectangle2D;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {v0, p1}, Ljava/awt/geom/GeneralPath;->contains(Ljava/awt/geom/Rectangle2D;)Z

    move-result v0

    return v0
.end method

.method endRing()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->ringPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {v0}, Ljava/awt/geom/GeneralPath;->closePath()V

    .line 75
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->ringPath:Ljava/awt/geom/GeneralPath;

    iput-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    .line 81
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->ringPath:Ljava/awt/geom/GeneralPath;

    .line 82
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    iget-object v1, p0, Lorg/locationtech/jts/awt/PolygonShape;->ringPath:Ljava/awt/geom/GeneralPath;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/GeneralPath;->append(Ljava/awt/Shape;Z)V

    goto :goto_0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {v0}, Ljava/awt/geom/GeneralPath;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {v0}, Ljava/awt/geom/GeneralPath;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;
    .locals 1
    .param p1, "at"    # Ljava/awt/geom/AffineTransform;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {v0, p1}, Ljava/awt/geom/GeneralPath;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v0

    return-object v0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 2
    .param p1, "at"    # Ljava/awt/geom/AffineTransform;
    .param p2, "flatness"    # D

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lorg/locationtech/jts/awt/PolygonShape;->getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;

    move-result-object v0

    return-object v0
.end method

.method public intersects(DDDD)Z
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 121
    iget-object v1, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/GeneralPath;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 1
    .param p1, "r"    # Ljava/awt/geom/Rectangle2D;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/locationtech/jts/awt/PolygonShape;->polygonPath:Ljava/awt/geom/GeneralPath;

    invoke-virtual {v0, p1}, Ljava/awt/geom/GeneralPath;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result v0

    return v0
.end method
