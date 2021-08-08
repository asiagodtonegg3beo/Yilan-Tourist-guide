.class public Lorg/locationtech/jts/io/WKBWriter;
.super Ljava/lang/Object;
.source "WKBWriter.java"


# instance fields
.field private buf:[B

.field private byteArrayOS:Ljava/io/ByteArrayOutputStream;

.field private byteArrayOutStream:Lorg/locationtech/jts/io/OutStream;

.field private byteOrder:I

.field private includeSRID:Z

.field private outputDimension:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/io/WKBWriter;-><init>(II)V

    .line 214
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "outputDimension"    # I

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/io/WKBWriter;-><init>(II)V

    .line 227
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "outputDimension"    # I
    .param p2, "byteOrder"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/io/WKBWriter;-><init>(IIZ)V

    .line 257
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3
    .param p1, "outputDimension"    # I
    .param p2, "byteOrder"    # I
    .param p3, "includeSRID"    # Z

    .prologue
    const/4 v2, 0x2

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput v2, p0, Lorg/locationtech/jts/io/WKBWriter;->outputDimension:I

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/io/WKBWriter;->includeSRID:Z

    .line 203
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/io/WKBWriter;->byteArrayOS:Ljava/io/ByteArrayOutputStream;

    .line 204
    new-instance v0, Lorg/locationtech/jts/io/OutputStreamOutStream;

    iget-object v1, p0, Lorg/locationtech/jts/io/WKBWriter;->byteArrayOS:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/io/OutputStreamOutStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/locationtech/jts/io/WKBWriter;->byteArrayOutStream:Lorg/locationtech/jts/io/OutStream;

    .line 206
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    .line 272
    iput p1, p0, Lorg/locationtech/jts/io/WKBWriter;->outputDimension:I

    .line 273
    iput p2, p0, Lorg/locationtech/jts/io/WKBWriter;->byteOrder:I

    .line 274
    iput-boolean p3, p0, Lorg/locationtech/jts/io/WKBWriter;->includeSRID:Z

    .line 276
    if-lt p1, v2, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output dimension must be 2 or 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "outputDimension"    # I
    .param p2, "includeSRID"    # Z

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/locationtech/jts/io/WKBWriter;-><init>(IIZ)V

    .line 243
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 171
    invoke-static {p0}, Lorg/locationtech/jts/io/WKBWriter;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 182
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 184
    aget-byte v0, p0, v2

    .line 185
    .local v0, "b":B
    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lorg/locationtech/jts/io/WKBWriter;->toHexDigit(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    and-int/lit8 v3, v0, 0xf

    invoke-static {v3}, Lorg/locationtech/jts/io/WKBWriter;->toHexDigit(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static toHexDigit(I)C
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 193
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-le p0, v0, :cond_1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nibble value out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    .line 196
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 197
    :goto_0
    return v0

    :cond_2
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_0
.end method

.method private writeByteOrder(Lorg/locationtech/jts/io/OutStream;)V
    .locals 4
    .param p1, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    iget v0, p0, Lorg/locationtech/jts/io/WKBWriter;->byteOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    aput-byte v3, v0, v2

    .line 377
    :goto_0
    iget-object v0, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    invoke-interface {p1, v0, v3}, Lorg/locationtech/jts/io/OutStream;->write([BI)V

    .line 378
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    aput-byte v2, v0, v2

    goto :goto_0
.end method

.method private writeCoordinate(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/io/OutStream;)V
    .locals 8
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "index"    # I
    .param p3, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x8

    .line 412
    invoke-interface {p1, p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v2

    iget-object v4, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    iget v5, p0, Lorg/locationtech/jts/io/WKBWriter;->byteOrder:I

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/io/ByteOrderValues;->putDouble(D[BI)V

    .line 413
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    invoke-interface {p3, v2, v6}, Lorg/locationtech/jts/io/OutStream;->write([BI)V

    .line 414
    invoke-interface {p1, p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v2

    iget-object v4, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    iget v5, p0, Lorg/locationtech/jts/io/WKBWriter;->byteOrder:I

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/io/ByteOrderValues;->putDouble(D[BI)V

    .line 415
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    invoke-interface {p3, v2, v6}, Lorg/locationtech/jts/io/OutStream;->write([BI)V

    .line 418
    iget v2, p0, Lorg/locationtech/jts/io/WKBWriter;->outputDimension:I

    if-lt v2, v7, :cond_1

    .line 420
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 421
    .local v0, "ordVal":D
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 422
    const/4 v2, 0x2

    invoke-interface {p1, p2, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    .line 423
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    iget v3, p0, Lorg/locationtech/jts/io/WKBWriter;->byteOrder:I

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/io/ByteOrderValues;->putDouble(D[BI)V

    .line 424
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    invoke-interface {p3, v2, v6}, Lorg/locationtech/jts/io/OutStream;->write([BI)V

    .line 426
    .end local v0    # "ordVal":D
    :cond_1
    return-void
.end method

.method private writeCoordinateSequence(Lorg/locationtech/jts/geom/CoordinateSequence;ZLorg/locationtech/jts/io/OutStream;)V
    .locals 2
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "writeSize"    # Z
    .param p3, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    if-eqz p2, :cond_0

    .line 402
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lorg/locationtech/jts/io/WKBWriter;->writeInt(ILorg/locationtech/jts/io/OutStream;)V

    .line 404
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 405
    invoke-direct {p0, p1, v0, p3}, Lorg/locationtech/jts/io/WKBWriter;->writeCoordinate(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/io/OutStream;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method private writeGeometryCollection(ILorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/io/OutStream;)V
    .locals 2
    .param p1, "geometryType"    # I
    .param p2, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;
    .param p3, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0, p3}, Lorg/locationtech/jts/io/WKBWriter;->writeByteOrder(Lorg/locationtech/jts/io/OutStream;)V

    .line 364
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKBWriter;->writeGeometryType(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/io/OutStream;)V

    .line 365
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lorg/locationtech/jts/io/WKBWriter;->writeInt(ILorg/locationtech/jts/io/OutStream;)V

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 367
    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lorg/locationtech/jts/io/WKBWriter;->write(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/io/OutStream;)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method private writeGeometryType(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/io/OutStream;)V
    .locals 5
    .param p1, "geometryType"    # I
    .param p2, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 383
    iget v3, p0, Lorg/locationtech/jts/io/WKBWriter;->outputDimension:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/high16 v0, -0x80000000

    .line 384
    .local v0, "flag3D":I
    :goto_0
    or-int v1, p1, v0

    .line 385
    .local v1, "typeInt":I
    iget-boolean v3, p0, Lorg/locationtech/jts/io/WKBWriter;->includeSRID:Z

    if-eqz v3, :cond_0

    const/high16 v2, 0x20000000

    :cond_0
    or-int/2addr v1, v2

    .line 386
    invoke-direct {p0, v1, p3}, Lorg/locationtech/jts/io/WKBWriter;->writeInt(ILorg/locationtech/jts/io/OutStream;)V

    .line 387
    iget-boolean v2, p0, Lorg/locationtech/jts/io/WKBWriter;->includeSRID:Z

    if-eqz v2, :cond_1

    .line 388
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getSRID()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lorg/locationtech/jts/io/WKBWriter;->writeInt(ILorg/locationtech/jts/io/OutStream;)V

    .line 390
    :cond_1
    return-void

    .end local v0    # "flag3D":I
    .end local v1    # "typeInt":I
    :cond_2
    move v0, v2

    .line 383
    goto :goto_0
.end method

.method private writeInt(ILorg/locationtech/jts/io/OutStream;)V
    .locals 2
    .param p1, "intValue"    # I
    .param p2, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    iget v1, p0, Lorg/locationtech/jts/io/WKBWriter;->byteOrder:I

    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/io/ByteOrderValues;->putInt(I[BI)V

    .line 395
    iget-object v0, p0, Lorg/locationtech/jts/io/WKBWriter;->buf:[B

    const/4 v1, 0x4

    invoke-interface {p2, v0, v1}, Lorg/locationtech/jts/io/OutStream;->write([BI)V

    .line 396
    return-void
.end method

.method private writeLineString(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/io/OutStream;)V
    .locals 2
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeByteOrder(Lorg/locationtech/jts/io/OutStream;)V

    .line 344
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeGeometryType(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/io/OutStream;)V

    .line 345
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeCoordinateSequence(Lorg/locationtech/jts/geom/CoordinateSequence;ZLorg/locationtech/jts/io/OutStream;)V

    .line 346
    return-void
.end method

.method private writePoint(Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/io/OutStream;)V
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Point;
    .param p2, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty Points cannot be represented in WKB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-direct {p0, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeByteOrder(Lorg/locationtech/jts/io/OutStream;)V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeGeometryType(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/io/OutStream;)V

    .line 337
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeCoordinateSequence(Lorg/locationtech/jts/geom/CoordinateSequence;ZLorg/locationtech/jts/io/OutStream;)V

    .line 338
    return-void
.end method

.method private writePolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/io/OutStream;)V
    .locals 3
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 350
    invoke-direct {p0, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeByteOrder(Lorg/locationtech/jts/io/OutStream;)V

    .line 351
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeGeometryType(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/io/OutStream;)V

    .line 352
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeInt(ILorg/locationtech/jts/io/OutStream;)V

    .line 353
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeCoordinateSequence(Lorg/locationtech/jts/geom/CoordinateSequence;ZLorg/locationtech/jts/io/OutStream;)V

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 355
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeCoordinateSequence(Lorg/locationtech/jts/geom/CoordinateSequence;ZLorg/locationtech/jts/io/OutStream;)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method public write(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/io/OutStream;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "os"    # Lorg/locationtech/jts/io/OutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_0

    .line 308
    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writePoint(Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/io/OutStream;)V

    .line 329
    :goto_0
    return-void

    .line 310
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_1

    .line 311
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeLineString(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/io/OutStream;)V

    goto :goto_0

    .line 312
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_2

    .line 313
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writePolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/io/OutStream;)V

    goto :goto_0

    .line 314
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-eqz v0, :cond_3

    .line 315
    const/4 v0, 0x4

    check-cast p1, Lorg/locationtech/jts/geom/MultiPoint;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeGeometryCollection(ILorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/io/OutStream;)V

    goto :goto_0

    .line 317
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v0, :cond_4

    .line 318
    const/4 v0, 0x5

    check-cast p1, Lorg/locationtech/jts/geom/MultiLineString;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeGeometryCollection(ILorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/io/OutStream;)V

    goto :goto_0

    .line 320
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v0, :cond_5

    .line 321
    const/4 v0, 0x6

    check-cast p1, Lorg/locationtech/jts/geom/MultiPolygon;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeGeometryCollection(ILorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/io/OutStream;)V

    goto :goto_0

    .line 323
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_6

    .line 324
    const/4 v0, 0x7

    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/WKBWriter;->writeGeometryCollection(ILorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/io/OutStream;)V

    goto :goto_0

    .line 327
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    const-string v0, "Unknown Geometry type"

    invoke-static {v0}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write(Lorg/locationtech/jts/geom/Geometry;)[B
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBWriter;->byteArrayOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 290
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBWriter;->byteArrayOutStream:Lorg/locationtech/jts/io/OutStream;

    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/io/WKBWriter;->write(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/io/OutStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBWriter;->byteArrayOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected IO exception: "

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
