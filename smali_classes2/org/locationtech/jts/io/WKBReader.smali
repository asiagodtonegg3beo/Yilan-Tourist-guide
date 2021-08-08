.class public Lorg/locationtech/jts/io/WKBReader;
.super Ljava/lang/Object;
.source "WKBReader.java"


# static fields
.field private static final INVALID_GEOM_TYPE_MSG:Ljava/lang/String; = "Invalid geometry type encountered in "


# instance fields
.field private SRID:I

.field private csFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

.field private dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private hasSRID:Z

.field private inputDimension:I

.field private isStrict:Z

.field private ordValues:[D

.field private precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/locationtech/jts/io/WKBReader;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 2
    .param p1, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lorg/locationtech/jts/io/WKBReader;->inputDimension:I

    .line 94
    iput-boolean v1, p0, Lorg/locationtech/jts/io/WKBReader;->hasSRID:Z

    .line 95
    iput v1, p0, Lorg/locationtech/jts/io/WKBReader;->SRID:I

    .line 100
    iput-boolean v1, p0, Lorg/locationtech/jts/io/WKBReader;->isStrict:Z

    .line 101
    new-instance v0, Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-direct {v0}, Lorg/locationtech/jts/io/ByteOrderDataInStream;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    .line 109
    iput-object p1, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 110
    iget-object v0, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKBReader;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 111
    iget-object v0, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKBReader;->csFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    .line 112
    return-void
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 9
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 63
    .local v1, "byteLen":I
    new-array v2, v1, [B

    .line 65
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v3, v7, :cond_1

    .line 66
    mul-int/lit8 v4, v3, 0x2

    .line 67
    .local v4, "i2":I
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 68
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Hex string has odd length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/locationtech/jts/io/WKBReader;->hexToInt(C)I

    move-result v6

    .line 71
    .local v6, "nib1":I
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/locationtech/jts/io/WKBReader;->hexToInt(C)I

    move-result v5

    .line 72
    .local v5, "nib0":I
    shl-int/lit8 v7, v6, 0x4

    int-to-byte v8, v5

    add-int/2addr v7, v8

    int-to-byte v0, v7

    .line 73
    .local v0, "b":B
    aput-byte v0, v2, v3

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "b":B
    .end local v4    # "i2":I
    .end local v5    # "nib0":I
    .end local v6    # "nib1":I
    :cond_1
    return-object v2
.end method

.method private static hexToInt(C)I
    .locals 4
    .param p0, "hex"    # C

    .prologue
    .line 80
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 81
    .local v0, "nib":I
    if-gez v0, :cond_0

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hex digit: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    return v0
.end method

.method private readCoordinate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/locationtech/jts/io/WKBReader;->inputDimension:I

    if-ge v0, v1, :cond_1

    .line 366
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBReader;->ordValues:[D

    iget-object v2, p0, Lorg/locationtech/jts/io/WKBReader;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    iget-object v3, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v3}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readDouble()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 365
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBReader;->ordValues:[D

    iget-object v2, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v2}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readDouble()D

    move-result-wide v2

    aput-wide v2, v1, v0

    goto :goto_1

    .line 374
    :cond_1
    return-void
.end method

.method private readCoordinateSequence(I)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->csFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    iget v5, p0, Lorg/locationtech/jts/io/WKBReader;->inputDimension:I

    invoke-interface {v4, p1, v5}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create(II)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    .line 330
    .local v2, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-interface {v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v3

    .line 331
    .local v3, "targetDim":I
    iget v4, p0, Lorg/locationtech/jts/io/WKBReader;->inputDimension:I

    if-le v3, v4, :cond_0

    .line 332
    iget v3, p0, Lorg/locationtech/jts/io/WKBReader;->inputDimension:I

    .line 333
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 334
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readCoordinate()V

    .line 335
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 336
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->ordValues:[D

    aget-wide v4, v4, v1

    invoke-interface {v2, v0, v1, v4, v5}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "j":I
    :cond_2
    return-object v2
.end method

.method private readCoordinateSequenceLineString(I)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 344
    invoke-direct {p0, p1}, Lorg/locationtech/jts/io/WKBReader;->readCoordinateSequence(I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 345
    .local v0, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget-boolean v1, p0, Lorg/locationtech/jts/io/WKBReader;->isStrict:Z

    if-eqz v1, :cond_1

    .line 347
    .end local v0    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_0
    :goto_0
    return-object v0

    .line 346
    .restart local v0    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_1
    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 347
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBReader;->csFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    invoke-static {v1, v0, v2}, Lorg/locationtech/jts/geom/CoordinateSequences;->extend(Lorg/locationtech/jts/geom/CoordinateSequenceFactory;Lorg/locationtech/jts/geom/CoordinateSequence;I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private readCoordinateSequenceRing(I)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lorg/locationtech/jts/io/WKBReader;->readCoordinateSequence(I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 353
    .local v0, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget-boolean v1, p0, Lorg/locationtech/jts/io/WKBReader;->isStrict:Z

    if-eqz v1, :cond_1

    .line 355
    .end local v0    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_0
    :goto_0
    return-object v0

    .line 354
    .restart local v0    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_1
    invoke-static {v0}, Lorg/locationtech/jts/geom/CoordinateSequences;->isRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBReader;->csFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    invoke-static {v1, v0}, Lorg/locationtech/jts/geom/CoordinateSequences;->ensureValidRing(Lorg/locationtech/jts/geom/CoordinateSequenceFactory;Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private readGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const v10, 0xffff

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 154
    iget-object v7, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v7}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readByte()B

    move-result v1

    .line 157
    .local v1, "byteOrderWKB":B
    if-ne v1, v8, :cond_6

    .line 159
    iget-object v7, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v7, v11}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->setOrder(I)V

    .line 175
    :cond_0
    :goto_0
    iget-object v7, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v7}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v6

    .line 177
    .local v6, "typeInt":I
    and-int v7, v6, v10

    rem-int/lit16 v3, v7, 0x3e8

    .line 182
    .local v3, "geometryType":I
    const/high16 v7, -0x80000000

    and-int/2addr v7, v6

    if-nez v7, :cond_1

    and-int v7, v6, v10

    div-int/lit16 v7, v7, 0x3e8

    if-eq v7, v8, :cond_1

    and-int v7, v6, v10

    div-int/lit16 v7, v7, 0x3e8

    if-ne v7, v12, :cond_8

    :cond_1
    move v5, v8

    .line 185
    .local v5, "hasZ":Z
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v7, v6

    if-nez v7, :cond_2

    and-int v7, v6, v10

    div-int/lit16 v7, v7, 0x3e8

    if-eq v7, v11, :cond_2

    and-int v7, v6, v10

    div-int/lit16 v7, v7, 0x3e8

    if-ne v7, v12, :cond_9

    :cond_2
    move v4, v8

    .line 187
    .local v4, "hasM":Z
    :goto_2
    if-eqz v5, :cond_a

    move v7, v8

    :goto_3
    add-int/lit8 v10, v7, 0x2

    if-eqz v4, :cond_b

    move v7, v8

    :goto_4
    add-int/2addr v7, v10

    iput v7, p0, Lorg/locationtech/jts/io/WKBReader;->inputDimension:I

    .line 190
    const/high16 v7, 0x20000000

    and-int/2addr v7, v6

    if-eqz v7, :cond_c

    :goto_5
    iput-boolean v8, p0, Lorg/locationtech/jts/io/WKBReader;->hasSRID:Z

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "SRID":I
    iget-boolean v7, p0, Lorg/locationtech/jts/io/WKBReader;->hasSRID:Z

    if-eqz v7, :cond_3

    .line 193
    iget-object v7, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v7}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v0

    .line 197
    :cond_3
    iget-object v7, p0, Lorg/locationtech/jts/io/WKBReader;->ordValues:[D

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/locationtech/jts/io/WKBReader;->ordValues:[D

    array-length v7, v7

    iget v8, p0, Lorg/locationtech/jts/io/WKBReader;->inputDimension:I

    if-ge v7, v8, :cond_5

    .line 198
    :cond_4
    iget v7, p0, Lorg/locationtech/jts/io/WKBReader;->inputDimension:I

    new-array v7, v7, [D

    iput-object v7, p0, Lorg/locationtech/jts/io/WKBReader;->ordValues:[D

    .line 200
    :cond_5
    const/4 v2, 0x0

    .line 201
    .local v2, "geom":Lorg/locationtech/jts/geom/Geometry;
    packed-switch v3, :pswitch_data_0

    .line 224
    new-instance v7, Lorg/locationtech/jts/io/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown WKB type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/locationtech/jts/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 161
    .end local v0    # "SRID":I
    .end local v2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    .end local v3    # "geometryType":I
    .end local v4    # "hasM":Z
    .end local v5    # "hasZ":Z
    .end local v6    # "typeInt":I
    :cond_6
    if-nez v1, :cond_7

    .line 163
    iget-object v7, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v7, v8}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->setOrder(I)V

    goto :goto_0

    .line 165
    :cond_7
    iget-boolean v7, p0, Lorg/locationtech/jts/io/WKBReader;->isStrict:Z

    if-eqz v7, :cond_0

    .line 167
    new-instance v7, Lorg/locationtech/jts/io/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown geometry byte order (not NDR or XDR): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/locationtech/jts/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .restart local v3    # "geometryType":I
    .restart local v6    # "typeInt":I
    :cond_8
    move v5, v9

    .line 182
    goto/16 :goto_1

    .restart local v5    # "hasZ":Z
    :cond_9
    move v4, v9

    .line 185
    goto :goto_2

    .restart local v4    # "hasM":Z
    :cond_a
    move v7, v9

    .line 187
    goto :goto_3

    :cond_b
    move v7, v9

    goto :goto_4

    :cond_c
    move v8, v9

    .line 190
    goto :goto_5

    .line 203
    .restart local v0    # "SRID":I
    .restart local v2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :pswitch_0
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readPoint()Lorg/locationtech/jts/geom/Point;

    move-result-object v2

    .line 226
    :goto_6
    invoke-direct {p0, v2, v0}, Lorg/locationtech/jts/io/WKBReader;->setSRID(Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    .line 227
    return-object v2

    .line 206
    :pswitch_1
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readLineString()Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    .line 207
    goto :goto_6

    .line 209
    :pswitch_2
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    .line 210
    goto :goto_6

    .line 212
    :pswitch_3
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readMultiPoint()Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v2

    .line 213
    goto :goto_6

    .line 215
    :pswitch_4
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readMultiLineString()Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v2

    .line 216
    goto :goto_6

    .line 218
    :pswitch_5
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readMultiPolygon()Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v2

    .line 219
    goto :goto_6

    .line 221
    :pswitch_6
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readGeometryCollection()Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v2

    .line 222
    goto :goto_6

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private readGeometryCollection()Lorg/locationtech/jts/geom/GeometryCollection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v3, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v3}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v2

    .line 320
    .local v2, "numGeom":I
    new-array v0, v2, [Lorg/locationtech/jts/geom/Geometry;

    .line 321
    .local v0, "geoms":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 322
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    aput-object v3, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v3

    return-object v3
.end method

.method private readLineString()Lorg/locationtech/jts/geom/LineString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v2}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v1

    .line 252
    .local v1, "size":I
    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKBReader;->readCoordinateSequenceLineString(I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 253
    .local v0, "pts":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    return-object v2
.end method

.method private readLinearRing()Lorg/locationtech/jts/geom/LinearRing;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v2}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v1

    .line 259
    .local v1, "size":I
    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKBReader;->readCoordinateSequenceRing(I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 260
    .local v0, "pts":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    return-object v2
.end method

.method private readMultiLineString()Lorg/locationtech/jts/geom/MultiLineString;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v4}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v3

    .line 293
    .local v3, "numGeom":I
    new-array v1, v3, [Lorg/locationtech/jts/geom/LineString;

    .line 294
    .local v1, "geoms":[Lorg/locationtech/jts/geom/LineString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 295
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 296
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    instance-of v4, v0, Lorg/locationtech/jts/geom/LineString;

    if-nez v4, :cond_0

    .line 297
    new-instance v4, Lorg/locationtech/jts/io/ParseException;

    const-string v5, "Invalid geometry type encountered in MultiLineString"

    invoke-direct {v4, v5}, Lorg/locationtech/jts/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    :cond_0
    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    aput-object v0, v1, v2

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v4, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v4

    return-object v4
.end method

.method private readMultiPoint()Lorg/locationtech/jts/geom/MultiPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v4}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v3

    .line 280
    .local v3, "numGeom":I
    new-array v1, v3, [Lorg/locationtech/jts/geom/Point;

    .line 281
    .local v1, "geoms":[Lorg/locationtech/jts/geom/Point;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 282
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 283
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    instance-of v4, v0, Lorg/locationtech/jts/geom/Point;

    if-nez v4, :cond_0

    .line 284
    new-instance v4, Lorg/locationtech/jts/io/ParseException;

    const-string v5, "Invalid geometry type encountered in MultiPoint"

    invoke-direct {v4, v5}, Lorg/locationtech/jts/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_0
    check-cast v0, Lorg/locationtech/jts/geom/Point;

    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    aput-object v0, v1, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v4, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v4

    return-object v4
.end method

.method private readMultiPolygon()Lorg/locationtech/jts/geom/MultiPolygon;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v4}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v3

    .line 306
    .local v3, "numGeom":I
    new-array v1, v3, [Lorg/locationtech/jts/geom/Polygon;

    .line 308
    .local v1, "geoms":[Lorg/locationtech/jts/geom/Polygon;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 309
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 310
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    instance-of v4, v0, Lorg/locationtech/jts/geom/Polygon;

    if-nez v4, :cond_0

    .line 311
    new-instance v4, Lorg/locationtech/jts/io/ParseException;

    const-string v5, "Invalid geometry type encountered in MultiPolygon"

    invoke-direct {v4, v5}, Lorg/locationtech/jts/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    :cond_0
    check-cast v0, Lorg/locationtech/jts/geom/Polygon;

    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    aput-object v0, v1, v2

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v4, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v4

    return-object v4
.end method

.method private readPoint()Lorg/locationtech/jts/geom/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKBReader;->readCoordinateSequence(I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 246
    .local v0, "pts":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    return-object v1
.end method

.method private readPolygon()Lorg/locationtech/jts/geom/Polygon;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v4}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->readInt()I

    move-result v2

    .line 266
    .local v2, "numRings":I
    const/4 v0, 0x0

    .line 267
    .local v0, "holes":[Lorg/locationtech/jts/geom/LinearRing;
    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 268
    add-int/lit8 v4, v2, -0x1

    new-array v0, v4, [Lorg/locationtech/jts/geom/LinearRing;

    .line 270
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readLinearRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v3

    .line 271
    .local v3, "shell":Lorg/locationtech/jts/geom/LinearRing;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_1

    .line 272
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readLinearRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v4

    aput-object v4, v0, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/io/WKBReader;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v4, v3, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v4

    return-object v4
.end method

.method private setSRID(Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;
    .locals 0
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "SRID"    # I

    .prologue
    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Geometry;->setSRID(I)V

    .line 240
    :cond_0
    return-object p1
.end method


# virtual methods
.method public read(Lorg/locationtech/jts/io/InStream;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "is"    # Lorg/locationtech/jts/io/InStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBReader;->dis:Lorg/locationtech/jts/io/ByteOrderDataInStream;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/io/ByteOrderDataInStream;->setInStream(Lorg/locationtech/jts/io/InStream;)V

    .line 145
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKBReader;->readGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 146
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    return-object v0
.end method

.method public read([B)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    new-instance v1, Lorg/locationtech/jts/io/ByteArrayInStream;

    invoke-direct {v1, p1}, Lorg/locationtech/jts/io/ByteArrayInStream;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/io/WKBReader;->read(Lorg/locationtech/jts/io/InStream;)Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected IOException caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
