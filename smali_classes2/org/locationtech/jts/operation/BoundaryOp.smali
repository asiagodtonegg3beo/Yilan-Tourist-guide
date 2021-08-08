.class public Lorg/locationtech/jts/operation/BoundaryOp;
.super Ljava/lang/Object;
.source "BoundaryOp.java"


# instance fields
.field private bnRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

.field private endpointMap:Ljava/util/Map;

.field private geom:Lorg/locationtech/jts/geom/Geometry;

.field private geomFact:Lorg/locationtech/jts/geom/GeometryFactory;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 64
    sget-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->MOD2_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/BoundaryOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "bnRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geom:Lorg/locationtech/jts/geom/Geometry;

    .line 70
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 71
    iput-object p2, p0, Lorg/locationtech/jts/operation/BoundaryOp;->bnRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 72
    return-void
.end method

.method private addEndpoint(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 140
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->endpointMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/Counter;

    .line 141
    .local v0, "counter":Lorg/locationtech/jts/operation/Counter;
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lorg/locationtech/jts/operation/Counter;

    .end local v0    # "counter":Lorg/locationtech/jts/operation/Counter;
    invoke-direct {v0}, Lorg/locationtech/jts/operation/Counter;-><init>()V

    .line 143
    .restart local v0    # "counter":Lorg/locationtech/jts/operation/Counter;
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->endpointMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget v1, v0, Lorg/locationtech/jts/operation/Counter;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/locationtech/jts/operation/Counter;->count:I

    .line 146
    return-void
.end method

.method private boundaryLineString(Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/Geometry;
    .locals 5
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    const/4 v2, 0x2

    .line 150
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0}, Lorg/locationtech/jts/operation/BoundaryOp;->getEmptyMultiPoint()Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 154
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->bnRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    invoke-interface {v1, v2}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->isInBoundary(I)Z

    move-result v0

    .line 157
    .local v0, "closedEndpointOnBoundary":Z
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getStartPoint()Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x0

    check-cast v1, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v1

    goto :goto_0

    .line 164
    .end local v0    # "closedEndpointOnBoundary":Z
    :cond_2
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    new-array v2, v2, [Lorg/locationtech/jts/geom/Point;

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getStartPoint()Lorg/locationtech/jts/geom/Point;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 166
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getEndPoint()Lorg/locationtech/jts/geom/Point;

    move-result-object v4

    aput-object v4, v2, v3

    .line 164
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v1

    goto :goto_0
.end method

.method private boundaryMultiLineString(Lorg/locationtech/jts/geom/MultiLineString;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "mLine"    # Lorg/locationtech/jts/geom/MultiLineString;

    .prologue
    .line 88
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0}, Lorg/locationtech/jts/operation/BoundaryOp;->getEmptyMultiPoint()Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/BoundaryOp;->computeBoundaryCoordinates(Lorg/locationtech/jts/geom/MultiLineString;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 95
    .local v0, "bdyPts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 96
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v1

    goto :goto_0
.end method

.method private computeBoundaryCoordinates(Lorg/locationtech/jts/geom/MultiLineString;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "mLine"    # Lorg/locationtech/jts/geom/MultiLineString;

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "bdyPts":Ljava/util/List;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    iput-object v7, p0, Lorg/locationtech/jts/operation/BoundaryOp;->endpointMap:Ljava/util/Map;

    .line 118
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiLineString;->getNumGeometries()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 119
    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geom/MultiLineString;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/geom/LineString;

    .line 120
    .local v5, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v7

    if-nez v7, :cond_0

    .line 118
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/locationtech/jts/operation/BoundaryOp;->addEndpoint(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 123
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/locationtech/jts/operation/BoundaryOp;->addEndpoint(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_1

    .line 126
    .end local v5    # "line":Lorg/locationtech/jts/geom/LineString;
    :cond_1
    iget-object v7, p0, Lorg/locationtech/jts/operation/BoundaryOp;->endpointMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 127
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/Counter;

    .line 129
    .local v1, "counter":Lorg/locationtech/jts/operation/Counter;
    iget v6, v1, Lorg/locationtech/jts/operation/Counter;->count:I

    .line 130
    .local v6, "valence":I
    iget-object v7, p0, Lorg/locationtech/jts/operation/BoundaryOp;->bnRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    invoke-interface {v7, v6}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->isInBoundary(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    .end local v1    # "counter":Lorg/locationtech/jts/operation/Counter;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "valence":I
    :cond_3
    invoke-static {v0}, Lorg/locationtech/jts/geom/CoordinateArrays;->toCoordinateArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    return-object v7
.end method

.method public static getBoundary(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 48
    new-instance v0, Lorg/locationtech/jts/operation/BoundaryOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/BoundaryOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 49
    .local v0, "bop":Lorg/locationtech/jts/operation/BoundaryOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/BoundaryOp;->getBoundary()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public static getBoundary(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "bnRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    .line 54
    new-instance v0, Lorg/locationtech/jts/operation/BoundaryOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/BoundaryOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 55
    .local v0, "bop":Lorg/locationtech/jts/operation/BoundaryOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/BoundaryOp;->getBoundary()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private getEmptyMultiPoint()Lorg/locationtech/jts/geom/MultiPoint;
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v0, 0x0

    check-cast v0, Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoundary()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geom:Lorg/locationtech/jts/geom/Geometry;

    instance-of v0, v0, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geom:Lorg/locationtech/jts/geom/Geometry;

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/BoundaryOp;->boundaryLineString(Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geom:Lorg/locationtech/jts/geom/Geometry;

    instance-of v0, v0, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geom:Lorg/locationtech/jts/geom/Geometry;

    check-cast v0, Lorg/locationtech/jts/geom/MultiLineString;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/BoundaryOp;->boundaryMultiLineString(Lorg/locationtech/jts/geom/MultiLineString;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/operation/BoundaryOp;->geom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getBoundary()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method
