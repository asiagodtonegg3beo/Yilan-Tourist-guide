.class Lorg/locationtech/jts/linearref/ExtractLineByLocation;
.super Ljava/lang/Object;
.source "ExtractLineByLocation.java"


# instance fields
.field private line:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "line"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    .line 49
    return-void
.end method

.method private computeLine(Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/LineString;
    .locals 12
    .param p1, "start"    # Lorg/locationtech/jts/linearref/LinearLocation;
    .param p2, "end"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 85
    iget-object v7, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 86
    .local v0, "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v5, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v5}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 88
    .local v5, "newCoordinates":Lorg/locationtech/jts/geom/CoordinateList;
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentIndex()I

    move-result v6

    .line 89
    .local v6, "startSegmentIndex":I
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentFraction()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 91
    :cond_0
    invoke-virtual {p2}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentIndex()I

    move-result v2

    .line 92
    .local v2, "lastSegmentIndex":I
    invoke-virtual {p2}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentFraction()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v8, v10

    if-nez v7, :cond_1

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    :cond_1
    array-length v7, v0

    if-lt v2, v7, :cond_2

    .line 95
    array-length v7, v0

    add-int/lit8 v2, v7, -0x1

    .line 99
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->isVertex()Z

    move-result v7

    if-nez v7, :cond_3

    .line 100
    iget-object v7, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p1, v7}, Lorg/locationtech/jts/linearref/LinearLocation;->getCoordinate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    move v1, v6

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_4

    .line 102
    aget-object v7, v0, v1

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p2}, Lorg/locationtech/jts/linearref/LinearLocation;->isVertex()Z

    move-result v7

    if-nez v7, :cond_5

    .line 105
    iget-object v7, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p2, v7}, Lorg/locationtech/jts/linearref/LinearLocation;->getCoordinate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_5
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v7

    if-gtz v7, :cond_6

    .line 109
    iget-object v7, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p1, v7}, Lorg/locationtech/jts/linearref/LinearLocation;->getCoordinate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_6
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 117
    .local v3, "newCoordinateArray":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v7, v3

    const/4 v8, 0x1

    if-gt v7, v8, :cond_7

    .line 118
    const/4 v7, 0x2

    new-array v4, v7, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v3, v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v3, v8

    aput-object v8, v4, v7

    .end local v3    # "newCoordinateArray":[Lorg/locationtech/jts/geom/Coordinate;
    .local v4, "newCoordinateArray":[Lorg/locationtech/jts/geom/Coordinate;
    move-object v3, v4

    .line 120
    .end local v4    # "newCoordinateArray":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v3    # "newCoordinateArray":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_7
    iget-object v7, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v7

    return-object v7
.end method

.method private computeLinear(Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .param p1, "start"    # Lorg/locationtech/jts/linearref/LinearLocation;
    .param p2, "end"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 132
    new-instance v0, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;

    iget-object v3, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 133
    .local v0, "builder":Lorg/locationtech/jts/linearref/LinearGeometryBuilder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->setFixInvalidLines(Z)V

    .line 135
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->isVertex()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    iget-object v3, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/linearref/LinearLocation;->getCoordinate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->add(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 138
    :cond_0
    new-instance v1, Lorg/locationtech/jts/linearref/LinearIterator;

    iget-object v3, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v1, v3, p1}, Lorg/locationtech/jts/linearref/LinearIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/linearref/LinearLocation;)V

    .local v1, "it":Lorg/locationtech/jts/linearref/LinearIterator;
    :goto_0
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getComponentIndex()I

    move-result v3

    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getVertexIndex()I

    move-result v4

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v3, v4, v6, v7}, Lorg/locationtech/jts/linearref/LinearLocation;->compareLocationValues(IID)I

    move-result v3

    if-gez v3, :cond_3

    .line 148
    :cond_1
    invoke-virtual {p2}, Lorg/locationtech/jts/linearref/LinearLocation;->isVertex()Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    iget-object v3, p0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->line:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p2, v3}, Lorg/locationtech/jts/linearref/LinearLocation;->getCoordinate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->add(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 151
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    return-object v3

    .line 143
    :cond_3
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentStart()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 144
    .local v2, "pt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->add(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 145
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->isEndOfLine()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearGeometryBuilder;->endLine()V

    .line 138
    :cond_4
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->next()V

    goto :goto_0
.end method

.method public static extract(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "line"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "start"    # Lorg/locationtech/jts/linearref/LinearLocation;
    .param p2, "end"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 41
    new-instance v0, Lorg/locationtech/jts/linearref/ExtractLineByLocation;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/ExtractLineByLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 42
    .local v0, "ls":Lorg/locationtech/jts/linearref/ExtractLineByLocation;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->extract(Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private reverse(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "linear"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 69
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "linear":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->reverse()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 71
    .restart local p1    # "linear":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Lorg/locationtech/jts/geom/MultiLineString;

    .end local p1    # "linear":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiLineString;->reverse()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 73
    .restart local p1    # "linear":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    const-string v0, "non-linear geometry encountered"

    invoke-static {v0}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public extract(Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "start"    # Lorg/locationtech/jts/linearref/LinearLocation;
    .param p2, "end"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 61
    invoke-virtual {p2, p1}, Lorg/locationtech/jts/linearref/LinearLocation;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 62
    invoke-direct {p0, p2, p1}, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->computeLinear(Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->reverse(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->computeLinear(Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method
