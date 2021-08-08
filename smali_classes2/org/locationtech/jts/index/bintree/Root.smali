.class public Lorg/locationtech/jts/index/bintree/Root;
.super Lorg/locationtech/jts/index/bintree/NodeBase;
.source "Root.java"


# static fields
.field private static final origin:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/locationtech/jts/index/bintree/NodeBase;-><init>()V

    .line 34
    return-void
.end method

.method private insertContained(Lorg/locationtech/jts/index/bintree/Node;Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)V
    .locals 6
    .param p1, "tree"    # Lorg/locationtech/jts/index/bintree/Node;
    .param p2, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p3, "item"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-virtual {p1}, Lorg/locationtech/jts/index/bintree/Node;->getInterval()Lorg/locationtech/jts/index/bintree/Interval;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/locationtech/jts/index/bintree/Interval;->contains(Lorg/locationtech/jts/index/bintree/Interval;)Z

    move-result v2

    invoke-static {v2}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 82
    invoke-virtual {p2}, Lorg/locationtech/jts/index/bintree/Interval;->getMin()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/locationtech/jts/index/bintree/Interval;->getMax()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/index/quadtree/IntervalSize;->isZeroWidth(DD)Z

    move-result v0

    .line 84
    .local v0, "isZeroArea":Z
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/index/bintree/Node;->find(Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/NodeBase;

    move-result-object v1

    .line 88
    .local v1, "node":Lorg/locationtech/jts/index/bintree/NodeBase;
    :goto_0
    invoke-virtual {v1, p3}, Lorg/locationtech/jts/index/bintree/NodeBase;->add(Ljava/lang/Object;)V

    .line 89
    return-void

    .line 87
    .end local v1    # "node":Lorg/locationtech/jts/index/bintree/NodeBase;
    :cond_0
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/index/bintree/Node;->getNode(Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/Node;

    move-result-object v1

    .restart local v1    # "node":Lorg/locationtech/jts/index/bintree/NodeBase;
    goto :goto_0
.end method


# virtual methods
.method public insert(Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)V
    .locals 6
    .param p1, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 41
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lorg/locationtech/jts/index/bintree/Root;->getSubnodeIndex(Lorg/locationtech/jts/index/bintree/Interval;D)I

    move-result v0

    .line 43
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 44
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/index/bintree/Root;->add(Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/index/bintree/Root;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v3, v0

    .line 57
    .local v2, "node":Lorg/locationtech/jts/index/bintree/Node;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/locationtech/jts/index/bintree/Node;->getInterval()Lorg/locationtech/jts/index/bintree/Interval;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/locationtech/jts/index/bintree/Interval;->contains(Lorg/locationtech/jts/index/bintree/Interval;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    :cond_1
    invoke-static {v2, p1}, Lorg/locationtech/jts/index/bintree/Node;->createExpanded(Lorg/locationtech/jts/index/bintree/Node;Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/Node;

    move-result-object v1

    .line 59
    .local v1, "largerNode":Lorg/locationtech/jts/index/bintree/Node;
    iget-object v3, p0, Lorg/locationtech/jts/index/bintree/Root;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aput-object v1, v3, v0

    .line 65
    .end local v1    # "largerNode":Lorg/locationtech/jts/index/bintree/Node;
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/index/bintree/Root;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v3, v3, v0

    invoke-direct {p0, v3, p1, p2}, Lorg/locationtech/jts/index/bintree/Root;->insertContained(Lorg/locationtech/jts/index/bintree/Node;Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected isSearchMatch(Lorg/locationtech/jts/index/bintree/Interval;)Z
    .locals 1
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
