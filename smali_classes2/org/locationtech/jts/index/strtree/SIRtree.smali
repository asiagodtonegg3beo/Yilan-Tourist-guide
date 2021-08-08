.class public Lorg/locationtech/jts/index/strtree/SIRtree;
.super Lorg/locationtech/jts/index/strtree/AbstractSTRtree;
.source "SIRtree.java"


# instance fields
.field private comparator:Ljava/util/Comparator;

.field private intersectsOp:Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/locationtech/jts/index/strtree/SIRtree;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "nodeCapacity"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;-><init>(I)V

    .line 34
    new-instance v0, Lorg/locationtech/jts/index/strtree/SIRtree$1;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/index/strtree/SIRtree$1;-><init>(Lorg/locationtech/jts/index/strtree/SIRtree;)V

    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/SIRtree;->comparator:Ljava/util/Comparator;

    .line 42
    new-instance v0, Lorg/locationtech/jts/index/strtree/SIRtree$2;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/index/strtree/SIRtree$2;-><init>(Lorg/locationtech/jts/index/strtree/SIRtree;)V

    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/SIRtree;->intersectsOp:Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    .line 59
    return-void
.end method


# virtual methods
.method protected createNode(I)Lorg/locationtech/jts/index/strtree/AbstractNode;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 62
    new-instance v0, Lorg/locationtech/jts/index/strtree/SIRtree$3;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/index/strtree/SIRtree$3;-><init>(Lorg/locationtech/jts/index/strtree/SIRtree;I)V

    return-object v0
.end method

.method protected getComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/SIRtree;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected getIntersectsOp()Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/SIRtree;->intersectsOp:Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;

    return-object v0
.end method

.method public insert(DDLjava/lang/Object;)V
    .locals 7
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "item"    # Ljava/lang/Object;

    .prologue
    .line 83
    new-instance v0, Lorg/locationtech/jts/index/strtree/Interval;

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/index/strtree/Interval;-><init>(DD)V

    invoke-super {p0, v0, p5}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public query(D)Ljava/util/List;
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/locationtech/jts/index/strtree/SIRtree;->query(DD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(DD)Ljava/util/List;
    .locals 7
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 98
    new-instance v0, Lorg/locationtech/jts/index/strtree/Interval;

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/index/strtree/Interval;-><init>(DD)V

    invoke-super {p0, v0}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->query(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
