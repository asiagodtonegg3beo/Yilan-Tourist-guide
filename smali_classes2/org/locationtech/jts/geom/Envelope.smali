.class public Lorg/locationtech/jts/geom/Envelope;
.super Ljava/lang/Object;
.source "Envelope.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x51845cd552189854L


# instance fields
.field private maxx:D

.field private maxy:D

.field private minx:D

.field private miny:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->init()V

    .line 123
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "y1"    # D
    .param p7, "y2"    # D

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual/range {p0 .. p8}, Lorg/locationtech/jts/geom/Envelope;->init(DDDD)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 10
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;->init(DDDD)V

    .line 157
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 10
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;->init(DDDD)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 0
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Envelope;->init(Lorg/locationtech/jts/geom/Envelope;)V

    .line 167
    return-void
.end method

.method public static intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 6
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 56
    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    :goto_0
    cmpl-double v0, v2, v0

    if-ltz v0, :cond_4

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    :goto_1
    cmpg-double v0, v2, v0

    if-gtz v0, :cond_4

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    :goto_2
    cmpl-double v0, v2, v0

    if-ltz v0, :cond_4

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    :goto_3
    cmpg-double v0, v2, v0

    if-gtz v0, :cond_4

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_4
    return v0

    .line 56
    :cond_0
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    goto :goto_1

    :cond_2
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_2

    :cond_3
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_3

    .line 60
    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 12
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 76
    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 77
    .local v6, "minq":D
    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 78
    .local v2, "maxq":D
    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 79
    .local v4, "minp":D
    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 81
    .local v0, "maxp":D
    cmpl-double v8, v4, v2

    if-lez v8, :cond_0

    .line 82
    const/4 v8, 0x0

    .line 95
    :goto_0
    return v8

    .line 83
    :cond_0
    cmpg-double v8, v0, v6

    if-gez v8, :cond_1

    .line 84
    const/4 v8, 0x0

    goto :goto_0

    .line 86
    :cond_1
    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 87
    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 88
    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 89
    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 91
    cmpl-double v8, v4, v2

    if-lez v8, :cond_2

    .line 92
    const/4 v8, 0x0

    goto :goto_0

    .line 93
    :cond_2
    cmpg-double v8, v0, v6

    if-gez v8, :cond_3

    .line 94
    const/4 v8, 0x0

    goto :goto_0

    .line 95
    :cond_3
    const/4 v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public centre()Lorg/locationtech/jts/geom/Coordinate;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 495
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 497
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    .line 498
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 735
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Envelope;

    .line 737
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 739
    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    goto :goto_0

    .line 745
    :cond_3
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 746
    :cond_4
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    move v1, v3

    goto :goto_0

    .line 747
    :cond_5
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 748
    :cond_6
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    move v1, v3

    goto :goto_0

    .line 749
    :cond_7
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 750
    :cond_8
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_9

    move v1, v3

    goto :goto_0

    .line 751
    :cond_9
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 752
    :cond_a
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method public contains(DD)Z
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 632
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Envelope;->covers(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 1
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Envelope;->covers(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/locationtech/jts/geom/Envelope;)Z
    .locals 1
    .param p1, "other"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Envelope;->covers(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    return v0
.end method

.method public covers(DD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpl-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpl-double v1, p3, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpg-double v1, p3, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public covers(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 662
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Envelope;->covers(DD)Z

    move-result v0

    return v0
.end method

.method public covers(Lorg/locationtech/jts/geom/Envelope;)Z
    .locals 6
    .param p1, "other"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    const/4 v0, 0x0

    .line 673
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 675
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 676
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 677
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public distance(Lorg/locationtech/jts/geom/Envelope;)D
    .locals 10
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    const-wide/16 v4, 0x0

    .line 688
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-wide v2, v4

    .line 704
    :cond_0
    :goto_0
    return-wide v2

    .line 690
    :cond_1
    const-wide/16 v0, 0x0

    .line 691
    .local v0, "dx":D
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 692
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    sub-double v0, v6, v8

    .line 696
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    .line 697
    .local v2, "dy":D
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    .line 698
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    sub-double v2, v6, v8

    .line 702
    :cond_3
    :goto_2
    cmpl-double v6, v0, v4

    if-eqz v6, :cond_0

    .line 703
    cmpl-double v4, v2, v4

    if-nez v4, :cond_6

    move-wide v2, v0

    goto :goto_0

    .line 693
    .end local v2    # "dy":D
    :cond_4
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 694
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    sub-double v0, v6, v8

    goto :goto_1

    .line 699
    .restart local v2    # "dy":D
    :cond_5
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    sub-double v2, v6, v8

    goto :goto_2

    .line 704
    :cond_6
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 708
    instance-of v2, p1, Lorg/locationtech/jts/geom/Envelope;

    if-nez v2, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 711
    check-cast v0, Lorg/locationtech/jts/geom/Envelope;

    .line 712
    .local v0, "otherEnvelope":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 713
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v1

    goto :goto_0

    .line 715
    :cond_2
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    .line 716
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 717
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 718
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public expandBy(D)V
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 385
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/locationtech/jts/geom/Envelope;->expandBy(DD)V

    .line 386
    return-void
.end method

.method public expandBy(DD)V
    .locals 5
    .param p1, "deltaX"    # D
    .param p3, "deltaY"    # D

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 400
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 401
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    sub-double/2addr v0, p3

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 402
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    .line 405
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 406
    :cond_2
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->setToNull()V

    goto :goto_0
.end method

.method public expandToInclude(DD)V
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 418
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iput-wide p1, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 420
    iput-wide p1, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 421
    iput-wide p3, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 422
    iput-wide p3, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 426
    iput-wide p1, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 428
    :cond_2
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_3

    .line 429
    iput-wide p1, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 431
    :cond_3
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_4

    .line 432
    iput-wide p3, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 434
    :cond_4
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    .line 435
    iput-wide p3, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    goto :goto_0
.end method

.method public expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 374
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(DD)V

    .line 375
    return-void
.end method

.method public expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 4
    .param p1, "other"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 449
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 454
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 455
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 456
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    goto :goto_0

    .line 459
    :cond_2
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 460
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 462
    :cond_3
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 463
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 465
    :cond_4
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 466
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 468
    :cond_5
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 469
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    goto :goto_0
.end method

.method public getArea()D
    .locals 4

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getHeight()D
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-wide/16 v0, 0x0

    .line 283
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public getMaxX()D
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    return-wide v0
.end method

.method public getMaxY()D
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    return-wide v0
.end method

.method public getMinX()D
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    return-wide v0
.end method

.method public getMinY()D
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 4

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-wide/16 v0, 0x0

    .line 271
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 37
    const/16 v0, 0x11

    .line 38
    .local v0, "result":I
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->hashCode(D)I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 39
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->hashCode(D)I

    move-result v2

    add-int v0, v1, v2

    .line 40
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->hashCode(D)I

    move-result v2

    add-int v0, v1, v2

    .line 41
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->hashCode(D)I

    move-result v2

    add-int v0, v1, v2

    .line 42
    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->setToNull()V

    .line 175
    return-void
.end method

.method public init(DDDD)V
    .locals 1
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "y1"    # D
    .param p7, "y2"    # D

    .prologue
    .line 187
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 188
    iput-wide p1, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 189
    iput-wide p3, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 195
    :goto_0
    cmpg-double v0, p5, p7

    if-gez v0, :cond_1

    .line 196
    iput-wide p5, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 197
    iput-wide p7, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    .line 203
    :goto_1
    return-void

    .line 192
    :cond_0
    iput-wide p3, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 193
    iput-wide p1, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    goto :goto_0

    .line 200
    :cond_1
    iput-wide p7, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 201
    iput-wide p5, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    goto :goto_1
.end method

.method public init(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 10
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 223
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;->init(DDDD)V

    .line 224
    return-void
.end method

.method public init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 10
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 213
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;->init(DDDD)V

    .line 214
    return-void
.end method

.method public init(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 2
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 233
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 234
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 235
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 236
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    .line 237
    return-void
.end method

.method public intersection(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Envelope;
    .locals 12
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 510
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 516
    :goto_0
    return-object v1

    .line 512
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 513
    .local v2, "intMinX":D
    :goto_1
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_3

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 514
    .local v6, "intMinY":D
    :goto_2
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpg-double v0, v0, v10

    if-gez v0, :cond_4

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 515
    .local v4, "intMaxX":D
    :goto_3
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpg-double v0, v0, v10

    if-gez v0, :cond_5

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    .line 516
    .local v8, "intMaxY":D
    :goto_4
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    goto :goto_0

    .line 512
    .end local v2    # "intMinX":D
    .end local v4    # "intMaxX":D
    .end local v6    # "intMinY":D
    .end local v8    # "intMaxY":D
    :cond_2
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Envelope;->minx:D

    goto :goto_1

    .line 513
    .restart local v2    # "intMinX":D
    :cond_3
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Envelope;->miny:D

    goto :goto_2

    .line 514
    .restart local v6    # "intMinY":D
    :cond_4
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    goto :goto_3

    .line 515
    .restart local v4    # "intMaxX":D
    :cond_5
    iget-wide v8, p1, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    goto :goto_4
.end method

.method public intersects(DD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpl-double v1, p3, v2

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpg-double v1, p3, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 553
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Envelope;->intersects(DD)Z

    move-result v0

    return v0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Envelope;)Z
    .locals 6
    .param p1, "other"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Envelope;->minx:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Envelope;->miny:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNull()Z
    .locals 4

    .prologue
    .line 259
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxExtent()D
    .locals 5

    .prologue
    .line 358
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x0

    .line 362
    :cond_0
    :goto_0
    return-wide v2

    .line 359
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v2

    .line 360
    .local v2, "w":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v0

    .line 361
    .local v0, "h":D
    cmpl-double v4, v2, v0

    if-gtz v4, :cond_0

    move-wide v2, v0

    .line 362
    goto :goto_0
.end method

.method public minExtent()D
    .locals 5

    .prologue
    .line 344
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x0

    .line 348
    :cond_0
    :goto_0
    return-wide v2

    .line 345
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v2

    .line 346
    .local v2, "w":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v0

    .line 347
    .local v0, "h":D
    cmpg-double v4, v2, v0

    if-ltz v4, :cond_0

    move-wide v2, v0

    .line 348
    goto :goto_0
.end method

.method public overlaps(DD)Z
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 580
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Envelope;->intersects(DD)Z

    move-result v0

    return v0
.end method

.method public overlaps(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 1
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method

.method public overlaps(Lorg/locationtech/jts/geom/Envelope;)Z
    .locals 1
    .param p1, "other"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    return v0
.end method

.method public setToNull()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 245
    iput-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    .line 246
    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    .line 247
    iput-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    .line 248
    iput-wide v0, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    .line 249
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Env["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->minx:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxx:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->miny:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Envelope;->maxy:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(DD)V
    .locals 11
    .param p1, "transX"    # D
    .param p3, "transY"    # D

    .prologue
    .line 481
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v0

    add-double v2, v0, p1

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v0

    add-double v4, v0, p1

    .line 485
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v0

    add-double v6, v0, p3

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v0

    add-double v8, v0, p3

    move-object v1, p0

    .line 484
    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;->init(DDDD)V

    goto :goto_0
.end method
