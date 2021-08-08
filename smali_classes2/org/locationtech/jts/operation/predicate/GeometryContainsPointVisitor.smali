.class Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;
.super Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;
.source "RectangleIntersects.java"


# instance fields
.field private containsPoint:Z

.field private rectEnv:Lorg/locationtech/jts/geom/Envelope;

.field private rectSeq:Lorg/locationtech/jts/geom/CoordinateSequence;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 1
    .param p1, "rectangle"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 205
    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->containsPoint:Z

    .line 206
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->rectSeq:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 207
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 208
    return-void
.end method


# virtual methods
.method public containsPoint()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->containsPoint:Z

    return v0
.end method

.method protected isDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 251
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->containsPoint:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected visit(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 225
    instance-of v3, p1, Lorg/locationtech/jts/geom/Polygon;

    if-nez v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 230
    .local v0, "elementEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v3, p0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 235
    .local v2, "rectPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 236
    iget-object v3, p0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->rectSeq:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3, v1, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 237
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 235
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v3, p1

    .line 241
    check-cast v3, Lorg/locationtech/jts/geom/Polygon;

    invoke-static {v2, v3}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->containsPointInPolygon(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Polygon;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->containsPoint:Z

    goto :goto_0
.end method
