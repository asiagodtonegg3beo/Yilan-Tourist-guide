.class public Lorg/locationtech/jts/index/quadtree/Quadtree;
.super Ljava/lang/Object;
.source "Quadtree.java"

# interfaces
.implements Lorg/locationtech/jts/index/SpatialIndex;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x678b60c967a255b4L


# instance fields
.field private minExtent:D

.field private root:Lorg/locationtech/jts/index/quadtree/Root;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->minExtent:D

    .line 104
    new-instance v0, Lorg/locationtech/jts/index/quadtree/Root;

    invoke-direct {v0}, Lorg/locationtech/jts/index/quadtree/Root;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    .line 105
    return-void
.end method

.method private collectStats(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 8
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    const-wide/16 v6, 0x0

    .line 233
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v0

    .line 234
    .local v0, "delX":D
    iget-wide v4, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->minExtent:D

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    cmpl-double v4, v0, v6

    if-lez v4, :cond_0

    .line 235
    iput-wide v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->minExtent:D

    .line 237
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v2

    .line 238
    .local v2, "delY":D
    iget-wide v4, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->minExtent:D

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    cmpl-double v4, v2, v6

    if-lez v4, :cond_1

    .line 239
    iput-wide v2, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->minExtent:D

    .line 240
    :cond_1
    return-void
.end method

.method public static ensureExtent(Lorg/locationtech/jts/geom/Envelope;D)Lorg/locationtech/jts/geom/Envelope;
    .locals 13
    .param p0, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p1, "minExtent"    # D

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 68
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    .line 69
    .local v2, "minx":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    .line 70
    .local v4, "maxx":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    .line 71
    .local v6, "miny":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v8

    .line 73
    .local v8, "maxy":D
    cmpl-double v0, v2, v4

    if-eqz v0, :cond_0

    cmpl-double v0, v6, v8

    if-eqz v0, :cond_0

    .line 84
    .end local p0    # "itemEnv":Lorg/locationtech/jts/geom/Envelope;
    :goto_0
    return-object p0

    .line 76
    .restart local p0    # "itemEnv":Lorg/locationtech/jts/geom/Envelope;
    :cond_0
    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    .line 77
    div-double v0, p1, v10

    sub-double/2addr v2, v0

    .line 78
    div-double v0, p1, v10

    add-double v4, v2, v0

    .line 80
    :cond_1
    cmpl-double v0, v6, v8

    if-nez v0, :cond_2

    .line 81
    div-double v0, p1, v10

    sub-double/2addr v6, v0

    .line 82
    div-double v0, p1, v10

    add-double v8, v6, v0

    .line 84
    :cond_2
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public depth()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/Root;->depth()I

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V
    .locals 4
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/quadtree/Quadtree;->collectStats(Lorg/locationtech/jts/geom/Envelope;)V

    .line 144
    iget-wide v2, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->minExtent:D

    invoke-static {p1, v2, v3}, Lorg/locationtech/jts/index/quadtree/Quadtree;->ensureExtent(Lorg/locationtech/jts/geom/Envelope;D)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 145
    .local v0, "insertEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    invoke-virtual {v1, v0, p2}, Lorg/locationtech/jts/index/quadtree/Root;->insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;
    .locals 2
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 194
    new-instance v0, Lorg/locationtech/jts/index/ArrayListVisitor;

    invoke-direct {v0}, Lorg/locationtech/jts/index/ArrayListVisitor;-><init>()V

    .line 195
    .local v0, "visitor":Lorg/locationtech/jts/index/ArrayListVisitor;
    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/index/quadtree/Quadtree;->query(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V

    .line 196
    invoke-virtual {v0}, Lorg/locationtech/jts/index/ArrayListVisitor;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public query(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V
    .locals 1
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 218
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/index/quadtree/Root;->visit(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V

    .line 219
    return-void
.end method

.method public queryAll()Ljava/util/List;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "foundItems":Ljava/util/List;
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/index/quadtree/Root;->addAllItems(Ljava/util/List;)Ljava/util/List;

    .line 228
    return-object v0
.end method

.method public remove(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 157
    iget-wide v2, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->minExtent:D

    invoke-static {p1, v2, v3}, Lorg/locationtech/jts/index/quadtree/Quadtree;->ensureExtent(Lorg/locationtech/jts/geom/Envelope;D)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 158
    .local v0, "posEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    invoke-virtual {v1, v0, p2}, Lorg/locationtech/jts/index/quadtree/Root;->remove(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Quadtree;->root:Lorg/locationtech/jts/index/quadtree/Root;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/Root;->size()I

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
