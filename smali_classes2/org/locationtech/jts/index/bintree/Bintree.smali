.class public Lorg/locationtech/jts/index/bintree/Bintree;
.super Ljava/lang/Object;
.source "Bintree.java"


# instance fields
.field private minExtent:D

.field private root:Lorg/locationtech/jts/index/bintree/Root;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->minExtent:D

    .line 86
    new-instance v0, Lorg/locationtech/jts/index/bintree/Root;

    invoke-direct {v0}, Lorg/locationtech/jts/index/bintree/Root;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    .line 87
    return-void
.end method

.method private collectStats(Lorg/locationtech/jts/index/bintree/Interval;)V
    .locals 4
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 185
    invoke-virtual {p1}, Lorg/locationtech/jts/index/bintree/Interval;->getWidth()D

    move-result-wide v0

    .line 186
    .local v0, "del":D
    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Bintree;->minExtent:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 187
    iput-wide v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->minExtent:D

    .line 188
    :cond_0
    return-void
.end method

.method public static ensureExtent(Lorg/locationtech/jts/index/bintree/Interval;D)Lorg/locationtech/jts/index/bintree/Interval;
    .locals 9
    .param p0, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p1, "minExtent"    # D

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 58
    invoke-virtual {p0}, Lorg/locationtech/jts/index/bintree/Interval;->getMin()D

    move-result-wide v2

    .line 59
    .local v2, "min":D
    invoke-virtual {p0}, Lorg/locationtech/jts/index/bintree/Interval;->getMax()D

    move-result-wide v0

    .line 61
    .local v0, "max":D
    cmpl-double v4, v2, v0

    if-eqz v4, :cond_0

    .line 68
    .end local p0    # "itemInterval":Lorg/locationtech/jts/index/bintree/Interval;
    :goto_0
    return-object p0

    .line 64
    .restart local p0    # "itemInterval":Lorg/locationtech/jts/index/bintree/Interval;
    :cond_0
    cmpl-double v4, v2, v0

    if-nez v4, :cond_1

    .line 65
    div-double v4, p1, v6

    sub-double/2addr v2, v4

    .line 66
    div-double v4, p1, v6

    add-double v0, v2, v4

    .line 68
    :cond_1
    new-instance p0, Lorg/locationtech/jts/index/bintree/Interval;

    .end local p0    # "itemInterval":Lorg/locationtech/jts/index/bintree/Interval;
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/locationtech/jts/index/bintree/Interval;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method public depth()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/bintree/Root;->depth()I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)V
    .locals 4
    .param p1, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/bintree/Bintree;->collectStats(Lorg/locationtech/jts/index/bintree/Interval;)V

    .line 113
    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Bintree;->minExtent:D

    invoke-static {p1, v2, v3}, Lorg/locationtech/jts/index/bintree/Bintree;->ensureExtent(Lorg/locationtech/jts/index/bintree/Interval;D)Lorg/locationtech/jts/index/bintree/Interval;

    move-result-object v0

    .line 115
    .local v0, "insertInterval":Lorg/locationtech/jts/index/bintree/Interval;
    iget-object v1, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    invoke-virtual {v1, v0, p2}, Lorg/locationtech/jts/index/bintree/Root;->insert(Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "foundItems":Ljava/util/List;
    iget-object v1, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/index/bintree/Root;->addAllItems(Ljava/util/List;)Ljava/util/List;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public nodeSize()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/bintree/Root;->nodeSize()I

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(D)Ljava/util/List;
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 149
    new-instance v0, Lorg/locationtech/jts/index/bintree/Interval;

    invoke-direct {v0, p1, p2, p1, p2}, Lorg/locationtech/jts/index/bintree/Interval;-><init>(DD)V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/index/bintree/Bintree;->query(Lorg/locationtech/jts/index/bintree/Interval;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/locationtech/jts/index/bintree/Interval;)Ljava/util/List;
    .locals 1
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "foundItems":Ljava/util/List;
    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/index/bintree/Bintree;->query(Lorg/locationtech/jts/index/bintree/Interval;Ljava/util/Collection;)V

    .line 167
    return-object v0
.end method

.method public query(Lorg/locationtech/jts/index/bintree/Interval;Ljava/util/Collection;)V
    .locals 1
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p2, "foundItems"    # Ljava/util/Collection;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/index/bintree/Root;->addAllItemsFromOverlapping(Lorg/locationtech/jts/index/bintree/Interval;Ljava/util/Collection;)V

    .line 181
    return-void
.end method

.method public remove(Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 136
    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Bintree;->minExtent:D

    invoke-static {p1, v2, v3}, Lorg/locationtech/jts/index/bintree/Bintree;->ensureExtent(Lorg/locationtech/jts/index/bintree/Interval;D)Lorg/locationtech/jts/index/bintree/Interval;

    move-result-object v0

    .line 137
    .local v0, "insertInterval":Lorg/locationtech/jts/index/bintree/Interval;
    iget-object v1, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    invoke-virtual {v1, v0, p2}, Lorg/locationtech/jts/index/bintree/Root;->remove(Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Bintree;->root:Lorg/locationtech/jts/index/bintree/Root;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/bintree/Root;->size()I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
