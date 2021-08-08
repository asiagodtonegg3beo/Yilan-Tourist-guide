.class public Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;
.super Ljava/lang/Object;
.source "ConformingDelaunayTriangulationBuilder.java"


# instance fields
.field private constraintLines:Lorg/locationtech/jts/geom/Geometry;

.field private constraintVertexMap:Ljava/util/Map;

.field private siteCoords:Ljava/util/Collection;

.field private subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

.field private tolerance:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->tolerance:D

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 49
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintVertexMap:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private create()V
    .locals 6

    .prologue
    .line 99
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    if-eqz v4, :cond_0

    .line 118
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->siteCoords:Ljava/util/Collection;

    invoke-static {v4}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->envelope(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    .line 103
    .local v2, "siteEnv":Lorg/locationtech/jts/geom/Envelope;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "segments":Ljava/util/List;
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintLines:Lorg/locationtech/jts/geom/Geometry;

    if-eqz v4, :cond_1

    .line 105
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintLines:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    .line 106
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintLines:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v4}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->createVertices(Lorg/locationtech/jts/geom/Geometry;)V

    .line 107
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintLines:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v4}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->createConstraintSegments(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v1

    .line 109
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->siteCoords:Ljava/util/Collection;

    invoke-direct {p0, v4}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->createSiteVertices(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 111
    .local v3, "sites":Ljava/util/List;
    new-instance v0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;

    iget-wide v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->tolerance:D

    invoke-direct {v0, v3, v4, v5}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;-><init>(Ljava/util/Collection;D)V

    .line 113
    .local v0, "cdt":Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintVertexMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v4}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->setConstraints(Ljava/util/List;Ljava/util/List;)V

    .line 115
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->formInitialDelaunay()V

    .line 116
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->enforceConstraints()V

    .line 117
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->getSubdivision()Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    move-result-object v4

    iput-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    goto :goto_0
.end method

.method private static createConstraintSegments(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 5
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 143
    invoke-static {p0}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v3

    .line 144
    .local v3, "lines":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "constraintSegs":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LineString;

    .line 147
    .local v2, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-static {v2, v0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->createConstraintSegments(Lorg/locationtech/jts/geom/LineString;Ljava/util/List;)V

    goto :goto_0

    .line 149
    .end local v2    # "line":Lorg/locationtech/jts/geom/LineString;
    :cond_0
    return-object v0
.end method

.method private static createConstraintSegments(Lorg/locationtech/jts/geom/LineString;Ljava/util/List;)V
    .locals 5
    .param p0, "line"    # Lorg/locationtech/jts/geom/LineString;
    .param p1, "constraintSegs"    # Ljava/util/List;

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 155
    .local v0, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 156
    new-instance v2, Lorg/locationtech/jts/triangulate/Segment;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    aget-object v4, v0, v1

    invoke-direct {v2, v3, v4}, Lorg/locationtech/jts/triangulate/Segment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method private createSiteVertices(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p1, "coords"    # Ljava/util/Collection;

    .prologue
    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "verts":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 125
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintVertexMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    new-instance v3, Lorg/locationtech/jts/triangulate/ConstraintVertex;

    invoke-direct {v3, v0}, Lorg/locationtech/jts/triangulate/ConstraintVertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v0    # "coord":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    return-object v2
.end method

.method private createVertices(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 5
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 134
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 135
    .local v0, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 136
    new-instance v2, Lorg/locationtech/jts/triangulate/ConstraintVertex;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lorg/locationtech/jts/triangulate/ConstraintVertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 137
    .local v2, "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintVertexMap:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEdges(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->create()V

    .line 180
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getEdges(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getSubdivision()Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->create()V

    .line 168
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    return-object v0
.end method

.method public getTriangles(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 192
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->create()V

    .line 193
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getTriangles(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public setConstraints(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "constraintLines"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->constraintLines:Lorg/locationtech/jts/geom/Geometry;

    .line 82
    return-void
.end method

.method public setSites(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 67
    invoke-static {p1}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->extractUniqueCoordinates(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateList;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->siteCoords:Ljava/util/Collection;

    .line 68
    return-void
.end method

.method public setTolerance(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 93
    iput-wide p1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulationBuilder;->tolerance:D

    .line 94
    return-void
.end method
