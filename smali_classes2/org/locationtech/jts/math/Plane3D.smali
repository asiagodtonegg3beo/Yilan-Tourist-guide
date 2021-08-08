.class public Lorg/locationtech/jts/math/Plane3D;
.super Ljava/lang/Object;
.source "Plane3D.java"


# static fields
.field public static final XY_PLANE:I = 0x1

.field public static final XZ_PLANE:I = 0x3

.field public static final YZ_PLANE:I = 0x2


# instance fields
.field private basePt:Lorg/locationtech/jts/geom/Coordinate;

.field private normal:Lorg/locationtech/jts/math/Vector3D;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/math/Vector3D;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "normal"    # Lorg/locationtech/jts/math/Vector3D;
    .param p2, "basePt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/locationtech/jts/math/Plane3D;->normal:Lorg/locationtech/jts/math/Vector3D;

    .line 38
    iput-object p2, p0, Lorg/locationtech/jts/math/Plane3D;->basePt:Lorg/locationtech/jts/geom/Coordinate;

    .line 39
    return-void
.end method


# virtual methods
.method public closestAxisPlane()I
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 74
    iget-object v7, p0, Lorg/locationtech/jts/math/Plane3D;->normal:Lorg/locationtech/jts/math/Vector3D;

    invoke-virtual {v7}, Lorg/locationtech/jts/math/Vector3D;->getX()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 75
    .local v0, "xmag":D
    iget-object v7, p0, Lorg/locationtech/jts/math/Plane3D;->normal:Lorg/locationtech/jts/math/Vector3D;

    invoke-virtual {v7}, Lorg/locationtech/jts/math/Vector3D;->getY()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 76
    .local v2, "ymag":D
    iget-object v7, p0, Lorg/locationtech/jts/math/Plane3D;->normal:Lorg/locationtech/jts/math/Vector3D;

    invoke-virtual {v7}, Lorg/locationtech/jts/math/Vector3D;->getZ()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 77
    .local v4, "zmag":D
    cmpl-double v7, v0, v2

    if-lez v7, :cond_1

    .line 78
    cmpl-double v7, v0, v4

    if-lez v7, :cond_0

    .line 79
    const/4 v6, 0x2

    .line 88
    :cond_0
    :goto_0
    return v6

    .line 84
    :cond_1
    cmpl-double v7, v4, v2

    if-gtz v7, :cond_0

    .line 88
    const/4 v6, 0x3

    goto :goto_0
.end method

.method public orientedDistance(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 8
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 54
    new-instance v2, Lorg/locationtech/jts/math/Vector3D;

    iget-object v3, p0, Lorg/locationtech/jts/math/Plane3D;->basePt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p1, v3}, Lorg/locationtech/jts/math/Vector3D;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 55
    .local v2, "pb":Lorg/locationtech/jts/math/Vector3D;
    iget-object v3, p0, Lorg/locationtech/jts/math/Plane3D;->normal:Lorg/locationtech/jts/math/Vector3D;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/math/Vector3D;->dot(Lorg/locationtech/jts/math/Vector3D;)D

    move-result-wide v4

    .line 56
    .local v4, "pbdDotNormal":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "3D Coordinate has NaN ordinate"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/math/Plane3D;->normal:Lorg/locationtech/jts/math/Vector3D;

    invoke-virtual {v3}, Lorg/locationtech/jts/math/Vector3D;->length()D

    move-result-wide v6

    div-double v0, v4, v6

    .line 59
    .local v0, "d":D
    return-wide v0
.end method
