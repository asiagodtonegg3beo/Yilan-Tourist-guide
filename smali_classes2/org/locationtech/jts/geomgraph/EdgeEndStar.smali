.class public abstract Lorg/locationtech/jts/geomgraph/EdgeEndStar;
.super Ljava/lang/Object;
.source "EdgeEndStar.java"


# instance fields
.field protected edgeList:Ljava/util/List;

.field protected edgeMap:Ljava/util/Map;

.field private ptInAreaLocation:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeMap:Ljava/util/Map;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->ptInAreaLocation:[I

    .line 57
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private checkAreaLabelsConsistent(I)Z
    .locals 14
    .param p1, "geomIndex"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 219
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->getEdges()Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, "edges":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v11

    .line 224
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .line 225
    .local v5, "lastEdgeIndex":I
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    invoke-virtual {v10}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v8

    .line 226
    .local v8, "startLabel":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v8, p1, v11}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v9

    .line 227
    .local v9, "startLoc":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    move v10, v11

    :goto_1
    const-string v13, "Found unlabelled area edge"

    invoke-static {v10, v13}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 229
    move v0, v9

    .line 230
    .local v0, "currLoc":I
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 231
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 232
    .local v1, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    .line 234
    .local v4, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v4, p1}, Lorg/locationtech/jts/geomgraph/Label;->isArea(I)Z

    move-result v10

    const-string v13, "Found non-area edge"

    invoke-static {v10, v13}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 235
    invoke-virtual {v4, p1, v11}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v6

    .line 236
    .local v6, "leftLoc":I
    const/4 v10, 0x2

    invoke-virtual {v4, p1, v10}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v7

    .line 240
    .local v7, "rightLoc":I
    if-ne v6, v7, :cond_3

    move v11, v12

    .line 241
    goto :goto_0

    .end local v0    # "currLoc":I
    .end local v1    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "label":Lorg/locationtech/jts/geomgraph/Label;
    .end local v6    # "leftLoc":I
    .end local v7    # "rightLoc":I
    :cond_2
    move v10, v12

    .line 227
    goto :goto_1

    .line 245
    .restart local v0    # "currLoc":I
    .restart local v1    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "label":Lorg/locationtech/jts/geomgraph/Label;
    .restart local v6    # "leftLoc":I
    .restart local v7    # "rightLoc":I
    :cond_3
    if-eq v7, v0, :cond_4

    move v11, v12

    .line 247
    goto :goto_0

    .line 249
    :cond_4
    move v0, v6

    .line 250
    goto :goto_2
.end method

