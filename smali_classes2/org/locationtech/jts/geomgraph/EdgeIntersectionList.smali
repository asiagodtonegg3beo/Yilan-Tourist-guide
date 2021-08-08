.class public Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;
.super Ljava/lang/Object;
.source "EdgeIntersectionList.java"


# instance fields
.field edge:Lorg/locationtech/jts/geomgraph/Edge;

.field private nodeMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/Edge;)V
    .locals 1
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->nodeMap:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/Coordinate;ID)Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .locals 3
    .param p1, "intPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "segmentIndex"    # I
    .param p3, "dist"    # D

    .prologue
    .line 47
    new-instance v1, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/locationtech/jts/geomgraph/EdgeIntersection;-><init>(Lorg/locationtech/jts/geom/Coordinate;ID)V

    .line 48
    .local v1, "eiNew":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->nodeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 49
    .local v0, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    if-eqz v0, :cond_0

    .line 53
    .end local v0    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :goto_0
    return-object v0

    .line 52
    .restart local v0    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->nodeMap:Ljava/util/Map;

    invoke-interface {v2, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 53
    goto :goto_0
.end method

.method public addEndpoints()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 84
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    iget-object v1, v1, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 85
    .local v0, "maxSegIndex":I
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    iget-object v1, v1, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1, v4, v2, v3}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->add(Lorg/locationtech/jts/geom/Coordinate;ID)Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 86
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    iget-object v1, v1, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->add(Lorg/locationtech/jts/geom/Coordinate;ID)Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 87
    return-void
.end method

.method public addSplitEdges(Ljava/util/List;)V
    .locals 5
    .param p1, "edgeList"    # Ljava/util/List;

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->addEndpoints()V

    .line 102
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 104
    .local v2, "it":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 105
    .local v1, "eiPrev":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 107
    .local v0, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    invoke-virtual {p0, v1, v0}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->createSplitEdge(Lorg/locationtech/jts/geomgraph/EdgeIntersection;Lorg/locationtech/jts/geomgraph/EdgeIntersection;)Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v3

    .line 108
    .local v3, "newEdge":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    move-object v1, v0

    .line 111
    goto :goto_0

    .line 112
    .end local v0    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .end local v3    # "newEdge":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method

.method createSplitEdge(Lorg/locationtech/jts/geomgraph/EdgeIntersection;Lorg/locationtech/jts/geomgraph/EdgeIntersection;)Lorg/locationtech/jts/geomgraph/Edge;
    .locals 12
    .param p1, "ei0"    # Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .param p2, "ei1"    # Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .prologue
    .line 121
    iget v7, p2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    iget v8, p1, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    sub-int/2addr v7, v8

    add-int/lit8 v4, v7, 0x2

    .line 123
    .local v4, "npts":I
    iget-object v7, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    iget-object v7, v7, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget v8, p2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    aget-object v3, v7, v8

    .line 128
    .local v3, "lastSegStartPt":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v8, p2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-gtz v7, :cond_0

    iget-object v7, p2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v7, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 129
    .local v6, "useIntPt1":Z
    :goto_0
    if-nez v6, :cond_1

    .line 130
    add-int/lit8 v4, v4, -0x1

    .line 133
    :cond_1
    new-array v5, v4, [Lorg/locationtech/jts/geom/Coordinate;

    .line 134
    .local v5, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .line 135
    .local v1, "ipt":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ipt":I
    .local v2, "ipt":I
    new-instance v7, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v8, p1, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v7, v8}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v7, v5, v1

    .line 136
    iget v7, p1, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    add-int/lit8 v0, v7, 0x1

    .local v0, "i":I
    move v1, v2

    .end local v2    # "ipt":I
    .restart local v1    # "ipt":I
    :goto_1
    iget v7, p2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    if-gt v0, v7, :cond_3

    .line 137
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ipt":I
    .restart local v2    # "ipt":I
    iget-object v7, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    iget-object v7, v7, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v7, v0

    aput-object v7, v5, v1

    .line 136
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "ipt":I
    .restart local v1    # "ipt":I
    goto :goto_1

    .line 128
    .end local v0    # "i":I
    .end local v1    # "ipt":I
    .end local v5    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v6    # "useIntPt1":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 139
    .restart local v0    # "i":I
    .restart local v1    # "ipt":I
    .restart local v5    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v6    # "useIntPt1":Z
    :cond_3
    if-eqz v6, :cond_4

    iget-object v7, p2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v7, v5, v1

    .line 140
    :cond_4
    new-instance v7, Lorg/locationtech/jts/geomgraph/Edge;

    new-instance v8, Lorg/locationtech/jts/geomgraph/Label;

    iget-object v9, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    iget-object v9, v9, Lorg/locationtech/jts/geomgraph/Edge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-direct {v8, v9}, Lorg/locationtech/jts/geomgraph/Label;-><init>(Lorg/locationtech/jts/geomgraph/Label;)V

    invoke-direct {v7, v5, v8}, Lorg/locationtech/jts/geomgraph/Edge;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    return-object v7
.end method

.method public isIntersection(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 73
    .local v0, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    iget-object v2, v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x1

    .line 76
    .end local v0    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 145
    const-string v2, "Intersections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 148
    .local v0, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->print(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 150
    .end local v0    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :cond_0
    return-void
.end method
