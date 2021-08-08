.class public Lorg/locationtech/jts/algorithm/InteriorPointArea;
.super Ljava/lang/Object;
.source "InteriorPointArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;
    }
.end annotation


# instance fields
.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

.field private maxWidth:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->maxWidth:D

    .line 68
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 69
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(DD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->avg(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 91
    instance-of v2, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v2, :cond_1

    .line 92
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->addPolygon(Lorg/locationtech/jts/geom/Geometry;)V

    .line 100
    :cond_0
    return-void

    .line 94
    :cond_1
    instance-of v2, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 96
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 97
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addPolygon(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 10
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->horizontalBisector(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    .line 114
    .local v0, "bisector":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getLength()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    .line 115
    const-wide/16 v4, 0x0

    .line 116
    .local v4, "width":D
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 124
    .local v1, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    iget-object v6, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->maxWidth:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 125
    :cond_2
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 126
    iput-wide v4, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->maxWidth:D

    goto :goto_0

    .line 119
    .end local v1    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "width":D
    :cond_3
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/LineString;->intersection(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 120
    .local v2, "intersections":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->widestGeometry(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    .line 121
    .local v3, "widestIntersection":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v4

    .line 122
    .restart local v4    # "width":D
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v6

    invoke-static {v6}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->centre(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .restart local v1    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    goto :goto_1
.end method

.method private static avg(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 53
    add-double v0, p0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static centre(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p0, "envelope"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 178
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    .line 179
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    .line 178
    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->avg(DD)D

    move-result-wide v2

    .line 180
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->avg(DD)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 178
    return-object v0
.end method

.method private widestGeometry(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 133
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-nez v0, :cond_0

    .line 136
    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return-object p1

    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->widestGeometry(Lorg/locationtech/jts/geom/GeometryCollection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    goto :goto_0
.end method

.method private widestGeometry(Lorg/locationtech/jts/geom/GeometryCollection;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;

    .prologue
    .line 140
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    .end local p1    # "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    :goto_0
    return-object p1

    .line 144
    .restart local p1    # "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 146
    .local v1, "widestGeometry":Lorg/locationtech/jts/geom/Geometry;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 147
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v2

    .line 148
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 149
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 152
    goto :goto_0
.end method


# virtual methods
.method public getInteriorPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method protected horizontalBisector(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/LineString;
    .locals 10
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 156
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    .line 165
    .local v2, "envelope":Lorg/locationtech/jts/geom/Envelope;
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p1}, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->getBisectorY(Lorg/locationtech/jts/geom/Polygon;)D

    move-result-wide v0

    .line 166
    .local v0, "bisectY":D
    iget-object v3, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v5, 0x0

    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    .line 167
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v8

    invoke-direct {v6, v8, v9, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    .line 168
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v8

    invoke-direct {v6, v8, v9, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v6, v4, v5

    .line 166
    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    return-object v3
.end method
