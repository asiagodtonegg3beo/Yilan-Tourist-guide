.class public Lorg/locationtech/jts/geom/LineSegment;
.super Ljava/lang/Object;
.source "LineSegment.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2d2172135f411b63L


# instance fields
.field public p0:Lorg/locationtech/jts/geom/Coordinate;

.field public p1:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 60
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 3
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D

    .prologue
    .line 51
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1, p5, p6, p7, p8}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 47
    iput-object p2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 2
    .param p1, "ls"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 55
    iget-object v0, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 56
    return-void
.end method

.method public static midPoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 237
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public angle()D
    .locals 6

    .prologue
    .line 217
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v4, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/LineSegment;->projectionFactor(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 455
    .local v4, "factor":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 456
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/LineSegment;->project(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 462
    :goto_0
    return-object v6

    .line 458
    :cond_0
    iget-object v6, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 459
    .local v0, "dist0":D
    iget-object v6, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 460
    .local v2, "dist1":D
    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    .line 461
    iget-object v6, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 462
    :cond_1
    iget-object v6, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0
.end method

.method public closestPoints(Lorg/locationtech/jts/geom/LineSegment;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 13
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 473
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/LineSegment;->intersection(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 474
    .local v5, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v5, :cond_1

    .line 475
    new-array v4, v10, [Lorg/locationtech/jts/geom/Coordinate;

    aput-object v5, v4, v11

    aput-object v5, v4, v12

    .line 515
    :cond_0
    :goto_0
    return-object v4

    .line 482
    :cond_1
    new-array v4, v10, [Lorg/locationtech/jts/geom/Coordinate;

    .line 483
    .local v4, "closestPt":[Lorg/locationtech/jts/geom/Coordinate;
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 486
    .local v8, "minDistance":D
    iget-object v10, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v10}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 487
    .local v0, "close00":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v10, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v10}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 488
    aput-object v0, v4, v11

    .line 489
    iget-object v10, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v10, v4, v12

    .line 491
    iget-object v10, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v10}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 492
    .local v1, "close01":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v10, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v10}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 493
    .local v6, "dist":D
    cmpg-double v10, v6, v8

    if-gez v10, :cond_2

    .line 494
    move-wide v8, v6

    .line 495
    aput-object v1, v4, v11

    .line 496
    iget-object v10, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v10, v4, v12

    .line 499
    :cond_2
    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v10}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 500
    .local v2, "close10":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v10}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 501
    cmpg-double v10, v6, v8

    if-gez v10, :cond_3

    .line 502
    move-wide v8, v6

    .line 503
    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v10, v4, v11

    .line 504
    aput-object v2, v4, v12

    .line 507
    :cond_3
    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v10}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 508
    .local v3, "close11":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v3, v10}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 509
    cmpg-double v10, v6, v8

    if-gez v10, :cond_0

    .line 510
    move-wide v8, v6

    .line 511
    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v10, v4, v11

    .line 512
    aput-object v3, v4, v12

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 625
    move-object v1, p1

    check-cast v1, Lorg/locationtech/jts/geom/LineSegment;

    .line 626
    .local v1, "other":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, v1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 627
    .local v0, "comp0":I
    if-eqz v0, :cond_0

    .line 628
    .end local v0    # "comp0":I
    :goto_0
    return v0

    .restart local v0    # "comp0":I
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, v1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public distance(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 258
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Lorg/locationtech/jts/geom/LineSegment;)D
    .locals 4
    .param p1, "ls"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distanceLineLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distancePerpendicular(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLinePerpendicular(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 590
    instance-of v2, p1, Lorg/locationtech/jts/geom/LineSegment;

    if-nez v2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 593
    check-cast v0, Lorg/locationtech/jts/geom/LineSegment;

    .line 594
    .local v0, "other":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equalsTopo(Lorg/locationtech/jts/geom/LineSegment;)Z
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 642
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 643
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 644
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 642
    :goto_0
    return v0

    .line 644
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 64
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0
.end method

.method public getLength()D
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f

    const/16 v10, 0x20

    .line 603
    iget-object v6, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 604
    .local v0, "bits0":J
    iget-object v6, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    mul-long/2addr v6, v12

    xor-long/2addr v0, v6

    .line 605
    long-to-int v6, v0

    shr-long v8, v0, v10

    long-to-int v7, v8

    xor-int v4, v6, v7

    .line 607
    .local v4, "hash0":I
    iget-object v6, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 608
    .local v2, "bits1":J
    iget-object v6, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    mul-long/2addr v6, v12

    xor-long/2addr v2, v6

    .line 609
    long-to-int v6, v2

    shr-long v8, v2, v10

    long-to-int v7, v8

    xor-int v5, v6, v7

    .line 612
    .local v5, "hash1":I
    xor-int v6, v4, v5

    return v6
.end method

.method public intersection(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 5
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 534
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    .line 535
    .local v0, "li":Lorg/locationtech/jts/algorithm/LineIntersector;
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 536
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHorizontal()Z
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVertical()Z
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lineIntersection(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 5
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 561
    :try_start_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v1, v2, v3, v4}, Lorg/locationtech/jts/algorithm/HCoordinate;->intersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    :try_end_0
    .catch Lorg/locationtech/jts/algorithm/NotRepresentableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 564
    :catch_0
    move-exception v1

    .line 567
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxX()D
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public maxY()D
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public midPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->midPoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public minX()D
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public minY()D
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineSegment;->reverse()V

    .line 206
    :cond_0
    return-void
.end method

.method public orientationIndex(Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    return v0
.end method

.method public orientationIndex(Lorg/locationtech/jts/geom/LineSegment;)I
    .locals 5
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 157
    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v2, v3, v4}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    .line 158
    .local v0, "orient0":I
    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v2, v3, v4}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v1

    .line 160
    .local v1, "orient1":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 166
    :goto_0
    return v2

    .line 163
    :cond_0
    if-gtz v0, :cond_1

    if-gtz v1, :cond_1

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 166
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pointAlong(D)Lorg/locationtech/jts/geom/Coordinate;
    .locals 9
    .param p1, "segmentLengthFraction"    # D

    .prologue
    .line 285
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 286
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 287
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 288
    return-object v0
.end method

.method public pointAlongOffset(DD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 29
    .param p1, "segmentLengthFraction"    # D
    .param p3, "offsetDistance"    # D

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    mul-double v24, v24, p1

    add-double v14, v22, v24

    .line 311
    .local v14, "segx":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    mul-double v24, v24, p1

    add-double v16, v22, v24

    .line 313
    .local v16, "segy":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    sub-double v4, v22, v24

    .line 314
    .local v4, "dx":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    sub-double v6, v22, v24

    .line 315
    .local v6, "dy":D
    mul-double v22, v4, v4

    mul-double v24, v6, v6

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 316
    .local v8, "len":D
    const-wide/16 v18, 0x0

    .line 317
    .local v18, "ux":D
    const-wide/16 v20, 0x0

    .line 318
    .local v20, "uy":D
    const-wide/16 v22, 0x0

    cmpl-double v3, p3, v22

    if-eqz v3, :cond_1

    .line 319
    const-wide/16 v22, 0x0

    cmpg-double v3, v8, v22

    if-gtz v3, :cond_0

    .line 320
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v22, "Cannot compute offset from zero-length line segment"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    :cond_0
    mul-double v22, p3, v4

    div-double v18, v22, v8

    .line 324
    mul-double v22, p3, v6

    div-double v20, v22, v8

    .line 328
    :cond_1
    sub-double v10, v14, v20

    .line 329
    .local v10, "offsetx":D
    add-double v12, v16, v18

    .line 331
    .local v12, "offsety":D
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, v10, v11, v12, v13}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 332
    .local v2, "coord":Lorg/locationtech/jts/geom/Coordinate;
    return-object v2
.end method

.method public project(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 409
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 415
    :goto_0
    return-object v0

    .line 411
    :cond_1
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/LineSegment;->projectionFactor(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 412
    .local v2, "r":D
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 413
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iput-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 414
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iput-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0
.end method

.method public project(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/LineSegment;
    .locals 12
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    .line 431
    iget-object v7, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v7}, Lorg/locationtech/jts/geom/LineSegment;->projectionFactor(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 432
    .local v2, "pf0":D
    iget-object v7, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v7}, Lorg/locationtech/jts/geom/LineSegment;->projectionFactor(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 434
    .local v4, "pf1":D
    cmpl-double v7, v2, v10

    if-ltz v7, :cond_1

    cmpl-double v7, v4, v10

    if-ltz v7, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v6

    .line 435
    :cond_1
    cmpg-double v7, v2, v8

    if-gtz v7, :cond_2

    cmpg-double v7, v4, v8

    if-lez v7, :cond_0

    .line 437
    :cond_2
    iget-object v6, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v6}, Lorg/locationtech/jts/geom/LineSegment;->project(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 438
    .local v0, "newp0":Lorg/locationtech/jts/geom/Coordinate;
    cmpg-double v6, v2, v8

    if-gez v6, :cond_3

    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 439
    :cond_3
    cmpl-double v6, v2, v10

    if-lez v6, :cond_4

    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 441
    :cond_4
    iget-object v6, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v6}, Lorg/locationtech/jts/geom/LineSegment;->project(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 442
    .local v1, "newp1":Lorg/locationtech/jts/geom/Coordinate;
    cmpg-double v6, v4, v8

    if-gez v6, :cond_5

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 443
    :cond_5
    cmpl-double v6, v4, v10

    if-lez v6, :cond_6

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 445
    :cond_6
    new-instance v6, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v6, v0, v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method public projectionFactor(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 14
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/16 v6, 0x0

    .line 350
    iget-object v8, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v8}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 372
    :goto_0
    return-wide v6

    .line 351
    :cond_0
    iget-object v8, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v8}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 363
    :cond_1
    iget-object v8, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v8, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v8, v10

    .line 364
    .local v0, "dx":D
    iget-object v8, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v8, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v10, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v8, v10

    .line 365
    .local v2, "dy":D
    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double v4, v8, v10

    .line 368
    .local v4, "len":D
    cmpg-double v8, v4, v6

    if-gtz v8, :cond_2

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    .line 370
    :cond_2
    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v10, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v8, v10

    mul-double/2addr v8, v0

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v12, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v12, v12, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    div-double v6, v8, v4

    .line 372
    .local v6, "r":D
    goto :goto_0
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 192
    .local v0, "temp":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iput-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 193
    iput-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 194
    return-void
.end method

.method public segmentFraction(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 4
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/LineSegment;->projectionFactor(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 392
    .local v0, "segFrac":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 393
    const-wide/16 v0, 0x0

    .line 396
    :cond_0
    :goto_0
    return-wide v0

    .line 394
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public setCoordinates(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 77
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 78
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 79
    return-void
.end method

.method public setCoordinates(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 2
    .param p1, "ls"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 70
    iget-object v0, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->setCoordinates(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 71
    return-void
.end method

.method public toGeometry(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/LineString;
    .locals 3
    .param p1, "geomFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 578
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LINESTRING( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
