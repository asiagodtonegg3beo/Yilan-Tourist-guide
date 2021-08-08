.class public Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;
.super Ljava/lang/Object;
.source "EdgeGraphBuilder.java"


# instance fields
.field private graph:Lorg/locationtech/jts/edgegraph/EdgeGraph;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/locationtech/jts/edgegraph/EdgeGraph;

    invoke-direct {v0}, Lorg/locationtech/jts/edgegraph/EdgeGraph;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->graph:Lorg/locationtech/jts/edgegraph/EdgeGraph;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;Lorg/locationtech/jts/geom/LineString;)V
    .locals 0
    .param p0, "x0"    # Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;
    .param p1, "x1"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->add(Lorg/locationtech/jts/geom/LineString;)V

    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/LineString;)V
    .locals 5
    .param p1, "lineString"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    .line 84
    .local v1, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 85
    iget-object v2, p0, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->graph:Lorg/locationtech/jts/edgegraph/EdgeGraph;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-interface {v1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/locationtech/jts/edgegraph/EdgeGraph;->addEdge(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public static build(Ljava/util/Collection;)Lorg/locationtech/jts/edgegraph/EdgeGraph;
    .locals 2
    .param p0, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 33
    new-instance v0, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;

    invoke-direct {v0}, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;-><init>()V

    .line 34
    .local v0, "builder":Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->add(Ljava/util/Collection;)V

    .line 35
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->getGraph()Lorg/locationtech/jts/edgegraph/EdgeGraph;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Ljava/util/Collection;)V
    .locals 3
    .param p1, "geometries"    # Ljava/util/Collection;

    .prologue
    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 78
    .local v0, "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->add(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0

    .line 80
    .end local v0    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 59
    new-instance v0, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder$1;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder$1;-><init>(Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;)V

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 66
    return-void
.end method

.method public getGraph()Lorg/locationtech/jts/edgegraph/EdgeGraph;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->graph:Lorg/locationtech/jts/edgegraph/EdgeGraph;

    return-object v0
.end method
