.class public Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode$NodeComparator;
.super Ljava/lang/Object;
.source "IntervalRTreeNode.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 48
    move-object v4, p1

    check-cast v4, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .local v4, "n1":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    move-object v5, p2

    .line 49
    check-cast v5, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;

    .line 50
    .local v5, "n2":Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
    iget-wide v6, v4, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    iget-wide v8, v4, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    add-double/2addr v6, v8

    div-double v0, v6, v10

    .line 51
    .local v0, "mid1":D
    iget-wide v6, v5, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    iget-wide v8, v5, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    add-double/2addr v6, v8

    div-double v2, v6, v10

    .line 52
    .local v2, "mid2":D
    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    const/4 v6, -0x1

    .line 54
    :goto_0
    return v6

    .line 53
    :cond_0
    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
