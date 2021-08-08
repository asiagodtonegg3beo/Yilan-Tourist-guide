.class public Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;
.super Ljava/lang/Object;
.source "AxisPlaneCoordinateSequence.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequence;


# static fields
.field private static final XY_INDEX:[I

.field private static final XZ_INDEX:[I

.field private static final YZ_INDEX:[I


# instance fields
.field private indexMap:[I

.field private seq:Lorg/locationtech/jts/geom/CoordinateSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->XY_INDEX:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->XZ_INDEX:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->YZ_INDEX:[I

    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 70
    :array_1
    .array-data 4
        0x0
        0x2
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>(Lorg/locationtech/jts/geom/CoordinateSequence;[I)V
    .locals 0
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "indexMap"    # [I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->seq:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 78
    iput-object p2, p0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->indexMap:[I

    .line 79
    return-void
.end method

.method public static projectToXY(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 2
    .param p0, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 44
    new-instance v0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;

    sget-object v1, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->XY_INDEX:[I

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;[I)V

    return-object v0
.end method

.method public static projectToXZ(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 2
    .param p0, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 55
    new-instance v0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;

    sget-object v1, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->XZ_INDEX:[I

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;[I)V

    return-object v0
.end method

.method public static projectToYZ(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 2
    .param p0, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 66
    new-instance v0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;

    sget-object v1, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->YZ_INDEX:[I

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;[I)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public expandEnvelope(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Envelope;
    .locals 1
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getCoordinateCopy(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 97
    return-void
.end method

.method public getCoordinateCopy(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 90
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getX(I)D

    move-result-wide v2

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getY(I)D

    move-result-wide v4

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getZ(I)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    return-object v1
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x2

    return v0
.end method

.method public getOrdinate(II)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "ordinateIndex"    # I

    .prologue
    .line 113
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 114
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->seq:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget-object v1, p0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->indexMap:[I

    aget v1, v1, p2

    invoke-interface {v0, p1, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getX(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getY(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getZ(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 108
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public setOrdinate(IID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ordinateIndex"    # I
    .param p3, "value"    # D

    .prologue
    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->seq:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    return v0
.end method

.method public toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
