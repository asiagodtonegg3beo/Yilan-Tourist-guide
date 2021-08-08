.class public abstract Lorg/locationtech/jts/index/bintree/NodeBase;
.super Ljava/lang/Object;
.source "NodeBase.java"


# instance fields
.field protected items:Ljava/util/List;

.field protected subnode:[Lorg/locationtech/jts/index/bintree/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->items:Ljava/util/List;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/index/bintree/Node;

    iput-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    .line 50
    return-void
.end method

.method public static getSubnodeIndex(Lorg/locationtech/jts/index/bintree/Interval;D)I
    .locals 5
    .param p0, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p1, "centre"    # D

    .prologue
    .line 34
    const/4 v0, -0x1

    .line 35
    .local v0, "subnodeIndex":I
    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    cmpl-double v1, v2, p1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 36
    :cond_0
    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    .line 37
    :cond_1
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addAllItems(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "items"    # Ljava/util/List;

    .prologue
    .line 60
    iget-object v1, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->items:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/index/bintree/Node;->addAllItems(Ljava/util/List;)Ljava/util/List;

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return-object p1
.end method

.method public addAllItemsFromOverlapping(Lorg/locationtech/jts/index/bintree/Interval;Ljava/util/Collection;)V
    .locals 3
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p2, "resultItems"    # Ljava/util/Collection;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/index/bintree/NodeBase;->isSearchMatch(Lorg/locationtech/jts/index/bintree/Interval;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->items:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/index/bintree/Node;->addAllItemsFromOverlapping(Lorg/locationtech/jts/index/bintree/Interval;Ljava/util/Collection;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/index/bintree/Node;->addAllItemsFromOverlapping(Lorg/locationtech/jts/index/bintree/Interval;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method depth()I
    .locals 4

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "maxSubDepth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 142
    iget-object v3, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/locationtech/jts/index/bintree/Node;->depth()I

    move-result v2

    .line 144
    .local v2, "sqd":I
    if-le v2, v1, :cond_0

    .line 145
    move v1, v2

    .line 141
    .end local v2    # "sqd":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    add-int/lit8 v3, v1, 0x1

    return v3
.end method

.method public getItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->items:Ljava/util/List;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    .line 133
    :goto_1
    return v1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->items:Ljava/util/List;

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

.method public isPrunable()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/locationtech/jts/index/bintree/NodeBase;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/locationtech/jts/index/bintree/NodeBase;->hasItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isSearchMatch(Lorg/locationtech/jts/index/bintree/Interval;)Z
.end method

.method nodeSize()I
    .locals 3

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "subSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/index/bintree/Node;->nodeSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public remove(Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/index/bintree/NodeBase;->isSearchMatch(Lorg/locationtech/jts/index/bintree/Interval;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    .line 104
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 105
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 106
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/locationtech/jts/index/bintree/Node;->remove(Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)Z

    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 109
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/locationtech/jts/index/bintree/Node;->isPrunable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 116
    :cond_2
    if-nez v0, :cond_0

    .line 118
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    goto :goto_0

    .line 104
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method size()I
    .locals 3

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "subSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 155
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/index/bintree/Node;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/NodeBase;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method
