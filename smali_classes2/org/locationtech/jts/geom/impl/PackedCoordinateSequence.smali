.class public abstract Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;
.super Ljava/lang/Object;
.source "PackedCoordinateSequence.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;,
        Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;
    }
.end annotation


# instance fields
.field protected coordRef:Ljava/lang/ref/SoftReference;

.field protected dimension:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCachedCoords()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->coordRef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->coordRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v0, v1

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    .line 106
    .local v0, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v0, :cond_0

    .line 115
    .end local v0    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object v0

    .line 110
    .restart local v0    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    iput-object v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->coordRef:Ljava/lang/ref/SoftReference;

    move-object v0, v2

    .line 111
    goto :goto_0

    .end local v0    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    move-object v0, v2

    .line 115
    goto :goto_0
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getCachedCoords()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 61
    .local v0, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v0, :cond_0

    .line 62
    aget-object v1, v0, p1

    .line 64
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getCoordinateInternal(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    goto :goto_0
.end method

.method public getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v2, 0x2

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 79
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->dimension:I

    if-le v0, v2, :cond_0

    invoke-virtual {p0, p1, v2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 80
    :cond_0
    return-void
.end method

.method public getCoordinateCopy(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getCoordinateInternal(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCoordinateInternal(I)Lorg/locationtech/jts/geom/Coordinate;
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->dimension:I

    return v0
.end method

.method public abstract getOrdinate(II)D
.end method

.method public getX(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getY(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract setOrdinate(IID)V
.end method

.method public setX(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->coordRef:Ljava/lang/ref/SoftReference;

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->setOrdinate(IID)V

    .line 148
    return-void
.end method

.method public setY(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->coordRef:Ljava/lang/ref/SoftReference;

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->setOrdinate(IID)V

    .line 159
    return-void
.end method

.method public toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getCachedCoords()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 88
    .local v0, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 97
    .end local v0    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    .local v1, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object v1

    .line 91
    .end local v1    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v0    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->size()I

    move-result v3

    new-array v0, v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 93
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->getCoordinateInternal(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    aput-object v3, v0, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_1
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;->coordRef:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 97
    .end local v0    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v1    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, Lorg/locationtech/jts/geom/CoordinateSequences;->toString(Lorg/locationtech/jts/geom/CoordinateSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
