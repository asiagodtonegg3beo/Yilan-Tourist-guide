.class public Lorg/locationtech/jts/noding/Octant;
.super Ljava/lang/Object;
.source "Octant.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static octant(DD)I
    .locals 8
    .param p0, "dx"    # D
    .param p2, "dy"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 39
    cmpl-double v4, p0, v6

    if-nez v4, :cond_0

    cmpl-double v4, p2, v6

    if-nez v4, :cond_0

    .line 40
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot compute the octant for point ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 43
    .local v0, "adx":D
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 45
    .local v2, "ady":D
    cmpl-double v4, p0, v6

    if-ltz v4, :cond_4

    .line 46
    cmpl-double v4, p2, v6

    if-ltz v4, :cond_2

    .line 47
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 48
    const/4 v4, 0x0

    .line 70
    :goto_0
    return v4

    .line 50
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 53
    :cond_2
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3

    .line 54
    const/4 v4, 0x7

    goto :goto_0

    .line 56
    :cond_3
    const/4 v4, 0x6

    goto :goto_0

    .line 60
    :cond_4
    cmpl-double v4, p2, v6

    if-ltz v4, :cond_6

    .line 61
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_5

    .line 62
    const/4 v4, 0x3

    goto :goto_0

    .line 64
    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    .line 67
    :cond_6
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_7

    .line 68
    const/4 v4, 0x4

    goto :goto_0

    .line 70
    :cond_7
    const/4 v4, 0x5

    goto :goto_0
.end method

.method public static octant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 10
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/16 v8, 0x0

    .line 80
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v4, v6

    .line 81
    .local v0, "dx":D
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v4, v6

    .line 82
    .local v2, "dy":D
    cmpl-double v4, v0, v8

    if-nez v4, :cond_0

    cmpl-double v4, v2, v8

    if-nez v4, :cond_0

    .line 83
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot compute the octant for two identical points "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/noding/Octant;->octant(DD)I

    move-result v4

    return v4
.end method
