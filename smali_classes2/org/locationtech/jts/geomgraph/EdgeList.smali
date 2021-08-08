.class public Lorg/locationtech/jts/geomgraph/EdgeList;
.super Ljava/lang/Object;
.source "EdgeList.java"


# instance fields
.field private edges:Ljava/util/List;

.field private ocaMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->ocaMap:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geomgraph/Edge;)V
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 51
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lorg/locationtech/jts/noding/OrientedCoordinateArray;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/noding/OrientedCoordinateArray;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 53
    .local v0, "oca":Lorg/locationtech/jts/noding/OrientedCoordinateArray;
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->ocaMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .param p1, "edgeColl"    # Ljava/util/Collection;

    .prologue
    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Edge;

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geomgraph/EdgeList;->add(Lorg/locationtech/jts/geomgraph/Edge;)V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public findEdgeIndex(Lorg/locationtech/jts/geomgraph/Edge;)I
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Edge;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geomgraph/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 90
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findEqualEdge(Lorg/locationtech/jts/geomgraph/Edge;)Lorg/locationtech/jts/geomgraph/Edge;
    .locals 3
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 73
    new-instance v1, Lorg/locationtech/jts/noding/OrientedCoordinateArray;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/locationtech/jts/noding/OrientedCoordinateArray;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 75
    .local v1, "oca":Lorg/locationtech/jts/noding/OrientedCoordinateArray;
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->ocaMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 76
    .local v0, "matchEdge":Lorg/locationtech/jts/geomgraph/Edge;
    return-object v0
.end method

.method public get(I)Lorg/locationtech/jts/geomgraph/Edge;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    return-object v0
.end method

.method public getEdges()Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 98
    const-string v4, "MULTILINESTRING ( "

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 100
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/EdgeList;->edges:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 101
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    if-lez v2, :cond_0

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    :cond_0
    const-string v4, "("

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 104
    .local v3, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 105
    if-lez v1, :cond_1

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 106
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v1

    iget-wide v6, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    iget-wide v6, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_2
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "i":I
    .end local v3    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_3
    const-string v4, ")  "

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 111
    return-void
.end method
