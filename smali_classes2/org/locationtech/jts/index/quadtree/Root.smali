.class public Lorg/locationtech/jts/index/quadtree/Root;
.super Lorg/locationtech/jts/index/quadtree/NodeBase;
.source "Root.java"


# static fields
.field private static final origin:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    sput-object v0, Lorg/locationtech/jts/index/quadtree/Root;->origin:Lorg/locationtech/jts/geom/Coordinate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/locationtech/jts/index/quadtree/NodeBase;-><init>()V

    .line 34
    return-void
.end method

.method private insertContained(Lorg/locationtech/jts/index/quadtree/Node;Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V
    .locals 8
    .param p1, "tree"    # Lorg/locationtech/jts/index/quadtree/Node;
    .param p2, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p3, "item"    # Ljava/lang/Object;

    .prologue
    .line 77
    invoke-virtual {p1}, Lorg/locationtech/jts/index/quadtree/Node;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v3

    invoke-static {v3}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 83
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/locationtech/jts/index/quadtree/IntervalSize;->isZeroWidth(DD)Z

    move-result v0

    .line 84
    .local v0, "isZeroX":Z
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/locationtech/jts/index/quadtree/IntervalSize;->isZeroWidth(DD)Z

    move-result v1

    .line 86
    .local v1, "isZeroY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/index/quadtree/Node;->find(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/NodeBase;

    move-result-object v2

    .line 90
    .local v2, "node":Lorg/locationtech/jts/index/quadtree/NodeBase;
    :goto_0
    invoke-virtual {v2, p3}, Lorg/locationtech/jts/index/quadtree/NodeBase;->add(Ljava/lang/Object;)V

    .line 91
    return-void

    .line 89
    .end local v2    # "node":Lorg/locationtech/jts/index/quadtree/NodeBase;
    :cond_1
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/index/quadtree/Node;->getNode(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/Node;

    move-result-object v2

    .restart local v2    # "node":Lorg/locationtech/jts/index/quadtree/NodeBase;
    goto :goto_0
.end method


# virtual methods
.method public insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V
    .locals 8
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 41
    sget-object v3, Lorg/locationtech/jts/index/quadtree/Root;->origin:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sget-object v3, Lorg/locationtech/jts/index/quadtree/Root;->origin:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {p1, v4, v5, v6, v7}, Lorg/locationtech/jts/index/quadtree/Root;->getSubnodeIndex(Lorg/locationtech/jts/geom/Envelope;DD)I

    move-result v0

    .line 43
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 44
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/index/quadtree/Root;->add(Ljava/lang/Object;)V

    .line 68
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/index/quadtree/Root;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v3, v0

    .line 57
    .local v2, "node":Lorg/locationtech/jts/index/quadtree/Node;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/locationtech/jts/index/quadtree/Node;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    :cond_1
    invoke-static {v2, p1}, Lorg/locationtech/jts/index/quadtree/Node;->createExpanded(Lorg/locationtech/jts/index/quadtree/Node;Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/Node;

    move-result-object v1

    .line 59
    .local v1, "largerNode":Lorg/locationtech/jts/index/quadtree/Node;
    iget-object v3, p0, Lorg/locationtech/jts/index/quadtree/Root;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aput-object v1, v3, v0

    .line 65
    .end local v1    # "largerNode":Lorg/locationtech/jts/index/quadtree/Node;
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/index/quadtree/Root;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v3, v3, v0

    invoke-direct {p0, v3, p1, p2}, Lorg/locationtech/jts/index/quadtree/Root;->insertContained(Lorg/locationtech/jts/index/quadtree/Node;Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected isSearchMatch(Lorg/locationtech/jts/geom/Envelope;)Z
    .locals 1
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method
