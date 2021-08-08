.class public Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;
.super Ljava/lang/Object;
.source "AffineTransformationBuilder.java"


# instance fields
.field private dest0:Lorg/locationtech/jts/geom/Coordinate;

.field private dest1:Lorg/locationtech/jts/geom/Coordinate;

.field private dest2:Lorg/locationtech/jts/geom/Coordinate;

.field private m00:D

.field private m01:D

.field private m02:D

.field private m10:D

.field private m11:D

.field private m12:D

.field private src0:Lorg/locationtech/jts/geom/Coordinate;

.field private src1:Lorg/locationtech/jts/geom/Coordinate;

.field private src2:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "src0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "src1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "src2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "dest0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p5, "dest1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p6, "dest2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src0:Lorg/locationtech/jts/geom/Coordinate;

    .line 76
    iput-object p2, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src1:Lorg/locationtech/jts/geom/Coordinate;

    .line 77
    iput-object p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src2:Lorg/locationtech/jts/geom/Coordinate;

    .line 78
    iput-object p4, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest0:Lorg/locationtech/jts/geom/Coordinate;

    .line 79
    iput-object p5, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest1:Lorg/locationtech/jts/geom/Coordinate;

    .line 80
    iput-object p6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest2:Lorg/locationtech/jts/geom/Coordinate;

    .line 81
    return-void
.end method

.method private compute()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    new-array v0, v9, [D

    iget-object v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aput-wide v6, v0, v4

    iget-object v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aput-wide v6, v0, v5

    iget-object v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest2:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aput-wide v6, v0, v8

    .line 111
    .local v0, "bx":[D
    invoke-direct {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->solve([D)[D

    move-result-object v2

    .line 112
    .local v2, "row0":[D
    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v4

    .line 113
    :cond_1
    aget-wide v6, v2, v4

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m00:D

    .line 114
    aget-wide v6, v2, v5

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m01:D

    .line 115
    aget-wide v6, v2, v8

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m02:D

    .line 117
    new-array v1, v9, [D

    iget-object v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aput-wide v6, v1, v4

    iget-object v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aput-wide v6, v1, v5

    iget-object v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->dest2:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aput-wide v6, v1, v8

    .line 118
    .local v1, "by":[D
    invoke-direct {p0, v1}, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->solve([D)[D

    move-result-object v3

    .line 119
    .local v3, "row1":[D
    if-eqz v3, :cond_0

    .line 120
    aget-wide v6, v3, v4

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m10:D

    .line 121
    aget-wide v6, v3, v5

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m11:D

    .line 122
    aget-wide v6, v3, v8

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m12:D

    move v4, v5

    .line 123
    goto :goto_0
.end method

.method private solve([D)[D
    .locals 10
    .param p1, "b"    # [D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    new-array v0, v7, [[D

    new-array v1, v7, [D

    iget-object v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aput-wide v2, v1, v4

    iget-object v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aput-wide v2, v1, v5

    aput-wide v8, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [D

    iget-object v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aput-wide v2, v1, v4

    iget-object v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aput-wide v2, v1, v5

    aput-wide v8, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [D

    iget-object v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src2:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aput-wide v2, v1, v4

    iget-object v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->src2:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aput-wide v2, v1, v5

    aput-wide v8, v1, v6

    aput-object v1, v0, v6

    .line 141
    .local v0, "a":[[D
    invoke-static {v0, p1}, Lorg/locationtech/jts/math/Matrix;->solve([[D[D)[D

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getTransformation()Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 14

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->compute()Z

    move-result v0

    .line 95
    .local v0, "isSolvable":Z
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lorg/locationtech/jts/geom/util/AffineTransformation;

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m00:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m01:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m02:D

    iget-wide v8, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m10:D

    iget-wide v10, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m11:D

    iget-wide v12, p0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->m12:D

    invoke-direct/range {v1 .. v13}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>(DDDDDD)V

    .line 97
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
