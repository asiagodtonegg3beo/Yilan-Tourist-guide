.class Lorg/locationtech/jts/geom/DefaultCoordinateSequence;
.super Ljava/lang/Object;
.source "DefaultCoordinateSequence.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xcb44a778db18e0aL


# instance fields
.field private coordinates:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v1, p1, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 66
    iget-object v1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/CoordinateSequence;)V
    .locals 3
    .param p1, "coordSeq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {p1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinateCopy(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    aput-object v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lorg/locationtech/jts/geom/Geometry;->hasNullElements([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null coordinate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->size()I

    move-result v2

    new-array v0, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 147
    .local v0, "cloneCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 148
    iget-object v2, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    aput-object v2, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    new-instance v2, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;

    invoke-direct {v2, v0}, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v2
.end method

.method public expandEnvelope(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Envelope;
    .locals 2
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-object p1
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 100
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 101
    return-void
.end method

.method public getCoordinateCopy(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 92
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x3

    return v0
.end method

.method public getOrdinate(II)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "ordinateIndex"    # I

    .prologue
    .line 122
    packed-switch p2, :pswitch_data_0

    .line 127
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getX(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    return-wide v0
.end method

.method public getY(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    return-wide v0
.end method

.method public setOrdinate(IID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ordinateIndex"    # I
    .param p3, "value"    # D

    .prologue
    .line 134
    packed-switch p2, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iput-wide p3, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iput-wide p3, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iput-wide p3, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    return v0
.end method

.method public toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    iget-object v2, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    iget-object v2, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 188
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v2, p0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .end local v0    # "i":I
    .end local v1    # "strBuilder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, "()"

    goto :goto_1
.end method
