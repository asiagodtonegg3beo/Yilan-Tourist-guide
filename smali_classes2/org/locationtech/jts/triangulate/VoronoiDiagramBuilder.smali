.class public Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;
.super Ljava/lang/Object;
.source "VoronoiDiagramBuilder.java"


# instance fields
.field private clipEnv:Lorg/locationtech/jts/geom/Envelope;

.field private diagramEnv:Lorg/locationtech/jts/geom/Envelope;

.field private siteCoords:Ljava/util/Collection;

.field private subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

.field private tolerance:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->tolerance:D

    .line 49
    iput-object v2, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 50
    iput-object v2, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->clipEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 51
    iput-object v2, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->diagramEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 59
    return-void
.end method

.method private static clipGeometryCollection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "clipEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometry(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 160
    .local v0, "clipPoly":Lorg/locationtech/jts/geom/Geometry;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "clipped":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 162
    invoke-virtual {p0, v3}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 163
    .local v2, "g":Lorg/locationtech/jts/geom/Geometry;
    const/4 v4, 0x0

    .line 165
    .local v4, "result":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    move-object v4, v2

    .line 173
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 174
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/Geometry;->intersection(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    .line 170
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->setUserData(Ljava/lang/Object;)V

    goto :goto_1

    .line 177
    .end local v2    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v4    # "result":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v5

    invoke-static {v1}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometryArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v5

    return-object v5
.end method

.method private create()V
    .locals 10

    .prologue
    .line 110
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    if-eqz v5, :cond_0

    .line 124
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->siteCoords:Ljava/util/Collection;

    invoke-static {v5}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->envelope(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    .line 113
    .local v2, "siteEnv":Lorg/locationtech/jts/geom/Envelope;
    iput-object v2, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->diagramEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 115
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->diagramEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v6

    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->diagramEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 116
    .local v0, "expandBy":D
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->diagramEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v5, v0, v1}, Lorg/locationtech/jts/geom/Envelope;->expandBy(D)V

    .line 117
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->clipEnv:Lorg/locationtech/jts/geom/Envelope;

    if-eqz v5, :cond_1

    .line 118
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->diagramEnv:Lorg/locationtech/jts/geom/Envelope;

    iget-object v6, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->clipEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    .line 120
    :cond_1
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->siteCoords:Ljava/util/Collection;

    invoke-static {v5}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->toVertices(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 121
    .local v4, "vertices":Ljava/util/List;
    new-instance v5, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    iget-wide v6, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->tolerance:D

    invoke-direct {v5, v2, v6, v7}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;-><init>(Lorg/locationtech/jts/geom/Envelope;D)V

    iput-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 122
    new-instance v3, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;

    iget-object v5, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-direct {v3, v5}, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;-><init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;)V

    .line 123
    .local v3, "triangulator":Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;
    invoke-virtual {v3, v4}, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->insertSites(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public getDiagram(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->create()V

    .line 151
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getVoronoiDiagram(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 154
    .local v0, "polys":Lorg/locationtech/jts/geom/Geometry;
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->diagramEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-static {v0, v1}, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->clipGeometryCollection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public getSubdivision()Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->create()V

    .line 134
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    return-object v0
.end method

.method public setClipEnvelope(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 0
    .param p1, "clipEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->clipEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 95
    return-void
.end method

.method public setSites(Ljava/util/Collection;)V
    .locals 1
    .param p1, "coords"    # Ljava/util/Collection;

    .prologue
    .line 82
    invoke-static {p1}, Lorg/locationtech/jts/geom/CoordinateArrays;->toCoordinateArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-static {v0}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->unique([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateList;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->siteCoords:Ljava/util/Collection;

    .line 83
    return-void
.end method

.method public setSites(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 70
    invoke-static {p1}, Lorg/locationtech/jts/triangulate/DelaunayTriangulationBuilder;->extractUniqueCoordinates(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateList;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->siteCoords:Ljava/util/Collection;

    .line 71
    return-void
.end method

.method public setTolerance(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 105
    iput-wide p1, p0, Lorg/locationtech/jts/triangulate/VoronoiDiagramBuilder;->tolerance:D

    .line 106
    return-void
.end method
