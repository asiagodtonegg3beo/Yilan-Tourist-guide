.class public Lorg/locationtech/jts/geomgraph/Quadrant;
.super Ljava/lang/Object;
.source "Quadrant.java"


# static fields
.field public static final NE:I = 0x0

.field public static final NW:I = 0x1

.field public static final SE:I = 0x3

.field public static final SW:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commonHalfPlane(II)I
    .locals 5
    .param p0, "quad1"    # I
    .param p1, "quad2"    # I

    .prologue
    const/4 v3, 0x3

    .line 107
    if-ne p0, p1, :cond_0

    .line 117
    .end local p0    # "quad1":I
    :goto_0
    return p0

    .line 108
    .restart local p0    # "quad1":I
    :cond_0
    sub-int v4, p0, p1

    add-int/lit8 v4, v4, 0x4

    rem-int/lit8 v0, v4, 0x4

    .line 110
    .local v0, "diff":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    .line 112
    :cond_1
    if-ge p0, p1, :cond_2

    move v2, p0

    .line 113
    .local v2, "min":I
    :goto_1
    if-le p0, p1, :cond_3

    move v1, p0

    .line 115
    .local v1, "max":I
    :goto_2
    if-nez v2, :cond_4

    if-ne v1, v3, :cond_4

    move p0, v3

    goto :goto_0

    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_2
    move v2, p1

    .line 112
    goto :goto_1

    .restart local v2    # "min":I
    :cond_3
    move v1, p1

    .line 113
    goto :goto_2

    .restart local v1    # "max":I
    :cond_4
    move p0, v2

    .line 117
    goto :goto_0
.end method

.method public static isInHalfPlane(II)Z
    .locals 3
    .param p0, "quad"    # I
    .param p1, "halfPlane"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    if-ne p1, v2, :cond_2

    .line 127
    if-eq p0, v2, :cond_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 129
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p0, p1, :cond_3

    add-int/lit8 v2, p1, 0x1

    if-ne p0, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isNorthern(I)Z
    .locals 1
    .param p0, "quad"    # I

    .prologue
    const/4 v0, 0x1

    .line 137
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpposite(II)Z
    .locals 3
    .param p0, "quad1"    # I
    .param p1, "quad2"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    sub-int v2, p0, p1

    add-int/lit8 v2, v2, 0x4

    rem-int/lit8 v0, v2, 0x4

    .line 95
    .local v0, "diff":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static quadrant(DD)I
    .locals 4
    .param p0, "dx"    # D
    .param p2, "dy"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 47
    cmpl-double v0, p0, v2

    if-nez v0, :cond_0

    cmpl-double v0, p2, v2

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compute the quadrant for point ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_2

    .line 50
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 53
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 56
    :cond_2
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_3

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static quadrant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 4
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 70
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compute the quadrant for two identical points "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 74
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 77
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 80
    :cond_2
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method
