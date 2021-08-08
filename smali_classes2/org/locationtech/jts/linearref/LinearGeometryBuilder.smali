.class public Lorg/locationtech/jts/linearref/LinearGeometryBuilder;
.super Ljava/lang/Object;
.source "LinearGeometryBuilder.java"


# instance fields
.field private coordList:Lorg/locationtech/jts/geom/CoordinateList;

.field private fixInvalidLines:Z

.field private geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

.field private ignoreInvalidLines:Z

.field private lastPt:Lorg/locationtech/jts/geom/Coordinate;

.field private lines:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 3
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->lines:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    .line 37
    iput-boolean v1, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->ignoreInvalidLines:Z

    .line 38
    iput-boolean v1, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->fixInvalidLines:Z

    .line 40
    iput-object v2, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->lastPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 44
    return-void
.end method

.method private validCoordinateSequence([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 127
    array-length v1, p1

    if-lt v1, v3, :cond_0

    .line 129
    .end local p1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object p1

    .line 128
    .restart local p1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    new-array v0, v3, [Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aget-object v2, p1, v2

    aput-object v2, v0, v1

    .local v0, "validPts":[Lorg/locationtech/jts/geom/Coordinate;
    move-object p1, v0

    .line 129
    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 76
    return-void
.end method

.method public add(Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "allowRepeatedPoints"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 88
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->lastPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 89
    return-void
.end method

.method public endLine()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 98
    iget-object v4, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    if-nez v4, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-boolean v4, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->ignoreInvalidLines:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 102
    iput-object v6, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    goto :goto_0

    .line 105
    :cond_2
    iget-object v4, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 106
    .local v3, "rawPts":[Lorg/locationtech/jts/geom/Coordinate;
    move-object v2, v3

    .line 107
    .local v2, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-boolean v4, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->fixInvalidLines:Z

    if-eqz v4, :cond_3

    .line 108
    invoke-direct {p0, v3}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->validCoordinateSequence([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 110
    :cond_3
    iput-object v6, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, "line":Lorg/locationtech/jts/geom/LineString;
    :try_start_0
    iget-object v4, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v4, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :cond_4
    if-eqz v1, :cond_0

    iget-object v4, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->lines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-boolean v4, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->ignoreInvalidLines:Z

    if-nez v4, :cond_4

    .line 119
    throw v0
.end method

.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->endLine()V

    .line 136
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v1, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->lines:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getLastCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->lastPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public setFixInvalidLines(Z)V
    .locals 0
    .param p1, "fixInvalidLines"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->fixInvalidLines:Z

    .line 66
    return-void
.end method

.method public setIgnoreInvalidLines(Z)V
    .locals 0
    .param p1, "ignoreInvalidLines"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->ignoreInvalidLines:Z

    .line 55
    return-void
.end method
