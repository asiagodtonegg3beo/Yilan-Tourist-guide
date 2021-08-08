.class public Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;
.super Ljava/lang/Object;
.source "SortedPackedIntervalRTree.java"


# instance fields
.field private leaves:Ljava/util/List;

.field private level:I

.field private root:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->leaves:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->root:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->level:I

    .line 46
    return-void
.end method

.method private buildLevel(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "src"    # Ljava/util/List;
    .param p2, "dest"    # Ljava/util/List;

    .prologue
    .line 102
    iget v4, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->level:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->level:I

    .line 103
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 105
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .line 106
    .local v1, "n1":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    move-object v2, v4

    .line 108
    .local v2, "n2":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    :goto_1
    if-nez v2, :cond_1

    .line 109
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 107
    .end local v2    # "n2":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 111
    .restart local v2    # "n2":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    :cond_1
    new-instance v3, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    add-int/lit8 v5, v0, 0x1

    .line 113
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    invoke-direct {v3, v4, v5}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;-><init>(Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;)V

    .line 116
    .local v3, "node":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    .end local v1    # "n1":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    .end local v2    # "n2":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    .end local v3    # "node":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    :cond_2
    return-void
.end method

.method private declared-synchronized buildRoot()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->root:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->buildTree()Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->root:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private buildTree()Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    .locals 5

    .prologue
    .line 80
    iget-object v3, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->leaves:Ljava/util/List;

    new-instance v4, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode$NodeComparator;

    invoke-direct {v4}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode$NodeComparator;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    iget-object v1, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->leaves:Ljava/util/List;

    .line 84
    .local v1, "src":Ljava/util/List;
    const/4 v2, 0x0

    .line 85
    .local v2, "temp":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "dest":Ljava/util/List;
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->buildLevel(Ljava/util/List;Ljava/util/List;)V

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 90
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    return-object v3

    .line 92
    :cond_0
    move-object v2, v1

    .line 93
    move-object v1, v0

    .line 94
    move-object v0, v2

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->root:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->buildRoot()V

    goto :goto_0
.end method

.method private printNode(Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;)V
    .locals 8
    .param p1, "node"    # Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .prologue
    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p1, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    iget v4, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->level:I

    int-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, p1, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    iget v3, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->level:I

    int-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-static {v1, v2}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method public insert(DDLjava/lang/Object;)V
    .locals 7
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "item"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->root:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Index cannot be added to once it has been queried"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->leaves:Ljava/util/List;

    new-instance v1, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeLeafNode;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeLeafNode;-><init>(DDLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public query(DDLorg/locationtech/jts/index/ItemVisitor;)V
    .locals 7
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->init()V

    .line 138
    iget-object v1, p0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->root:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->query(DDLorg/locationtech/jts/index/ItemVisitor;)V

    .line 139
    return-void
.end method
