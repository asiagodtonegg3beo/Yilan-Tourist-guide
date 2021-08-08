.class public abstract Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;
.super Ljava/lang/Object;
.source "IntervalRTreeNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode$NodeComparator;
    }
.end annotation


# instance fields
.field protected max:D

.field protected min:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    .line 24
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    return-void
.end method


# virtual methods
.method public getMax()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    return-wide v0
.end method

.method protected intersects(DD)Z
    .locals 3
    .param p1, "queryMin"    # D
    .param p3, "queryMax"    # D

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    cmpl-double v0, v0, p3

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract query(DDLorg/locationtech/jts/index/ItemVisitor;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 41
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->min:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/index/intervalrtree/IntervalRTreeNode;->max:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-static {v0, v1}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
