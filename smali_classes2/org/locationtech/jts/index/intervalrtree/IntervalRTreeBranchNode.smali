.class public Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;
.super Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
.source "IntervalRTreeBranchNode.java"


# instance fields
.field private node1:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

.field private node2:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;)V
    .locals 2
    .param p1, "n1"    # Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    .param p2, "n2"    # Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->node1:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .line 25
    iput-object p2, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->node2:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .line 26
    iget-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->node1:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    iget-object v1, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->node2:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->buildExtent(Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;)V

    .line 27
    return-void
.end method

.method private buildExtent(Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;)V
    .locals 4
    .param p1, "n1"    # Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    .param p2, "n2"    # Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .prologue
    .line 31
    iget-wide v0, p1, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    iget-wide v2, p2, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->min:D

    .line 32
    iget-wide v0, p1, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    iget-wide v2, p2, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->max:D

    .line 33
    return-void
.end method


# virtual methods
.method public query(DDLorg/locationtech/jts/index/ItemVisitor;)V
    .locals 7
    .param p1, "queryMin"    # D
    .param p3, "queryMax"    # D
    .param p5, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->intersects(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->node1:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->node1:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->query(DDLorg/locationtech/jts/index/ItemVisitor;)V

    .line 43
    :cond_2
    iget-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->node2:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeBranchNode;->node2:Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->query(DDLorg/locationtech/jts/index/ItemVisitor;)V

    goto :goto_0
.end method
