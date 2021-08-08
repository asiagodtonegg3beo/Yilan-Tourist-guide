.class public Lorg/locationtech/jts/noding/SegmentPointComparator;
.super Ljava/lang/Object;
.source "SegmentPointComparator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 8
    .param p0, "octant"    # I
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    :goto_0
    return v2

    .line 44
    :cond_0
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v4, v5, v6, v7}, Lorg/locationtech/jts/noding/SegmentPointComparator;->relativeSign(DD)I

    move-result v0

    .line 45
    .local v0, "xSign":I
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v4, v5, v6, v7}, Lorg/locationtech/jts/noding/SegmentPointComparator;->relativeSign(DD)I

    move-result v1

    .line 47
    .local v1, "ySign":I
    packed-switch p0, :pswitch_data_0

    .line 57
    const-string v3, "invalid octant value"

    invoke-static {v3}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_0
    invoke-static {v0, v1}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compareValue(II)I

    move-result v2

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-static {v1, v0}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compareValue(II)I

    move-result v2

    goto :goto_0

    .line 50
    :pswitch_2
    neg-int v2, v0

    invoke-static {v1, v2}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compareValue(II)I

    move-result v2

    goto :goto_0

    .line 51
    :pswitch_3
    neg-int v2, v0

    invoke-static {v2, v1}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compareValue(II)I

    move-result v2

    goto :goto_0

    .line 52
    :pswitch_4
    neg-int v2, v0

    neg-int v3, v1

    invoke-static {v2, v3}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compareValue(II)I

    move-result v2

    goto :goto_0

    .line 53
    :pswitch_5
    neg-int v2, v1

    neg-int v3, v0

    invoke-static {v2, v3}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compareValue(II)I

    move-result v2

    goto :goto_0

    .line 54
    :pswitch_6
    neg-int v2, v1

    invoke-static {v2, v0}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compareValue(II)I

    move-result v2

    goto :goto_0

    .line 55
    :pswitch_7
    neg-int v2, v1

    invoke-static {v0, v2}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compareValue(II)I

    move-result v2

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static compareValue(II)I
    .locals 2
    .param p0, "compareSign0"    # I
    .param p1, "compareSign1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 70
    if-gez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    if-lez p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 72
    :cond_2
    if-ltz p1, :cond_0

    .line 73
    if-lez p1, :cond_3

    move v0, v1

    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static relativeSign(DD)I
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D

    .prologue
    .line 63
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    .line 64
    :cond_0
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
