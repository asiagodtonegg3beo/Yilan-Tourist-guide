.class Lorg/locationtech/jts/simplify/TaggedLineSegment;
.super Lorg/locationtech/jts/geom/LineSegment;
.source "TaggedLineSegment.java"


# instance fields
.field private index:I

.field private parent:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/simplify/TaggedLineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;I)V
    .locals 0
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "parent"    # Lorg/locationtech/jts/geom/Geometry;
    .param p4, "index"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 32
    iput-object p3, p0, Lorg/locationtech/jts/simplify/TaggedLineSegment;->parent:Lorg/locationtech/jts/geom/Geometry;

    .line 33
    iput p4, p0, Lorg/locationtech/jts/simplify/TaggedLineSegment;->index:I

    .line 34
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/locationtech/jts/simplify/TaggedLineSegment;->index:I

    return v0
.end method

.method public getParent()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineSegment;->parent:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method
