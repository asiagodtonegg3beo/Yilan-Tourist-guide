.class public Lorg/locationtech/jts/math/Vector3D;
.super Ljava/lang/Object;
.source "Vector3D.java"


# instance fields
.field private x:D

.field private y:D

.field private z:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p1, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    .line 100
    iput-wide p3, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    .line 101
    iput-wide p5, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "v"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    .line 73
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    .line 74
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "from"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "to"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    .line 94
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    .line 95
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    .line 96
    return-void
.end method

.method public static create(DDD)Lorg/locationtech/jts/math/Vector3D;
    .locals 8
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .prologue
    .line 57
    new-instance v1, Lorg/locationtech/jts/math/Vector3D;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/math/Vector3D;-><init>(DDD)V

    return-object v1
.end method

.method public static create(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/Vector3D;
    .locals 1
    .param p0, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 68
    new-instance v0, Lorg/locationtech/jts/math/Vector3D;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/math/Vector3D;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method

.method private divide(D)Lorg/locationtech/jts/math/Vector3D;
    .locals 7
    .param p1, "d"    # D

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    div-double/2addr v0, p1

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    div-double/2addr v2, p1

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    div-double/2addr v4, p1

    invoke-static/range {v0 .. v5}, Lorg/locationtech/jts/math/Vector3D;->create(DDD)Lorg/locationtech/jts/math/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public static dot(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 6
    .param p0, "v1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "v2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static dot(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 18
    .param p0, "A"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "B"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "C"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "D"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 36
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v2, v14, v16

    .line 37
    .local v2, "ABx":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .line 38
    .local v4, "ABy":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v16, v0

    sub-double v6, v14, v16

    .line 39
    .local v6, "ABz":D
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v8, v14, v16

    .line 40
    .local v8, "CDx":D
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v10, v14, v16

    .line 41
    .local v10, "CDy":D
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v16, v0

    sub-double v12, v14, v16

    .line 42
    .local v12, "CDz":D
    mul-double v14, v2, v8

    mul-double v16, v4, v10

    add-double v14, v14, v16

    mul-double v16, v6, v12

    add-double v14, v14, v16

    return-wide v14
.end method

.method public static length(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 6
    .param p0, "v"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normalize(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p0, "v"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 148
    invoke-static {p0}, Lorg/locationtech/jts/math/Vector3D;->length(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 149
    .local v8, "len":D
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    div-double/2addr v2, v8

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    div-double/2addr v4, v8

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    div-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    return-object v1
.end method


# virtual methods
.method public dot(Lorg/locationtech/jts/math/Vector3D;)D
    .locals 6
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector3D;

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/Vector3D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector3D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector3D;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    return-wide v0
.end method

.method public length()D
    .locals 6

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()Lorg/locationtech/jts/math/Vector3D;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 137
    invoke-virtual {p0}, Lorg/locationtech/jts/math/Vector3D;->length()D

    move-result-wide v6

    .line 138
    .local v6, "length":D
    cmpl-double v2, v6, v0

    if-lez v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/locationtech/jts/math/Vector3D;->length()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/math/Vector3D;->divide(D)Lorg/locationtech/jts/math/Vector3D;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    move-wide v2, v0

    move-wide v4, v0

    invoke-static/range {v0 .. v5}, Lorg/locationtech/jts/math/Vector3D;->create(DDD)Lorg/locationtech/jts/math/Vector3D;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector3D;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
