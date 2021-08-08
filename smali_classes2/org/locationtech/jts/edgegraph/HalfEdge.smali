.class public Lorg/locationtech/jts/edgegraph/HalfEdge;
.super Ljava/lang/Object;
.source "HalfEdge.java"


# instance fields
.field private next:Lorg/locationtech/jts/edgegraph/HalfEdge;

.field private orig:Lorg/locationtech/jts/geom/Coordinate;

.field private sym:Lorg/locationtech/jts/edgegraph/HalfEdge;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "orig"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    .line 93
    return-void
.end method

.method public static create(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 2
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 54
    new-instance v0, Lorg/locationtech/jts/edgegraph/HalfEdge;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 55
    .local v0, "e0":Lorg/locationtech/jts/edgegraph/HalfEdge;
    new-instance v1, Lorg/locationtech/jts/edgegraph/HalfEdge;

    invoke-direct {v1, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 56
    .local v1, "e1":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->init(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 57
    return-object v0
.end method

.method public static init(Lorg/locationtech/jts/edgegraph/HalfEdge;Lorg/locationtech/jts/edgegraph/HalfEdge;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 2
    .param p0, "e0"    # Lorg/locationtech/jts/edgegraph/HalfEdge;
    .param p1, "e1"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->next:Lorg/locationtech/jts/edgegraph/HalfEdge;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/locationtech/jts/edgegraph/HalfEdge;->next:Lorg/locationtech/jts/edgegraph/HalfEdge;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Edges are already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->init(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 79
    return-object p0
.end method

.method private insertAfter(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 3
    .param p1, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 237
    iget-object v1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/locationtech/jts/util/Assert;->equals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->oNext()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    .line 239
    .local v0, "save":Lorg/locationtech/jts/edgegraph/HalfEdge;
    iget-object v1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->setNext(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 240
    invoke-virtual {p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->setNext(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 241
    return-void
.end method

.method private setSym(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 0
    .param p1, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 135
    return-void
.end method


# virtual methods
.method public compareAngularDirection(Lorg/locationtech/jts/edgegraph/HalfEdge;)I
    .locals 17
    .param p1, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 280
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->deltaX()D

    move-result-wide v2

    .line 281
    .local v2, "dx":D
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->deltaY()D

    move-result-wide v6

    .line 282
    .local v6, "dy":D
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->deltaX()D

    move-result-wide v4

    .line 283
    .local v4, "dx2":D
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->deltaY()D

    move-result-wide v8

    .line 286
    .local v8, "dy2":D
    cmpl-double v14, v2, v4

    if-nez v14, :cond_0

    cmpl-double v14, v6, v8

    if-nez v14, :cond_0

    .line 287
    const/4 v14, 0x0

    .line 298
    :goto_0
    return v14

    .line 289
    :cond_0
    invoke-static {v2, v3, v6, v7}, Lorg/locationtech/jts/geomgraph/Quadrant;->quadrant(DD)I

    move-result v14

    int-to-double v10, v14

    .line 290
    .local v10, "quadrant":D
    invoke-static {v4, v5, v8, v9}, Lorg/locationtech/jts/geomgraph/Quadrant;->quadrant(DD)I

    move-result v14

    int-to-double v12, v14

    .line 293
    .local v12, "quadrant2":D
    cmpl-double v14, v10, v12

    if-lez v14, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    .line 294
    :cond_1
    cmpg-double v14, v10, v12

    if-gez v14, :cond_2

    const/4 v14, -0x1

    goto :goto_0

    .line 298
    :cond_2
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->dest()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->dest()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v14

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 250
    move-object v1, p1

    check-cast v1, Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 251
    .local v1, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->compareAngularDirection(Lorg/locationtech/jts/edgegraph/HalfEdge;)I

    move-result v0

    .line 252
    .local v0, "comp":I
    return v0
.end method

.method public degree()I
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "degree":I
    move-object v1, p0

    .line 339
    .local v1, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 340
    invoke-virtual {v1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->oNext()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v1

    .line 341
    if-ne v1, p0, :cond_0

    .line 342
    return v0
.end method

.method public deltaX()D
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    iget-object v0, v0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v2, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public deltaY()D
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    iget-object v0, v0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v2, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public dest()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    iget-object v0, v0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public equals(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 1
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    iget-object v0, v0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 3
    .param p1, "dest"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v1, 0x0

    .line 178
    move-object v0, p0

    .line 180
    .local v0, "oNext":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_0
    if-nez v0, :cond_1

    .line 185
    :goto_0
    return-object v1

    .line 181
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->dest()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 182
    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->oNext()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    .line 184
    if-ne v0, p0, :cond_0

    goto :goto_0
.end method

.method protected init(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 0
    .param p1, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->setSym(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 98
    invoke-direct {p1, p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->setSym(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 100
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->setNext(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 101
    invoke-virtual {p1, p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->setNext(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 102
    return-void
.end method

.method public insert(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 5
    .param p1, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->oNext()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->insertAfter(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 227
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 216
    .local v2, "ecmp":I
    move-object v1, p0

    .line 218
    .local v1, "ePrev":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->oNext()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v3

    .line 219
    .local v3, "oNext":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-virtual {v3, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 220
    .local v0, "cmp":I
    if-ne v0, v2, :cond_2

    if-ne v3, p0, :cond_3

    .line 221
    :cond_2
    invoke-direct {v1, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->insertAfter(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    goto :goto_0

    .line 224
    :cond_3
    move-object v1, v3

    .line 225
    if-ne v1, p0, :cond_1

    .line 226
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    goto :goto_0
.end method

.method public next()Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->next:Lorg/locationtech/jts/edgegraph/HalfEdge;

    return-object v0
.end method

.method public oNext()Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    iget-object v0, v0, Lorg/locationtech/jts/edgegraph/HalfEdge;->next:Lorg/locationtech/jts/edgegraph/HalfEdge;

    return-object v0
.end method

.method public orig()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public prev()Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->next()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    iget-object v0, v0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    return-object v0
.end method

.method public prevNode()Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 3

    .prologue
    .line 354
    move-object v0, p0

    .line 355
    .local v0, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->degree()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 356
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->prev()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    .line 357
    if-ne v0, p0, :cond_0

    .line 358
    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public setNext(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 0
    .param p1, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->next:Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 162
    return-void
.end method

.method public sym()Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    iget-object v1, v1, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym:Lorg/locationtech/jts/edgegraph/HalfEdge;

    iget-object v1, v1, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
