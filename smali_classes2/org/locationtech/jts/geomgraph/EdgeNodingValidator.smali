.class public Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;
.super Ljava/lang/Object;
.source "EdgeNodingValidator.java"


# instance fields
.field private nv:Lorg/locationtech/jts/noding/FastNodingValidator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1, "edges"    # Ljava/util/Collection;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/locationtech/jts/noding/FastNodingValidator;

    invoke-static {p1}, Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;->toSegmentStrings(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/noding/FastNodingValidator;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;->nv:Lorg/locationtech/jts/noding/FastNodingValidator;

    .line 67
    return-void
.end method

.method public static checkValid(Ljava/util/Collection;)V
    .locals 1
    .param p0, "edges"    # Ljava/util/Collection;

    .prologue
    .line 42
    new-instance v0, Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;-><init>(Ljava/util/Collection;)V

    .line 43
    .local v0, "validator":Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;->checkValid()V

    .line 44
    return-void
.end method

.method public static toSegmentStrings(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .param p0, "edges"    # Ljava/util/Collection;

    .prologue
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "segStrings":Ljava/util/Collection;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 52
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    new-instance v3, Lorg/locationtech/jts/noding/BasicSegmentString;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/locationtech/jts/noding/BasicSegmentString;-><init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkValid()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;->nv:Lorg/locationtech/jts/noding/FastNodingValidator;

    invoke-virtual {v0}, Lorg/locationtech/jts/noding/FastNodingValidator;->checkValid()V

    .line 79
    return-void
.end method
