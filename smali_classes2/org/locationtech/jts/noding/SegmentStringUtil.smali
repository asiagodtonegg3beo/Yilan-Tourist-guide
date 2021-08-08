.class public Lorg/locationtech/jts/noding/SegmentStringUtil;
.super Ljava/lang/Object;
.source "SegmentStringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractNodedSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 6
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, "segStr":Ljava/util/List;
    invoke-static {p0}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "lines":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    .line 63
    .local v1, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 64
    .local v3, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v5, Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-direct {v5, v3, p0}, Lorg/locationtech/jts/noding/NodedSegmentString;-><init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v1    # "line":Lorg/locationtech/jts/geom/LineString;
    .end local v3    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-object v4
.end method

.method public static extractSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 46
    invoke-static {p0}, Lorg/locationtech/jts/noding/SegmentStringUtil;->extractNodedSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toGeometry(Ljava/util/Collection;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .param p0, "segStrings"    # Ljava/util/Collection;
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 78
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v4, v6, [Lorg/locationtech/jts/geom/LineString;

    .line 79
    .local v4, "lines":[Lorg/locationtech/jts/geom/LineString;
    const/4 v1, 0x0

    .line 80
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/noding/SegmentString;

    .line 82
    .local v5, "ss":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {v5}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    .line 83
    .local v3, "line":Lorg/locationtech/jts/geom/LineString;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput-object v3, v4, v1

    move v1, v2

    .line 84
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 85
    .end local v3    # "line":Lorg/locationtech/jts/geom/LineString;
    .end local v5    # "ss":Lorg/locationtech/jts/noding/SegmentString;
    :cond_0
    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 86
    :goto_1
    return-object v6

    :cond_1
    invoke-virtual {p1, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v6

    goto :goto_1
.end method

.method public static toString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "segStrings"    # Ljava/util/List;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/noding/SegmentString;

    .line 94
    .local v2, "segStr":Lorg/locationtech/jts/noding/SegmentString;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 98
    .end local v2    # "segStr":Lorg/locationtech/jts/noding/SegmentString;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