.method private computeEdgeEndLabels(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 3
    .param p1, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 196
    .local v0, "ee":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->computeLabel(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    goto :goto_0

    .line 198
    .end local v0    # "ee":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :cond_0
    return-void
.end method

.method private getLocation(ILorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geomgraph/GeometryGraph;)I
    .locals 2
    .param p1, "geomIndex"    # I
    .param p2, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "geom"    # [Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->ptInAreaLocation:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->ptInAreaLocation:[I

    aget-object v1, p3, p1

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v1

    aput v1, v0, p1

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->ptInAreaLocation:[I

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method public computeLabelling([Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 11
    .param p1, "geomGraph"    # [Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 118
    aget-object v7, p1, v10

    invoke-virtual {v7}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getBoundaryNodeRule()Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->computeEdgeEndLabels(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 122
    invoke-virtual {p0, v10}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->propagateSideLabels(I)V

    .line 125
    invoke-virtual {p0, v8}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->propagateSideLabels(I)V

    .line 158
    new-array v2, v9, [Z

    fill-array-data v2, :array_0

    .line 159
    .local v2, "hasDimensionalCollapseEdge":[Z
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 160
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 161
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    .line 162
    .local v4, "label":Lorg/locationtech/jts/geomgraph/Label;
    const/4 v1, 0x0

    .local v1, "geomi":I
    :goto_0
    if-ge v1, v9, :cond_0

    .line 163
    invoke-virtual {v4, v1}, Lorg/locationtech/jts/geomgraph/Label;->isLine(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v7

    if-ne v7, v8, :cond_1

    .line 164
    aput-boolean v8, v2, v1

    .line 162
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .end local v1    # "geomi":I
    .end local v4    # "label":Lorg/locationtech/jts/geomgraph/Label;
    :cond_2
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 170
    .restart local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    .line 172
    .restart local v4    # "label":Lorg/locationtech/jts/geomgraph/Label;
    const/4 v1, 0x0

    .restart local v1    # "geomi":I
    :goto_1
    if-ge v1, v9, :cond_3

    .line 173
    invoke-virtual {v4, v1}, Lorg/locationtech/jts/geomgraph/Label;->isAnyNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 174
    const/4 v5, -0x1

    .line 175
    .local v5, "loc":I
    aget-boolean v7, v2, v1

    if-eqz v7, :cond_5

    .line 176
    const/4 v5, 0x2

    .line 182
    :goto_2
    invoke-virtual {v4, v1, v5}, Lorg/locationtech/jts/geomgraph/Label;->setAllLocationsIfNull(II)V

    .line 172
    .end local v5    # "loc":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    .restart local v5    # "loc":I
    :cond_5
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 180
    .local v6, "p":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v1, v6, p1}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->getLocation(ILorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geomgraph/GeometryGraph;)I

    move-result v5

    goto :goto_2

    .line 189
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .end local v1    # "geomi":I
    .end local v4    # "label":Lorg/locationtech/jts/geomgraph/Label;
    .end local v5    # "loc":I
    .end local v6    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :cond_6
    return-void

    .line 158
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public findIndex(Lorg/locationtech/jts/geomgraph/EdgeEnd;)I
    .locals 3
    .param p1, "eSearch"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    .line 310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 311
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 312
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    if-ne v0, p1, :cond_0

    .line 314
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 310
    .restart local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 82
    :goto_0
    return-object v2

    .line 81
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 82
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    goto :goto_0
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getEdges()Ljava/util/List;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    return-object v0
.end method

.method public getNextCW(Lorg/locationtech/jts/geomgraph/EdgeEnd;)Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .locals 3
    .param p1, "ee"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->getEdges()Ljava/util/List;

    .line 109
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 110
    .local v0, "i":I
    add-int/lit8 v1, v0, -0x1

    .line 111
    .local v1, "iNextCW":I
    if-nez v0, :cond_0

    .line 112
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 113
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    return-object v2
.end method

.method public abstract insert(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
.end method

.method protected insertEdgeEnd(Lorg/locationtech/jts/geomgraph/EdgeEnd;Ljava/lang/Object;)V
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->edgeList:Ljava/util/List;

    .line 72
    return-void
.end method

.method public isAreaLabelsConsistent(Lorg/locationtech/jts/geomgraph/GeometryGraph;)Z
    .locals 1
    .param p1, "geomGraph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 211
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getBoundaryNodeRule()Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->computeEdgeEndLabels(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->checkAreaLabelsConsistent(I)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->getEdges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 319
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EdgeEndStar:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 322
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->print(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 324
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :cond_0
    return-void
.end method

.method propagateSideLabels(I)V
    .locals 13
    .param p1, "geomIndex"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v11, -0x1

    .line 257
    const/4 v6, -0x1

    .line 261
    .local v6, "startLoc":I
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 263
    .local v1, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    .line 264
    .local v3, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geomgraph/Label;->isArea(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, p1, v8}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 265
    invoke-virtual {v3, p1, v8}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v6

    goto :goto_0

    .line 269
    .end local v1    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .end local v3    # "label":Lorg/locationtech/jts/geomgraph/Label;
    :cond_1
    if-ne v6, v11, :cond_3

    .line 305
    :cond_2
    return-void

    .line 271
    :cond_3
    move v0, v6

    .line 272
    .local v0, "currLoc":I
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 274
    .restart local v1    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    .line 276
    .restart local v3    # "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v3, p1, v9}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 277
    invoke-virtual {v3, p1, v9, v0}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(III)V

    .line 279
    :cond_5
    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geomgraph/Label;->isArea(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 280
    invoke-virtual {v3, p1, v8}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v4

    .line 281
    .local v4, "leftLoc":I
    invoke-virtual {v3, p1, v12}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v5

    .line 283
    .local v5, "rightLoc":I
    if-eq v5, v11, :cond_8

    .line 285
    if-eq v5, v0, :cond_6

    .line 286
    new-instance v7, Lorg/locationtech/jts/geom/TopologyException;

    const-string v8, "side location conflict"

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)V

    throw v7

    .line 287
    :cond_6
    if-ne v4, v11, :cond_7

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found single null side (at "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    .line 290
    :cond_7
    move v0, v4

    goto :goto_1

    .line 299
    :cond_8
    invoke-virtual {v3, p1, v8}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v7

    if-ne v7, v11, :cond_9

    move v7, v8

    :goto_2
    const-string v10, "found single null side"

    invoke-static {v7, v10}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 300
    invoke-virtual {v3, p1, v12, v0}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(III)V

    .line 301
    invoke-virtual {v3, p1, v8, v0}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(III)V

    goto :goto_1

    :cond_9
    move v7, v9

    .line 299
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EdgeEndStar:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 333
    .local v1, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 334
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 336
    .end local v1    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
