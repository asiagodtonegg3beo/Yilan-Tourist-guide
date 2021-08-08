.class public Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;
.super Ljava/lang/Object;
.source "PackedCoordinateSequenceFactory.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFactory;


# static fields
.field public static final DOUBLE:I = 0x0

.field public static final DOUBLE_FACTORY:Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;

.field public static final FLOAT:I = 0x1

.field public static final FLOAT_FACTORY:Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;


# instance fields
.field private dimension:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;-><init>(I)V

    sput-object v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->DOUBLE_FACTORY:Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;

    .line 30
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;-><init>(I)V

    sput-object v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->FLOAT_FACTORY:Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;-><init>(II)V

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "dimension"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->type:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->dimension:I

    .line 65
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->setType(I)V

    .line 66
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->setDimension(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public create(II)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "size"    # I
    .param p2, "dimension"    # I

    .prologue
    .line 144
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->type:I

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;-><init>(II)V

    .line 147
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;-><init>(II)V

    goto :goto_0
.end method

.method public create(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 3
    .param p1, "coordSeq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 109
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->type:I

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;

    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->dimension:I

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;-><init>([Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 112
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;

    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->dimension:I

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;-><init>([Lorg/locationtech/jts/geom/Coordinate;I)V

    goto :goto_0
.end method

.method public create([DI)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "packedCoordinates"    # [D
    .param p2, "dimension"    # I

    .prologue
    .line 121
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->type:I

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;-><init>([DI)V

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;-><init>([DI)V

    goto :goto_0
.end method

.method public create([FI)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "packedCoordinates"    # [F
    .param p2, "dimension"    # I

    .prologue
    .line 133
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->type:I

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;-><init>([FI)V

    .line 136
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;-><init>([FI)V

    goto :goto_0
.end method

.method public create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 2
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 98
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->type:I

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->dimension:I

    invoke-direct {v0, p1, v1}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;-><init>([Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->dimension:I

    invoke-direct {v0, p1, v1}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;-><init>([Lorg/locationtech/jts/geom/Coordinate;I)V

    goto :goto_0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->dimension:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->type:I

    return v0
.end method

.method public setDimension(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 92
    iput p1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->dimension:I

    return-void
.end method

.method public setType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 84
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput p1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequenceFactory;->type:I

    .line 87
    return-void
.end method
