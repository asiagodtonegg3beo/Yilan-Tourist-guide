.class Lorg/locationtech/jts/operation/polygonize/EdgeRing;
.super Ljava/lang/Object;
.source "EdgeRing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/operation/polygonize/EdgeRing$EnvelopeComparator;
    }
.end annotation


# instance fields
.field private deList:Ljava/util/List;

.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private holes:Ljava/util/List;

.field private isHole:Z

.field private isIncluded:Z

.field private isIncludedSet:Z

.field private isProcessed:Z

.field private lowestEdge:Lorg/locationtech/jts/planargraph/DirectedEdge;

.field private ring:Lorg/locationtech/jts/geom/LinearRing;

.field private ringPts:[Lorg/locationtech/jts/geom/Coordinate;

.field private shell:Lorg/locationtech/jts/operation/polygonize/EdgeRing;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 3
    .param p1, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->deList:Ljava/util/List;

    .line 156
    iput-object v2, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->lowestEdge:Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 159
    iput-object v2, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    .line 161
    iput-object v2, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 165
    iput-boolean v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isProcessed:Z

    .line 166
    iput-boolean v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncludedSet:Z

    .line 167
    iput-boolean v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncluded:Z

    .line 171
    iput-object p1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 172
    return-void
.end method

.method private add(Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 1
    .param p1, "de"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->deList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method private static addEdge([Lorg/locationtech/jts/geom/Coordinate;ZLorg/locationtech/jts/geom/CoordinateList;)V
    .locals 3
    .param p0, "coords"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "isForward"    # Z
    .param p2, "coordList"    # Lorg/locationtech/jts/geom/CoordinateList;

    .prologue
    const/4 v2, 0x0

    .line 334
    if-eqz p1, :cond_0

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 336
    aget-object v1, p0, v0

    invoke-virtual {p2, v1, v2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 341
    aget-object v1, p0, v0

    invoke-virtual {p2, v1, v2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 340
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 344
    :cond_1
    return-void
.end method

.method public static findDirEdgesInRing(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)Ljava/util/List;
    .locals 6
    .param p0, "startDE"    # Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    move-object v0, p0

    .line 143
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "edges":Ljava/util/List;
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getNext()Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    const-string v5, "found null DE in ring"

    invoke-static {v2, v5}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 148
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isInRing()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move v2, v3

    :goto_1
    const-string v5, "found DE already in ring"

    invoke-static {v2, v5}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 149
    if-ne v0, p0, :cond_0

    .line 150
    return-object v1

    :cond_2
    move v2, v4

    .line 147
    goto :goto_0

    :cond_3
    move v2, v4

    .line 148
    goto :goto_1
.end method

.method public static findEdgeRingContaining(Lorg/locationtech/jts/operation/polygonize/EdgeRing;Ljava/util/List;)Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .locals 12
    .param p0, "testEr"    # Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .param p1, "shellList"    # Ljava/util/List;

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v6

    .line 62
    .local v6, "testRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v6}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    .line 63
    .local v4, "testEnv":Lorg/locationtech/jts/geom/Envelope;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 65
    .local v5, "testPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .line 66
    .local v2, "minShell":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    const/4 v3, 0x0

    .line 67
    .local v3, "minShellEnv":Lorg/locationtech/jts/geom/Envelope;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 69
    .local v7, "tryShell":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-virtual {v7}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v9

    .line 70
    .local v9, "tryShellRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v9}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v8

    .line 73
    .local v8, "tryShellEnv":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v8, v4}, Lorg/locationtech/jts/geom/Envelope;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 75
    invoke-virtual {v8, v4}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 77
    invoke-virtual {v6}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v10

    invoke-virtual {v9}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/locationtech/jts/geom/CoordinateArrays;->ptNotInList([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "isContained":Z
    invoke-virtual {v9}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v10

    invoke-static {v5, v10}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 80
    const/4 v0, 0x1

    .line 83
    :cond_1
    if-eqz v0, :cond_0

    .line 84
    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v3, v8}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 86
    :cond_2
    move-object v2, v7

    .line 87
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v10

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    goto :goto_0

    .line 91
    .end local v0    # "isContained":Z
    .end local v7    # "tryShell":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .end local v8    # "tryShellEnv":Lorg/locationtech/jts/geom/Envelope;
    .end local v9    # "tryShellRing":Lorg/locationtech/jts/geom/LinearRing;
    :cond_3
    return-object v2
.end method

.method private getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 6

    .prologue
    .line 288
    iget-object v4, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    if-nez v4, :cond_1

    .line 289
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 290
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    iget-object v4, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->deList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 292
    .local v1, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;

    .line 293
    .local v2, "edge":Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;->getLine()Lorg/locationtech/jts/geom/LineString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdgeDirection()Z

    move-result v5

    invoke-static {v4, v5, v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->addEdge([Lorg/locationtech/jts/geom/Coordinate;ZLorg/locationtech/jts/geom/CoordinateList;)V

    goto :goto_0

    .line 295
    .end local v1    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .end local v2    # "edge":Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    iput-object v4, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 297
    .end local v0    # "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v4
.end method

.method public static isInList(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p0, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 126
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 129
    :goto_1
    return v1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static ptNotInList([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p0, "testPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 106
    aget-object v1, p0, v0

    .line 107
    .local v1, "testPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v1, p1}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isInList(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    .end local v1    # "testPt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return-object v1

    .line 105
    .restart local v1    # "testPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "testPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addHole(Lorg/locationtech/jts/geom/LinearRing;)V
    .locals 1
    .param p1, "hole"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public addHole(Lorg/locationtech/jts/operation/polygonize/EdgeRing;)V
    .locals 2
    .param p1, "holeER"    # Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .prologue
    .line 229
    invoke-virtual {p1, p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->setShell(Lorg/locationtech/jts/operation/polygonize/EdgeRing;)V

    .line 230
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    .line 231
    .local v0, "hole":Lorg/locationtech/jts/geom/LinearRing;
    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    .line 233
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public build(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V
    .locals 5
    .param p1, "startDE"    # Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    move-object v0, p1

    .line 177
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_0
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->add(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 178
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setRing(Lorg/locationtech/jts/operation/polygonize/EdgeRing;)V

    .line 179
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getNext()Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    const-string v4, "found null DE in ring"

    invoke-static {v1, v4}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 181
    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isInRing()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move v1, v2

    :goto_1
    const-string v4, "found DE already in ring"

    invoke-static {v1, v4}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 182
    if-ne v0, p1, :cond_0

    .line 183
    return-void

    :cond_2
    move v1, v3

    .line 180
    goto :goto_0

    :cond_3
    move v1, v3

    .line 181
    goto :goto_1
.end method

.method public computeHole()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    .line 211
    .local v0, "ring":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-static {v1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isHole:Z

    .line 212
    return-void
.end method

.method public getLineString()Lorg/locationtech/jts/geom/LineString;
    .locals 2

    .prologue
    .line 309
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    .line 310
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public getOuterHole()Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isHole()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v4

    .line 405
    :cond_0
    :goto_0
    return-object v0

    .line 400
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->deList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 401
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->deList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 402
    .local v1, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getRing()Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    move-result-object v0

    .line 403
    .local v0, "adjRing":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isOuterHole()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "adjRing":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .end local v1    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_2
    move-object v0, v4

    .line 405
    goto :goto_0
.end method

.method public getPolygon()Lorg/locationtech/jts/geom/Polygon;
    .locals 5

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "holeLR":[Lorg/locationtech/jts/geom/LinearRing;
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Lorg/locationtech/jts/geom/LinearRing;

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 247
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->holes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/LinearRing;

    aput-object v3, v0, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v4, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v3, v4, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    .line 251
    .local v2, "poly":Lorg/locationtech/jts/geom/Polygon;
    return-object v2
.end method

.method public getRing()Lorg/locationtech/jts/geom/LinearRing;
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    .line 329
    :goto_0
    return-object v1

    .line 321
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    .line 322
    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 324
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v2, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    iput-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_1
    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getShell()Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isHole()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->shell:Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 371
    .end local p0    # "this":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    :cond_0
    return-object p0
.end method

.method public hasShell()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->shell:Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHole()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isHole:Z

    return v0
.end method

.method public isIncluded()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncluded:Z

    return v0
.end method

.method public isIncludedSet()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncludedSet:Z

    return v0
.end method

.method public isOuterHole()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 380
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isHole:Z

    if-nez v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->hasShell()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOuterShell()Z
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getOuterHole()Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProcessed()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isProcessed:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    .line 262
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ringPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getRing()Lorg/locationtech/jts/geom/LinearRing;

    .line 264
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LinearRing;->isValid()Z

    move-result v0

    goto :goto_0
.end method

.method public setIncluded(Z)V
    .locals 1
    .param p1, "isIncluded"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncluded:Z

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncludedSet:Z

    .line 278
    return-void
.end method

.method public setProcessed(Z)V
    .locals 0
    .param p1, "isProcessed"    # Z

    .prologue
    .line 446
    iput-boolean p1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isProcessed:Z

    .line 447
    return-void
.end method

.method public setShell(Lorg/locationtech/jts/operation/polygonize/EdgeRing;)V
    .locals 0
    .param p1, "shell"    # Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .prologue
    .line 352
    iput-object p1, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->shell:Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 353
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;

    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-static {v0}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIncluded()V
    .locals 4

    .prologue
    .line 413
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isHole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->deList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 415
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->deList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 416
    .local v1, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getRing()Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getShell()Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    move-result-object v0

    .line 418
    .local v0, "adjShell":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncludedSet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncluded()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0, v3}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->setIncluded(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 414
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
