.class Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;
.super Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;
.source "RectangleIntersects.java"


# instance fields
.field private hasIntersection:Z

.field private p0:Lorg/locationtech/jts/geom/Coordinate;

.field private p1:Lorg/locationtech/jts/geom/Coordinate;

.field private rectEnv:Lorg/locationtech/jts/geom/Envelope;

.field private rectIntersector:Lorg/locationtech/jts/algorithm/RectangleLineIntersector;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 2
    .param p1, "rectangle"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 279
    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->hasIntersection:Z

    .line 269
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 270
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 280
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 281
    new-instance v0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->rectIntersector:Lorg/locationtech/jts/algorithm/RectangleLineIntersector;

    .line 282
    return-void
.end method

.method private checkIntersectionWithLineStrings(Ljava/util/List;)V
    .locals 3
    .param p1, "lines"    # Ljava/util/List;

    .prologue
    .line 315
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    .line 317
    .local v1, "testLine":Lorg/locationtech/jts/geom/LineString;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->checkIntersectionWithSegments(Lorg/locationtech/jts/geom/LineString;)V

    .line 318
    iget-boolean v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->hasIntersection:Z

    if-eqz v2, :cond_0

    .line 321
    .end local v1    # "testLine":Lorg/locationtech/jts/geom/LineString;
    :cond_1
    return-void
.end method

.method private checkIntersectionWithSegments(Lorg/locationtech/jts/geom/LineString;)V
    .locals 5
    .param p1, "testLine"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 325
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    .line 326
    .local v1, "seq1":Lorg/locationtech/jts/geom/CoordinateSequence;
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 327
    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v1, v2, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 328
    iget-object v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v1, v0, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 330
    iget-object v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->rectIntersector:Lorg/locationtech/jts/algorithm/RectangleLineIntersector;

    iget-object v3, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3, v4}, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->hasIntersection:Z

    .line 335
    :cond_0
    return-void

    .line 326
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public intersects()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->hasIntersection:Z

    return v0
.end method

.method protected isDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 339
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->hasIntersection:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected visit(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 302
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 303
    .local v0, "elementEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v1

    .line 310
    .local v1, "lines":Ljava/util/List;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->checkIntersectionWithLineStrings(Ljava/util/List;)V

    goto :goto_0
.end method
