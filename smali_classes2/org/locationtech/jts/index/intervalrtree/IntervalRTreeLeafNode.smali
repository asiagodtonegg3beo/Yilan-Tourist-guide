.class public Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeLeafNode;
.super Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
.source "IntervalRTreeLeafNode.java"


# instance fields
.field private item:Ljava/lang/Object;


# direct methods
.method public constructor <init>(DDLjava/lang/Object;)V
    .locals 1
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "item"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;-><init>()V

    .line 23
    iput-wide p1, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeLeafNode;->min:D

    .line 24
    iput-wide p3, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeLeafNode;->max:D

    .line 25
    iput-object p5, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeLeafNode;->item:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public query(DDLorg/locationtech/jts/index/ItemVisitor;)V
    .locals 1
    .param p1, "queryMin"    # D
    .param p3, "queryMax"    # D
    .param p5, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeLeafNode;->intersects(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeLeafNode;->item:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lorg/locationtech/jts/index/ItemVisitor;->visitItem(Ljava/lang/Object;)V

    goto :goto_0
.end method
