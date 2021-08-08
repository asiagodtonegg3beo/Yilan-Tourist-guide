.class public Lorg/locationtech/jts/planargraph/NodeMap;
.super Ljava/lang/Object;
.source "NodeMap.java"


# instance fields
.field private nodeMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/NodeMap;->nodeMap:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/Node;
    .locals 2
    .param p1, "n"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object p1
.end method

.method public find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/Node;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/Node;

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
