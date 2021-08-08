.class Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;
.super Ljava/lang/Object;
.source "SubgraphDepthLocater.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DepthSegment"
.end annotation


# instance fields
.field private leftDepth:I

.field private upwardSeg:Lorg/locationtech/jts/geom/LineSegment;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LineSegment;I)V
    .locals 1
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p2, "depth"    # I

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/LineSegment;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    .line 170
    iput p2, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->leftDepth:I

    .line 171
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;)I
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;

    .prologue
    .line 159
    iget v0, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->leftDepth:I

    return v0
.end method

.method private compareX(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;)I
    .locals 3
    .param p1, "seg0"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p2, "seg1"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 234
    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 235
    .local v0, "compare0":I
    if-eqz v0, :cond_0

    .line 237
    .end local v0    # "compare0":I
    :goto_0
    return v0

    .restart local v0    # "compare0":I
    :cond_0
    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 196
    move-object v1, p1

    check-cast v1, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;

    .line 199
    .local v1, "other":Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineSegment;->minX()D

    move-result-wide v2

    iget-object v4, v1, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/LineSegment;->maxX()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineSegment;->maxX()D

    move-result-wide v2

    iget-object v4, v1, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/LineSegment;->minX()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 206
    :cond_2
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v1, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/LineSegment;->orientationIndex(Lorg/locationtech/jts/geom/LineSegment;)I

    move-result v0

    .line 207
    .local v0, "orientIndex":I
    if-nez v0, :cond_0

    .line 214
    iget-object v2, v1, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/LineSegment;->orientationIndex(Lorg/locationtech/jts/geom/LineSegment;)I

    move-result v2

    mul-int/lit8 v0, v2, -0x1

    .line 215
    if-nez v0, :cond_0

    .line 218
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v1, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/LineSegment;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->upwardSeg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineSegment;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
