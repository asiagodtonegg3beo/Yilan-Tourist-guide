.class public Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
.super Ljava/lang/Object;
.source "QuadEdge.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private next:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

.field private rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

.field private vertex:Lorg/locationtech/jts/triangulate/quadedge/Vertex;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->data:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public static connect(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 3
    .param p0, "a"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p1, "b"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 81
    .local v0, "e":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 82
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 83
    return-object v0
.end method

.method public static makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 5
    .param p0, "o"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p1, "d"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 50
    new-instance v1, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-direct {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;-><init>()V

    .line 51
    .local v1, "q0":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    new-instance v2, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-direct {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;-><init>()V

    .line 52
    .local v2, "q1":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    new-instance v3, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-direct {v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;-><init>()V

    .line 53
    .local v3, "q2":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    new-instance v4, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-direct {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;-><init>()V

    .line 55
    .local v4, "q3":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    iput-object v2, v1, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 56
    iput-object v3, v2, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 57
    iput-object v4, v3, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 58
    iput-object v1, v4, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 60
    invoke-virtual {v1, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 61
    invoke-virtual {v2, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 62
    invoke-virtual {v3, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 63
    invoke-virtual {v4, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 65
    move-object v0, v1

    .line 66
    .local v0, "base":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setOrig(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)V

    .line 67
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setDest(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)V

    .line 68
    return-object v0
.end method

.method public static splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 7
    .param p0, "a"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p1, "b"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 101
    .local v0, "alpha":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 103
    .local v1, "beta":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    .line 104
    .local v2, "t1":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    .line 105
    .local v3, "t2":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v4

    .line 106
    .local v4, "t3":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    .line 108
    .local v5, "t4":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 109
    invoke-virtual {p1, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 110
    invoke-virtual {v0, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 111
    invoke-virtual {v1, v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 112
    return-void
.end method

.method public static swap(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 4
    .param p0, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 121
    .local v0, "a":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 122
    .local v1, "b":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-static {p0, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 123
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 124
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 125
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 126
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setOrig(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)V

    .line 127
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setDest(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)V

    .line 128
    return-void
.end method


# virtual methods
.method public final dNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public final dPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->invRot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->invRot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 190
    return-void
.end method

.method public final dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    return-object v0
.end method

.method public equalsNonOriented(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z
    .locals 2
    .param p1, "qe"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    const/4 v0, 0x1

    .line 371
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->equalsOriented(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->equalsOriented(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsOriented(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z
    .locals 2
    .param p1, "qe"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 386
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPrimary()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 159
    .end local p0    # "this":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object p0

    goto :goto_0
.end method

.method public final invRot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->invRot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public final lPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->next:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public final oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->next:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    return-object v0
.end method

.method public final oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    iget-object v0, v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->next:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    iget-object v0, v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    return-object v0
.end method

.method public final orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->vertex:Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    return-object v0
.end method

.method public final rNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    iget-object v0, v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->next:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->invRot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public final rPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public final rot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->data:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method setDest(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)V
    .locals 1
    .param p1, "d"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setOrig(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)V

    .line 334
    return-void
.end method

.method public setNext(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 0
    .param p1, "next"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 208
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->next:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 209
    return-void
.end method

.method setOrig(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)V
    .locals 0
    .param p1, "o"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 324
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->vertex:Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .line 325
    return-void
.end method

.method public final sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    iget-object v0, v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    return-object v0
.end method

.method public toLineSegment()Lorg/locationtech/jts/geom/LineSegment;
    .locals 3

    .prologue
    .line 400
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->vertex:Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->vertex:Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 411
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 412
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v0, v1}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
