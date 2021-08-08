.class public Lorg/locationtech/jts/algorithm/HCoordinate;
.super Ljava/lang/Object;
.source "HCoordinate.java"


# instance fields
.field public w:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    .line 84
    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    .line 85
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    .line 86
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3
    .param p1, "_x"    # D
    .param p3, "_y"    # D

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide p1, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    .line 96
    iput-wide p3, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    .line 97
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    .line 98
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "_x"    # D
    .param p3, "_y"    # D
    .param p5, "_w"    # D

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    .line 90
    iput-wide p3, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    .line 91
    iput-wide p5, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/algorithm/HCoordinate;Lorg/locationtech/jts/algorithm/HCoordinate;)V
    .locals 6
    .param p1, "p1"    # Lorg/locationtech/jts/algorithm/HCoordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/algorithm/HCoordinate;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-wide v0, p1, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    iget-wide v2, p2, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    .line 109
    iget-wide v0, p2, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    iget-wide v4, p2, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    .line 110
    iget-wide v0, p1, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    iget-wide v2, p2, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    .line 102
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    .line 103
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    .line 125
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    .line 126
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 20
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .line 133
    .local v4, "px":D
    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v6, v14, v16

    .line 134
    .local v6, "py":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v2, v14, v16

    .line 136
    .local v2, "pw":D
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v10, v14, v16

    .line 137
    .local v10, "qx":D
    move-object/from16 v0, p4

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v12, v14, v16

    .line 138
    .local v12, "qy":D
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v8, v14, v16

    .line 140
    .local v8, "qw":D
    mul-double v14, v6, v8

    mul-double v16, v12, v2

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    .line 141
    mul-double v14, v10, v2

    mul-double v16, v4, v8

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    .line 142
    mul-double v14, v4, v12

    mul-double v16, v10, v6

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    .line 143
    return-void
.end method

.method public static intersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 34
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q2"    # Lorg/locationtech/jts/geom/Coordinate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/algorithm/NotRepresentableException;
        }
    .end annotation

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    sub-double v8, v28, v30

    .line 44
    .local v8, "px":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    sub-double v10, v28, v30

    .line 45
    .local v10, "py":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    sub-double v6, v28, v30

    .line 47
    .local v6, "pw":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    sub-double v14, v28, v30

    .line 48
    .local v14, "qx":D
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    sub-double v16, v28, v30

    .line 49
    .local v16, "qy":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    sub-double v12, v28, v30

    .line 51
    .local v12, "qw":D
    mul-double v28, v10, v12

    mul-double v30, v16, v6

    sub-double v20, v28, v30

    .line 52
    .local v20, "x":D
    mul-double v28, v14, v6

    mul-double v30, v8, v12

    sub-double v24, v28, v30

    .line 53
    .local v24, "y":D
    mul-double v28, v8, v16

    mul-double v30, v14, v10

    sub-double v18, v28, v30

    .line 55
    .local v18, "w":D
    div-double v22, v20, v18

    .line 56
    .local v22, "xInt":D
    div-double v26, v24, v18

    .line 58
    .local v26, "yInt":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v28

    if-nez v28, :cond_0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v28

    if-nez v28, :cond_0

    .line 59
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isNaN(D)Z

    move-result v28

    if-nez v28, :cond_0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 60
    :cond_0
    new-instance v28, Lorg/locationtech/jts/algorithm/NotRepresentableException;

    invoke-direct/range {v28 .. v28}, Lorg/locationtech/jts/algorithm/NotRepresentableException;-><init>()V

    throw v28

    .line 63
    :cond_1
    new-instance v28, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v28
.end method


# virtual methods
.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/algorithm/NotRepresentableException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 163
    .local v0, "p":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/HCoordinate;->getX()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 164
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/HCoordinate;->getY()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 165
    return-object v0
.end method

.method public getX()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/algorithm/NotRepresentableException;
        }
    .end annotation

    .prologue
    .line 146
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    div-double v0, v2, v4

    .line 147
    .local v0, "a":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    new-instance v2, Lorg/locationtech/jts/algorithm/NotRepresentableException;

    invoke-direct {v2}, Lorg/locationtech/jts/algorithm/NotRepresentableException;-><init>()V

    throw v2

    .line 150
    :cond_1
    return-wide v0
.end method

.method public getY()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/algorithm/NotRepresentableException;
        }
    .end annotation

    .prologue
    .line 154
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/HCoordinate;->w:D

    div-double v0, v2, v4

    .line 155
    .local v0, "a":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    new-instance v2, Lorg/locationtech/jts/algorithm/NotRepresentableException;

    invoke-direct {v2}, Lorg/locationtech/jts/algorithm/NotRepresentableException;-><init>()V

    throw v2

    .line 158
    :cond_1
    return-wide v0
.end method
