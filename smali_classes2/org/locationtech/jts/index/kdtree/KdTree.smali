.class public Lorg/locationtech/jts/index/kdtree/KdTree;
.super Ljava/lang/Object;
.source "KdTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;
    }
.end annotation


# instance fields
.field private numberOfNodes:J

.field private root:Lorg/locationtech/jts/index/kdtree/KdNode;

.field private tolerance:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/index/kdtree/KdTree;-><init>(D)V

    .line 89
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 100
    iput-wide p1, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->tolerance:D

    .line 101
    return-void
.end method

.method private findBestMatchNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/index/kdtree/KdNode;
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 171
    new-instance v0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;

    iget-wide v2, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->tolerance:D

    invoke-direct {v0, p1, v2, v3}, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;-><init>(Lorg/locationtech/jts/geom/Coordinate;D)V

    .line 172
    .local v0, "visitor":Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->queryEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/locationtech/jts/index/kdtree/KdTree;->query(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/kdtree/KdNodeVisitor;)V

    .line 173
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->getNode()Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v1

    return-object v1
.end method

.method private insertExact(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)Lorg/locationtech/jts/index/kdtree/KdNode;
    .locals 12
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 227
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 228
    .local v0, "currentNode":Lorg/locationtech/jts/index/kdtree/KdNode;
    iget-object v4, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 229
    .local v4, "leafNode":Lorg/locationtech/jts/index/kdtree/KdNode;
    const/4 v3, 0x1

    .line 230
    .local v3, "isOddLevel":Z
    const/4 v2, 0x1

    .line 236
    .local v2, "isLessThan":Z
    :goto_0
    if-eqz v0, :cond_7

    .line 238
    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    iget-wide v10, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->tolerance:D

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    move v1, v6

    .line 243
    .local v1, "isInTolerance":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->increment()V

    .line 272
    .end local v0    # "currentNode":Lorg/locationtech/jts/index/kdtree/KdNode;
    .end local v1    # "isInTolerance":Z
    :goto_2
    return-object v0

    .restart local v0    # "currentNode":Lorg/locationtech/jts/index/kdtree/KdNode;
    :cond_0
    move v1, v7

    .line 239
    goto :goto_1

    .line 249
    :cond_1
    if-eqz v3, :cond_3

    .line 250
    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->getX()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    move v2, v6

    .line 254
    :goto_3
    move-object v4, v0

    .line 255
    if-eqz v2, :cond_5

    .line 256
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->getLeft()Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v0

    .line 261
    :goto_4
    if-nez v3, :cond_6

    move v3, v6

    :goto_5
    goto :goto_0

    :cond_2
    move v2, v7

    .line 250
    goto :goto_3

    .line 252
    :cond_3
    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->getY()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    move v2, v6

    :goto_6
    goto :goto_3

    :cond_4
    move v2, v7

    goto :goto_6

    .line 258
    :cond_5
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->getRight()Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v0

    goto :goto_4

    :cond_6
    move v3, v7

    .line 261
    goto :goto_5

    .line 265
    :cond_7
    iget-wide v6, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->numberOfNodes:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->numberOfNodes:J

    .line 266
    new-instance v5, Lorg/locationtech/jts/index/kdtree/KdNode;

    invoke-direct {v5, p1, p2}, Lorg/locationtech/jts/index/kdtree/KdNode;-><init>(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    .line 267
    .local v5, "node":Lorg/locationtech/jts/index/kdtree/KdNode;
    if-eqz v2, :cond_8

    .line 268
    invoke-virtual {v4, v5}, Lorg/locationtech/jts/index/kdtree/KdNode;->setLeft(Lorg/locationtech/jts/index/kdtree/KdNode;)V

    :goto_7
    move-object v0, v5

    .line 272
    goto :goto_2

    .line 270
    :cond_8
    invoke-virtual {v4, v5}, Lorg/locationtech/jts/index/kdtree/KdNode;->setRight(Lorg/locationtech/jts/index/kdtree/KdNode;)V

    goto :goto_7
.end method

.method private queryNode(Lorg/locationtech/jts/index/kdtree/KdNode;Lorg/locationtech/jts/geom/Envelope;ZLorg/locationtech/jts/index/kdtree/KdNodeVisitor;)V
    .locals 10
    .param p1, "currentNode"    # Lorg/locationtech/jts/index/kdtree/KdNode;
    .param p2, "queryEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p3, "odd"    # Z
    .param p4, "visitor"    # Lorg/locationtech/jts/index/kdtree/KdNodeVisitor;

    .prologue
    .line 277
    if-nez p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-eqz p3, :cond_4

    .line 284
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    .line 285
    .local v4, "min":D
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    .line 286
    .local v2, "max":D
    invoke-virtual {p1}, Lorg/locationtech/jts/index/kdtree/KdNode;->getX()D

    move-result-wide v0

    .line 292
    .local v0, "discriminant":D
    :goto_1
    cmpg-double v8, v4, v0

    if-gez v8, :cond_5

    const/4 v6, 0x1

    .line 293
    .local v6, "searchLeft":Z
    :goto_2
    cmpg-double v8, v0, v2

    if-gtz v8, :cond_6

    const/4 v7, 0x1

    .line 296
    .local v7, "searchRight":Z
    :goto_3
    if-eqz v6, :cond_2

    .line 297
    invoke-virtual {p1}, Lorg/locationtech/jts/index/kdtree/KdNode;->getLeft()Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v9

    if-nez p3, :cond_7

    const/4 v8, 0x1

    :goto_4
    invoke-direct {p0, v9, p2, v8, p4}, Lorg/locationtech/jts/index/kdtree/KdTree;->queryNode(Lorg/locationtech/jts/index/kdtree/KdNode;Lorg/locationtech/jts/geom/Envelope;ZLorg/locationtech/jts/index/kdtree/KdNodeVisitor;)V

    .line 299
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/index/kdtree/KdNode;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    invoke-virtual {p2, v8}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 300
    invoke-interface {p4, p1}, Lorg/locationtech/jts/index/kdtree/KdNodeVisitor;->visit(Lorg/locationtech/jts/index/kdtree/KdNode;)V

    .line 302
    :cond_3
    if-eqz v7, :cond_0

    .line 303
    invoke-virtual {p1}, Lorg/locationtech/jts/index/kdtree/KdNode;->getRight()Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v9

    if-nez p3, :cond_8

    const/4 v8, 0x1

    :goto_5
    invoke-direct {p0, v9, p2, v8, p4}, Lorg/locationtech/jts/index/kdtree/KdTree;->queryNode(Lorg/locationtech/jts/index/kdtree/KdNode;Lorg/locationtech/jts/geom/Envelope;ZLorg/locationtech/jts/index/kdtree/KdNodeVisitor;)V

    goto :goto_0

    .line 288
    .end local v0    # "discriminant":D
    .end local v2    # "max":D
    .end local v4    # "min":D
    .end local v6    # "searchLeft":Z
    .end local v7    # "searchRight":Z
    :cond_4
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    .line 289
    .restart local v4    # "min":D
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    .line 290
    .restart local v2    # "max":D
    invoke-virtual {p1}, Lorg/locationtech/jts/index/kdtree/KdNode;->getY()D

    move-result-wide v0

    .restart local v0    # "discriminant":D
    goto :goto_1

    .line 292
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 293
    .restart local v6    # "searchLeft":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 297
    .restart local v7    # "searchRight":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 303
    :cond_8
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public static toCoordinates(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p0, "kdnodes"    # Ljava/util/Collection;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/locationtech/jts/index/kdtree/KdTree;->toCoordinates(Ljava/util/Collection;Z)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public static toCoordinates(Ljava/util/Collection;Z)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 7
    .param p0, "kdnodes"    # Ljava/util/Collection;
    .param p1, "includeRepeated"    # Z

    .prologue
    const/4 v5, 0x1

    .line 68
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 69
    .local v0, "coord":Lorg/locationtech/jts/geom/CoordinateList;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 71
    .local v4, "node":Lorg/locationtech/jts/index/kdtree/KdNode;
    if-eqz p1, :cond_1

    invoke-virtual {v4}, Lorg/locationtech/jts/index/kdtree/KdNode;->getCount()I

    move-result v1

    .line 72
    .local v1, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 73
    invoke-virtual {v4}, Lorg/locationtech/jts/index/kdtree/KdNode;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    move v1, v5

    .line 71
    goto :goto_0

    .line 76
    .end local v4    # "node":Lorg/locationtech/jts/index/kdtree/KdNode;
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public insert(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/index/kdtree/KdNode;
    .locals 1
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/index/kdtree/KdTree;->insert(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)Lorg/locationtech/jts/index/kdtree/KdNode;
    .locals 6
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lorg/locationtech/jts/index/kdtree/KdNode;

    invoke-direct {v1, p1, p2}, Lorg/locationtech/jts/index/kdtree/KdNode;-><init>(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 139
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 155
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-wide v2, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->tolerance:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 147
    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/kdtree/KdTree;->findBestMatchNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v0

    .line 148
    .local v0, "matchNode":Lorg/locationtech/jts/index/kdtree/KdNode;
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->increment()V

    goto :goto_0

    .line 155
    .end local v0    # "matchNode":Lorg/locationtech/jts/index/kdtree/KdNode;
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/index/kdtree/KdTree;->insertExact(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;
    .locals 1
    .param p1, "queryEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, "result":Ljava/util/List;
    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/index/kdtree/KdTree;->query(Lorg/locationtech/jts/geom/Envelope;Ljava/util/List;)V

    .line 329
    return-object v0
.end method

.method public query(Lorg/locationtech/jts/geom/Envelope;Ljava/util/List;)V
    .locals 3
    .param p1, "queryEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "result"    # Ljava/util/List;

    .prologue
    .line 341
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    const/4 v1, 0x1

    new-instance v2, Lorg/locationtech/jts/index/kdtree/KdTree$1;

    invoke-direct {v2, p0, p2}, Lorg/locationtech/jts/index/kdtree/KdTree$1;-><init>(Lorg/locationtech/jts/index/kdtree/KdTree;Ljava/util/List;)V

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/locationtech/jts/index/kdtree/KdTree;->queryNode(Lorg/locationtech/jts/index/kdtree/KdNode;Lorg/locationtech/jts/geom/Envelope;ZLorg/locationtech/jts/index/kdtree/KdNodeVisitor;)V

    .line 348
    return-void
.end method

.method public query(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/kdtree/KdNodeVisitor;)V
    .locals 2
    .param p1, "queryEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "visitor"    # Lorg/locationtech/jts/index/kdtree/KdNodeVisitor;

    .prologue
    .line 316
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree;->root:Lorg/locationtech/jts/index/kdtree/KdNode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/locationtech/jts/index/kdtree/KdTree;->queryNode(Lorg/locationtech/jts/index/kdtree/KdNode;Lorg/locationtech/jts/geom/Envelope;ZLorg/locationtech/jts/index/kdtree/KdNodeVisitor;)V

    .line 317
    return-void
.end method
