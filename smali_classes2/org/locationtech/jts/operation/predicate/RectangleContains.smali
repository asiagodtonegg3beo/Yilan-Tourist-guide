.class public Lorg/locationtech/jts/operation/predicate/RectangleContains;
.super Ljava/lang/Object;
.source "RectangleContains.java"


# instance fields
.field private rectEnv:Lorg/locationtech/jts/geom/Envelope;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 1
    .param p1, "rectangle"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 61
    return-void
.end method

.method public static contains(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "rectangle"    # Lorg/locationtech/jts/geom/Polygon;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 48
    new-instance v0, Lorg/locationtech/jts/operation/predicate/RectangleContains;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/predicate/RectangleContains;-><init>(Lorg/locationtech/jts/geom/Polygon;)V

    .line 49
    .local v0, "rc":Lorg/locationtech/jts/operation/predicate/RectangleContains;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->contains(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    return v1
.end method

.method private isContainedInBoundary(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v2, 0x0

    .line 82
    instance-of v3, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_1

    .line 91
    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return v2

    .line 83
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v3, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v3, :cond_2

    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->isPointContainedInBoundary(Lorg/locationtech/jts/geom/Point;)Z

    move-result v2

    goto :goto_0

    .line 84
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v3, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v3, :cond_3

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->isLineStringContainedInBoundary(Lorg/locationtech/jts/geom/LineString;)Z

    move-result v2

    goto :goto_0

    .line 86
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 87
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 88
    .local v0, "comp":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->isContainedInBoundary(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "comp":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isLineSegmentContainedInBoundary(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 6
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->isPointContainedInBoundary(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_3

    .line 151
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 152
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 168
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_3
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2

    .line 156
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 157
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method private isLineStringContainedInBoundary(Lorg/locationtech/jts/geom/LineString;)Z
    .locals 5
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v3

    .line 126
    .local v3, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 127
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 128
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 129
    invoke-interface {v3, v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 130
    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 132
    invoke-direct {p0, v1, v2}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->isLineSegmentContainedInBoundary(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    const/4 v4, 0x0

    .line 135
    :goto_1
    return v4

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private isPointContainedInBoundary(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 4
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 112
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 113
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 114
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v2, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 115
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointContainedInBoundary(Lorg/locationtech/jts/geom/Point;)Z
    .locals 1
    .param p1, "point"    # Lorg/locationtech/jts/geom/Point;

    .prologue
    .line 96
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->isPointContainedInBoundary(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public contains(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/RectangleContains;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->isContainedInBoundary(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const/4 v0, 0x1

    goto :goto_0
.end method
