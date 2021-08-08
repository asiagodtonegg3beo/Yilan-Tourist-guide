.class public Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;
.super Ljava/lang/Object;
.source "DelaunayTriangulationBuilder.java"


# instance fields
.field private siteCoords:Ljava/util/Collection;

.field private subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

.field private tolerance:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->tolerance:D

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 106
    return-void
.end method

.method private create()V
    .locals 6

    .prologue
    .line 146
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    if-eqz v3, :cond_0

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->siteCoords:Ljava/util/Collection;

    invoke-static {v3}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->envelope(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 149
    .local v0, "siteEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->siteCoords:Ljava/util/Collection;

    invoke-static {v3}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->toVertices(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, "vertices":Ljava/util/List;
    new-instance v3, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    iget-wide v4, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->tolerance:D

    invoke-direct {v3, v0, v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;-><init>(Lorg/locationtech/jts/geom/Envelope;D)V

    iput-object v3, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 151
    new-instance v1, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;

    iget-object v3, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-direct {v1, v3}, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;-><init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;)V

    .line 152
    .local v1, "triangulator":Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->insertSites(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static envelope(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Envelope;
    .locals 4
    .param p0, "coords"    # Ljava/util/Collection;

    .prologue
    .line 88
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 89
    .local v1, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 91
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 93
    .end local v0    # "coord":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-object v1
.end method

.method public static extractUniqueCoordinates(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateList;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    new-instance v1, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 54
    :goto_0
    return-object v1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 54
    .local v0, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v0}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->unique([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateList;

    move-result-object v1

    goto :goto_0
.end method

.method public static toVertices(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p0, "coords"    # Ljava/util/Collection;

    .prologue
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "verts":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 75
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v3, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-direct {v3, v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "coord":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-object v2
.end method

.method public static unique([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateList;
    .locals 3
    .param p0, "coords"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 59
    invoke-static {p0}, Lorg/locationtech/jts/geom/CoordinateArrays;->copyDeep([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 60
    .local v1, "coordsCopy":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 61
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/CoordinateList;-><init>([Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 62
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    return-object v0
.end method


# virtual methods
.method public getEdges(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->create()V

    .line 175
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getEdges(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getSubdivision()Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->create()V

    .line 163
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    return-object v0
.end method

.method public getTriangles(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->create()V

    .line 188
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getTriangles(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public setSites(Ljava/util/Collection;)V
    .locals 1
    .param p1, "coords"    # Ljava/util/Collection;

    .prologue
    .line 129
    invoke-static {p1}, Lorg/locationtech/jts/geom/CoordinateArrays;->toCoordinateArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-static {v0}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->unique([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateList;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->siteCoords:Ljava/util/Collection;

    .line 130
    return-void
.end method

.method public setSites(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 117
    invoke-static {p1}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->extractUniqueCoordinates(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateList;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->siteCoords:Ljava/util/Collection;

    .line 118
    return-void
.end method

.method public setTolerance(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 141
    iput-wide p1, p0, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->tolerance:D

    .line 142
    return-void
.end method
