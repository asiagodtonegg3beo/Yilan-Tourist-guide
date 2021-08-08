.class public abstract Lorg/locationtech/jts/index/quadtree/NodeBase;
.super Ljava/lang/Object;
.source "NodeBase.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected items:Ljava/util/List;

.field protected subnode:[Lorg/locationtech/jts/index/quadtree/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/locationtech/jts/index/quadtree/Node;

    iput-object v0, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    .line 67
    return-void
.end method

.method public static getSubnodeIndex(Lorg/locationtech/jts/geom/Envelope;DD)I
    .locals 5
    .param p0, "env"    # Lorg/locationtech/jts/geom/Envelope;
    .param p1, "centrex"    # D
    .param p3, "centrey"    # D

    .prologue
    .line 42
    const/4 v0, -0x1

    .line 43
    .local v0, "subnodeIndex":I
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    cmpl-double v1, v2, p1

    if-ltz v1, :cond_1

    .line 44
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    cmpl-double v1, v2, p3

    if-ltz v1, :cond_0

    const/4 v0, 0x3

    .line 45
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    cmpg-double v1, v2, p3

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    .line 47
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_3

    .line 48
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    cmpl-double v1, v2, p3

    if-ltz v1, :cond_2

    const/4 v0, 0x2

    .line 49
    :cond_2
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    cmpg-double v1, v2, p3

    if-gtz v1, :cond_3

    const/4 v0, 0x0

    .line 51
    :cond_3
    return v0
.end method

.method private visitItems(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V
    .locals 2
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 190
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/locationtech/jts/index/ItemVisitor;->visitItem(Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public addAllItems(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "resultItems"    # Ljava/util/List;

    .prologue
    .line 145
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/index/quadtree/Node;->addAllItems(Ljava/util/List;)Ljava/util/List;

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-object p1
.end method

.method public addAllItemsFromOverlapping(Lorg/locationtech/jts/geom/Envelope;Ljava/util/List;)V
    .locals 2
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "resultItems"    # Ljava/util/List;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/index/quadtree/NodeBase;->isSearchMatch(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/locationtech/jts/index/quadtree/Node;->addAllItemsFromOverlapping(Lorg/locationtech/jts/geom/Envelope;Ljava/util/List;)V

    .line 164
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method depth()I
    .locals 4

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "maxSubDepth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 201
    iget-object v3, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/locationtech/jts/index/quadtree/Node;->depth()I

    move-result v2

    .line 203
    .local v2, "sqd":I
    if-le v2, v1, :cond_0

    .line 204
    move v1, v2

    .line 200
    .end local v2    # "sqd":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    add-int/lit8 v3, v1, 0x1

    return v3
.end method

.method public getItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    return-object v0
.end method

.method getNodeCount()I
    .locals 3

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "subSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 225
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/index/quadtree/Node;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public hasChildren()Z
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 123
    :goto_1
    return v1

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 128
    const/4 v1, 0x1

    .line 129
    .local v1, "isEmpty":Z
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 130
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 131
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/index/quadtree/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    const/4 v1, 0x0

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    return v1
.end method

.method public isPrunable()Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/locationtech/jts/index/quadtree/NodeBase;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/locationtech/jts/index/quadtree/NodeBase;->hasItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isSearchMatch(Lorg/locationtech/jts/geom/Envelope;)Z
.end method

.method public remove(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/index/quadtree/NodeBase;->isSearchMatch(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const/4 v0, 0x0

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 95
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 96
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/locationtech/jts/index/quadtree/Node;->remove(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)Z

    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 99
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/locationtech/jts/index/quadtree/Node;->isPrunable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 106
    :cond_2
    if-nez v0, :cond_0

    .line 108
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    goto :goto_0

    .line 94
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method size()I
    .locals 3

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "subSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 214
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/index/quadtree/Node;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public visit(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V
    .locals 2
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/index/quadtree/NodeBase;->isSearchMatch(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/index/quadtree/NodeBase;->visitItems(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/NodeBase;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/locationtech/jts/index/quadtree/Node;->visit(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V

    .line 180
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
