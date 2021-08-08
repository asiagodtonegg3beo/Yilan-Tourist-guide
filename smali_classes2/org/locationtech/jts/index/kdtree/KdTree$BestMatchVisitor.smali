.class Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;
.super Ljava/lang/Object;
.source "KdTree.java"

# interfaces
.implements Lorg/locationtech/jts/index/kdtree/KdNodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/index/kdtree/KdTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BestMatchVisitor"
.end annotation


# instance fields
.field private matchDist:D

.field private matchNode:Lorg/locationtech/jts/index/kdtree/KdNode;

.field private p:Lorg/locationtech/jts/geom/Coordinate;

.field private tolerance:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;D)V
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "tolerance"    # D

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchNode:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchDist:D

    .line 184
    iput-object p1, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 185
    iput-wide p2, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->tolerance:D

    .line 186
    return-void
.end method


# virtual methods
.method public getNode()Lorg/locationtech/jts/index/kdtree/KdNode;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchNode:Lorg/locationtech/jts/index/kdtree/KdNode;

    return-object v0
.end method

.method public queryEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 4

    .prologue
    .line 189
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    iget-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->p:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 190
    .local v0, "queryEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-wide v2, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->tolerance:D

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/geom/Envelope;->expandBy(D)V

    .line 191
    return-object v0
.end method

.method public visit(Lorg/locationtech/jts/index/kdtree/KdNode;)V
    .locals 8
    .param p1, "node"    # Lorg/locationtech/jts/index/kdtree/KdNode;

    .prologue
    const/4 v4, 0x1

    .line 199
    iget-object v5, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->p:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/index/kdtree/KdNode;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 200
    .local v0, "dist":D
    iget-wide v6, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->tolerance:D

    cmpg-double v5, v0, v6

    if-gtz v5, :cond_1

    move v2, v4

    .line 201
    .local v2, "isInTolerance":Z
    :goto_0
    if-nez v2, :cond_2

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 200
    .end local v2    # "isInTolerance":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 202
    .restart local v2    # "isInTolerance":Z
    :cond_2
    const/4 v3, 0x0

    .line 203
    .local v3, "update":Z
    iget-object v5, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchNode:Lorg/locationtech/jts/index/kdtree/KdNode;

    if-eqz v5, :cond_3

    iget-wide v6, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchDist:D

    cmpg-double v5, v0, v6

    if-ltz v5, :cond_3

    iget-object v5, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchNode:Lorg/locationtech/jts/index/kdtree/KdNode;

    if-eqz v5, :cond_4

    iget-wide v6, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchDist:D

    cmpl-double v5, v0, v6

    if-nez v5, :cond_4

    .line 207
    invoke-virtual {p1}, Lorg/locationtech/jts/index/kdtree/KdNode;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    iget-object v6, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchNode:Lorg/locationtech/jts/index/kdtree/KdNode;

    invoke-virtual {v6}, Lorg/locationtech/jts/index/kdtree/KdNode;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v4, :cond_4

    .line 208
    :cond_3
    const/4 v3, 0x1

    .line 210
    :cond_4
    if-eqz v3, :cond_0

    .line 211
    iput-object p1, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchNode:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 212
    iput-wide v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree$BestMatchVisitor;->matchDist:D

    goto :goto_1
.end method
