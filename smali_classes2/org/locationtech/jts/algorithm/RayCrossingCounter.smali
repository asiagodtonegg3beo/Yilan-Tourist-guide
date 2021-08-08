.class public Lorg/locationtech/jts/algorithm/RayCrossingCounter;
.super Ljava/lang/Object;
.source "RayCrossingCounter.java"


# instance fields
.field private crossingCount:I

.field private isPointOnSegment:Z

.field private p:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->crossingCount:I

    .line 96
    iput-boolean v0, p0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->isPointOnSegment:Z

    .line 100
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 101
    return-void
.end method

.method public static locatePointInRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/CoordinateSequence;)I
    .locals 5
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "ring"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 79
    new-instance v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 81
    .local v0, "counter":Lorg/locationtech/jts/algorithm/RayCrossingCounter;
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 82
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 83
    .local v3, "p2":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 84
    invoke-interface {p1, v1, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 85
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p1, v4, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 86
    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->countSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 87
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->isOnSegment()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->getLocation()I

    move-result v4

    .line 90
    :goto_1
    return v4

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->getLocation()I

    move-result v4

    goto :goto_1
.end method

.method public static locatePointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 5
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "ring"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 57
    new-instance v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 59
    .local v0, "counter":Lorg/locationtech/jts/algorithm/RayCrossingCounter;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 60
    aget-object v2, p1, v1

    .line 61
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    add-int/lit8 v4, v1, -0x1

    aget-object v3, p1, v4

    .line 62
    .local v3, "p2":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->countSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 63
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->isOnSegment()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->getLocation()I

    move-result v4

    .line 66
    .end local v2    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return v4

    .line 59
    .restart local v2    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v3    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->getLocation()I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public countSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 20
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 116
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    .line 121
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->isPointOnSegment:Z

    goto :goto_0

    .line 128
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_4

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_4

    .line 129
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 130
    .local v12, "minx":D
    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 131
    .local v10, "maxx":D
    cmpl-double v16, v12, v10

    if-lez v16, :cond_3

    .line 132
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 133
    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 135
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    cmpl-double v16, v16, v12

    if-ltz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    cmpg-double v16, v16, v10

    if-gtz v16, :cond_0

    .line 136
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->isPointOnSegment:Z

    goto/16 :goto_0

    .line 151
    .end local v10    # "maxx":D
    .end local v12    # "minx":D
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_5

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-lez v16, :cond_6

    :cond_5
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_0

    .line 154
    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    sub-double v2, v16, v18

    .line 155
    .local v2, "x1":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    sub-double v4, v16, v18

    .line 156
    .local v4, "y1":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    sub-double v6, v16, v18

    .line 157
    .local v6, "x2":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->p:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    sub-double v8, v16, v18

    .line 167
    .local v8, "y2":D
    invoke-static/range {v2 .. v9}, Lorg/locationtech/jts/algorithm/RobustDeterminant;->signOfDet2x2(DDDD)I

    move-result v16

    move/from16 v0, v16

    int-to-double v14, v0

    .line 168
    .local v14, "xIntSign":D
    const-wide/16 v16, 0x0

    cmpl-double v16, v14, v16

    if-nez v16, :cond_7

    .line 169
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->isPointOnSegment:Z

    goto/16 :goto_0

    .line 172
    :cond_7
    cmpg-double v16, v8, v4

    if-gez v16, :cond_8

    .line 173
    neg-double v14, v14

    .line 178
    :cond_8
    const-wide/16 v16, 0x0

    cmpl-double v16, v14, v16

    if-lez v16, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->crossingCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->crossingCount:I

    goto/16 :goto_0
.end method

.method public getLocation()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 207
    iget-boolean v1, p0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->isPointOnSegment:Z

    if-eqz v1, :cond_0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    iget v1, p0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->crossingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_1

    .line 213
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isOnSegment()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->isPointOnSegment:Z

    return v0
.end method

.method public isPointInPolygon()Z
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->getLocation()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
