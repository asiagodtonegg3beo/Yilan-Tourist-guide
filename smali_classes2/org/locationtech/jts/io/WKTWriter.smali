.class public Lorg/locationtech/jts/io/WKTWriter;
.super Ljava/lang/Object;
.source "WKTWriter.java"


# static fields
.field private static final INDENT:I = 0x2


# instance fields
.field private coordsPerLine:I

.field private formatter:Ljava/text/DecimalFormat;

.field private indentTabStr:Ljava/lang/String;

.field private isFormatted:Z

.field private level:I

.field private outputDimension:I

.field private useFormatting:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x2

    iput v0, p0, Lorg/locationtech/jts/io/WKTWriter;->outputDimension:I

    .line 177
    iput-boolean v1, p0, Lorg/locationtech/jts/io/WKTWriter;->isFormatted:Z

    .line 178
    iput-boolean v1, p0, Lorg/locationtech/jts/io/WKTWriter;->useFormatting:Z

    .line 179
    iput v1, p0, Lorg/locationtech/jts/io/WKTWriter;->level:I

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    .line 181
    const-string v0, "  "

    iput-object v0, p0, Lorg/locationtech/jts/io/WKTWriter;->indentTabStr:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "outputDimension"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput v1, p0, Lorg/locationtech/jts/io/WKTWriter;->outputDimension:I

    .line 177
    iput-boolean v0, p0, Lorg/locationtech/jts/io/WKTWriter;->isFormatted:Z

    .line 178
    iput-boolean v0, p0, Lorg/locationtech/jts/io/WKTWriter;->useFormatting:Z

    .line 179
    iput v0, p0, Lorg/locationtech/jts/io/WKTWriter;->level:I

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    .line 181
    const-string v0, "  "

    iput-object v0, p0, Lorg/locationtech/jts/io/WKTWriter;->indentTabStr:Ljava/lang/String;

    .line 200
    iput p1, p0, Lorg/locationtech/jts/io/WKTWriter;->outputDimension:I

    .line 202
    if-lt p1, v1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output dimension (must be 2 or 3)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    return-void
.end method

.method private appendCoordinate(Lorg/locationtech/jts/geom/Coordinate;Ljava/io/Writer;)V
    .locals 4
    .param p1, "coordinate"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/io/WKTWriter;->writeNumber(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/io/WKTWriter;->writeNumber(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 530
    iget v0, p0, Lorg/locationtech/jts/io/WKTWriter;->outputDimension:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 532
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/io/WKTWriter;->writeNumber(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method

.method private appendCoordinate(Lorg/locationtech/jts/geom/CoordinateSequence;ILjava/io/Writer;)V
    .locals 7
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "i"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/locationtech/jts/io/WKTWriter;->writeNumber(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/locationtech/jts/io/WKTWriter;->writeNumber(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 510
    iget v2, p0, Lorg/locationtech/jts/io/WKTWriter;->outputDimension:I

    if-lt v2, v6, :cond_0

    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v2

    if-lt v2, v6, :cond_0

    .line 511
    invoke-interface {p1, p2, v6}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v0

    .line 512
    .local v0, "z":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/io/WKTWriter;->writeNumber(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 517
    .end local v0    # "z":D
    :cond_0
    return-void
.end method

.method private appendGeometryCollectionTaggedText(Lorg/locationtech/jts/geom/GeometryCollection;ILjava/io/Writer;)V
    .locals 1
    .param p1, "geometryCollection"    # Lorg/locationtech/jts/geom/GeometryCollection;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    const-string v0, "GEOMETRYCOLLECTION "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendGeometryCollectionText(Lorg/locationtech/jts/geom/GeometryCollection;ILjava/io/Writer;)V

    .line 474
    return-void
.end method

.method private appendGeometryCollectionText(Lorg/locationtech/jts/geom/GeometryCollection;ILjava/io/Writer;)V
    .locals 3
    .param p1, "geometryCollection"    # Lorg/locationtech/jts/geom/GeometryCollection;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    const-string v2, "EMPTY"

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 746
    :goto_0
    return-void

    .line 735
    :cond_0
    move v1, p2

    .line 736
    .local v1, "level2":I
    const-string v2, "("

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 738
    if-lez v0, :cond_1

    .line 739
    const-string v2, ", "

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 740
    add-int/lit8 v1, p2, 0x1

    .line 742
    :cond_1
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-direct {p0, v2, v1, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendGeometryTaggedText(Lorg/locationtech/jts/geom/Geometry;ILjava/io/Writer;)V

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 744
    :cond_2
    const-string v2, ")"

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendGeometryTaggedText(Lorg/locationtech/jts/geom/Geometry;ILjava/io/Writer;)V
    .locals 3
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->indent(ILjava/io/Writer;)V

    .line 328
    instance-of v1, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 329
    check-cast v0, Lorg/locationtech/jts/geom/Point;

    .line 330
    .local v0, "point":Lorg/locationtech/jts/geom/Point;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Point;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v2

    invoke-direct {p0, v1, p2, p3, v2}, Lorg/locationtech/jts/io/WKTWriter;->appendPointTaggedText(Lorg/locationtech/jts/geom/Coordinate;ILjava/io/Writer;Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 357
    .end local v0    # "point":Lorg/locationtech/jts/geom/Point;
    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return-void

    .line 332
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v1, p1, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v1, :cond_1

    .line 333
    check-cast p1, Lorg/locationtech/jts/geom/LinearRing;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendLinearRingTaggedText(Lorg/locationtech/jts/geom/LinearRing;ILjava/io/Writer;)V

    goto :goto_0

    .line 335
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v1, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v1, :cond_2

    .line 336
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendLineStringTaggedText(Lorg/locationtech/jts/geom/LineString;ILjava/io/Writer;)V

    goto :goto_0

    .line 338
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v1, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v1, :cond_3

    .line 339
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendPolygonTaggedText(Lorg/locationtech/jts/geom/Polygon;ILjava/io/Writer;)V

    goto :goto_0

    .line 341
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v1, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-eqz v1, :cond_4

    .line 342
    check-cast p1, Lorg/locationtech/jts/geom/MultiPoint;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendMultiPointTaggedText(Lorg/locationtech/jts/geom/MultiPoint;ILjava/io/Writer;)V

    goto :goto_0

    .line 344
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v1, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v1, :cond_5

    .line 345
    check-cast p1, Lorg/locationtech/jts/geom/MultiLineString;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendMultiLineStringTaggedText(Lorg/locationtech/jts/geom/MultiLineString;ILjava/io/Writer;)V

    goto :goto_0

    .line 347
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    instance-of v1, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v1, :cond_6

    .line 348
    check-cast p1, Lorg/locationtech/jts/geom/MultiPolygon;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendMultiPolygonTaggedText(Lorg/locationtech/jts/geom/MultiPolygon;ILjava/io/Writer;)V

    goto :goto_0

    .line 350
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    instance-of v1, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v1, :cond_7

    .line 351
    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendGeometryCollectionTaggedText(Lorg/locationtech/jts/geom/GeometryCollection;ILjava/io/Writer;)V

    goto :goto_0

    .line 354
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Geometry implementation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v1}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendLineStringTaggedText(Lorg/locationtech/jts/geom/LineString;ILjava/io/Writer;)V
    .locals 1
    .param p1, "lineString"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const-string v0, "LINESTRING "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendLineStringText(Lorg/locationtech/jts/geom/LineString;IZLjava/io/Writer;)V

    .line 388
    return-void
.end method

.method private appendLineStringText(Lorg/locationtech/jts/geom/LineString;IZLjava/io/Writer;)V
    .locals 2
    .param p1, "lineString"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "level"    # I
    .param p3, "doIndent"    # Z
    .param p4, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const-string v1, "EMPTY"

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 606
    :goto_0
    return-void

    .line 592
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p4}, Lorg/locationtech/jts/io/WKTWriter;->indent(ILjava/io/Writer;)V

    .line 593
    :cond_1
    const-string v1, "("

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 595
    if-lez v0, :cond_2

    .line 596
    const-string v1, ", "

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 597
    iget v1, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    if-lez v1, :cond_2

    iget v1, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    rem-int v1, v0, v1

    if-nez v1, :cond_2

    .line 599
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1, p4}, Lorg/locationtech/jts/io/WKTWriter;->indent(ILjava/io/Writer;)V

    .line 602
    :cond_2
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lorg/locationtech/jts/io/WKTWriter;->appendCoordinate(Lorg/locationtech/jts/geom/Coordinate;Ljava/io/Writer;)V

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_3
    const-string v1, ")"

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendLinearRingTaggedText(Lorg/locationtech/jts/geom/LinearRing;ILjava/io/Writer;)V
    .locals 1
    .param p1, "linearRing"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const-string v0, "LINEARRING "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendLineStringText(Lorg/locationtech/jts/geom/LineString;IZLjava/io/Writer;)V

    .line 402
    return-void
.end method

.method private appendMultiLineStringTaggedText(Lorg/locationtech/jts/geom/MultiLineString;ILjava/io/Writer;)V
    .locals 1
    .param p1, "multiLineString"    # Lorg/locationtech/jts/geom/MultiLineString;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    const-string v0, "MULTILINESTRING "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendMultiLineStringText(Lorg/locationtech/jts/geom/MultiLineString;IZLjava/io/Writer;)V

    .line 445
    return-void
.end method

.method private appendMultiLineStringText(Lorg/locationtech/jts/geom/MultiLineString;IZLjava/io/Writer;)V
    .locals 4
    .param p1, "multiLineString"    # Lorg/locationtech/jts/geom/MultiLineString;
    .param p2, "level"    # I
    .param p3, "indentFirst"    # Z
    .param p4, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiLineString;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    const-string v3, "EMPTY"

    invoke-virtual {p4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 689
    :goto_0
    return-void

    .line 676
    :cond_0
    move v2, p2

    .line 677
    .local v2, "level2":I
    move v0, p3

    .line 678
    .local v0, "doIndent":Z
    const-string v3, "("

    invoke-virtual {p4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 679
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiLineString;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 680
    if-lez v1, :cond_1

    .line 681
    const-string v3, ", "

    invoke-virtual {p4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 682
    add-int/lit8 v2, p2, 0x1

    .line 683
    const/4 v0, 0x1

    .line 685
    :cond_1
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/MultiLineString;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/LineString;

    invoke-direct {p0, v3, v2, v0, p4}, Lorg/locationtech/jts/io/WKTWriter;->appendLineStringText(Lorg/locationtech/jts/geom/LineString;IZLjava/io/Writer;)V

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    :cond_2
    const-string v3, ")"

    invoke-virtual {p4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendMultiPointTaggedText(Lorg/locationtech/jts/geom/MultiPoint;ILjava/io/Writer;)V
    .locals 1
    .param p1, "multipoint"    # Lorg/locationtech/jts/geom/MultiPoint;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const-string v0, "MULTIPOINT "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendMultiPointText(Lorg/locationtech/jts/geom/MultiPoint;ILjava/io/Writer;)V

    .line 430
    return-void
.end method

.method private appendMultiPointText(Lorg/locationtech/jts/geom/MultiPoint;ILjava/io/Writer;)V
    .locals 2
    .param p1, "multiPoint"    # Lorg/locationtech/jts/geom/MultiPoint;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPoint;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const-string v1, "EMPTY"

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 659
    :goto_0
    return-void

    .line 647
    :cond_0
    const-string v1, "("

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPoint;->getNumGeometries()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 649
    if-lez v0, :cond_1

    .line 650
    const-string v1, ", "

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 651
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1, p3}, Lorg/locationtech/jts/io/WKTWriter;->indentCoords(IILjava/io/Writer;)V

    .line 653
    :cond_1
    const-string v1, "("

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiPoint;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Point;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendCoordinate(Lorg/locationtech/jts/geom/Coordinate;Ljava/io/Writer;)V

    .line 655
    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_2
    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendMultiPolygonTaggedText(Lorg/locationtech/jts/geom/MultiPolygon;ILjava/io/Writer;)V
    .locals 1
    .param p1, "multiPolygon"    # Lorg/locationtech/jts/geom/MultiPolygon;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    const-string v0, "MULTIPOLYGON "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendMultiPolygonText(Lorg/locationtech/jts/geom/MultiPolygon;ILjava/io/Writer;)V

    .line 459
    return-void
.end method

.method private appendMultiPolygonText(Lorg/locationtech/jts/geom/MultiPolygon;ILjava/io/Writer;)V
    .locals 4
    .param p1, "multiPolygon"    # Lorg/locationtech/jts/geom/MultiPolygon;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    const-string v3, "EMPTY"

    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 718
    :goto_0
    return-void

    .line 705
    :cond_0
    move v2, p2

    .line 706
    .local v2, "level2":I
    const/4 v0, 0x0

    .line 707
    .local v0, "doIndent":Z
    const-string v3, "("

    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 709
    if-lez v1, :cond_1

    .line 710
    const-string v3, ", "

    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 711
    add-int/lit8 v2, p2, 0x1

    .line 712
    const/4 v0, 0x1

    .line 714
    :cond_1
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Polygon;

    invoke-direct {p0, v3, v2, v0, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendPolygonText(Lorg/locationtech/jts/geom/Polygon;IZLjava/io/Writer;)V

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 716
    :cond_2
    const-string v3, ")"

    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendPointTaggedText(Lorg/locationtech/jts/geom/Coordinate;ILjava/io/Writer;Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 1
    .param p1, "coordinate"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .param p4, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const-string v0, "POINT "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/io/WKTWriter;->appendPointText(Lorg/locationtech/jts/geom/Coordinate;ILjava/io/Writer;Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 374
    return-void
.end method

.method private appendPointText(Lorg/locationtech/jts/geom/Coordinate;ILjava/io/Writer;Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 1
    .param p1, "coordinate"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .param p4, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    const-string v0, "EMPTY"

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_0
    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, p1, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendCoordinate(Lorg/locationtech/jts/geom/Coordinate;Ljava/io/Writer;)V

    .line 495
    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendPolygonTaggedText(Lorg/locationtech/jts/geom/Polygon;ILjava/io/Writer;)V
    .locals 1
    .param p1, "polygon"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    const-string v0, "POLYGON "

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendPolygonText(Lorg/locationtech/jts/geom/Polygon;IZLjava/io/Writer;)V

    .line 416
    return-void
.end method

.method private appendPolygonText(Lorg/locationtech/jts/geom/Polygon;IZLjava/io/Writer;)V
    .locals 4
    .param p1, "polygon"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "level"    # I
    .param p3, "indentFirst"    # Z
    .param p4, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const-string v1, "EMPTY"

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    :goto_0
    return-void

    .line 622
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p4}, Lorg/locationtech/jts/io/WKTWriter;->indent(ILjava/io/Writer;)V

    .line 623
    :cond_1
    const-string v1, "("

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2, p4}, Lorg/locationtech/jts/io/WKTWriter;->appendLineStringText(Lorg/locationtech/jts/geom/LineString;IZLjava/io/Writer;)V

    .line 625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 626
    const-string v1, ", "

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, p4}, Lorg/locationtech/jts/io/WKTWriter;->appendLineStringText(Lorg/locationtech/jts/geom/LineString;IZLjava/io/Writer;)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 629
    :cond_2
    const-string v1, ")"

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendSequenceText(Lorg/locationtech/jts/geom/CoordinateSequence;IZLjava/io/Writer;)V
    .locals 2
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "level"    # I
    .param p3, "doIndent"    # Z
    .param p4, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 559
    const-string v1, "EMPTY"

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 576
    :goto_0
    return-void

    .line 562
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p4}, Lorg/locationtech/jts/io/WKTWriter;->indent(ILjava/io/Writer;)V

    .line 563
    :cond_1
    const-string v1, "("

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 565
    if-lez v0, :cond_2

    .line 566
    const-string v1, ", "

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 567
    iget v1, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    if-lez v1, :cond_2

    iget v1, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    rem-int v1, v0, v1

    if-nez v1, :cond_2

    .line 569
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1, p4}, Lorg/locationtech/jts/io/WKTWriter;->indent(ILjava/io/Writer;)V

    .line 572
    :cond_2
    invoke-direct {p0, p1, v0, p4}, Lorg/locationtech/jts/io/WKTWriter;->appendCoordinate(Lorg/locationtech/jts/geom/CoordinateSequence;ILjava/io/Writer;)V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_3
    const-string v1, ")"

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static createFormatter(Lorg/locationtech/jts/geom/PrecisionModel;)Ljava/text/DecimalFormat;
    .locals 5
    .param p0, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/PrecisionModel;->getMaximumSignificantDigits()I

    move-result v0

    .line 153
    .local v0, "decimalPlaces":I
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 154
    .local v2, "symbols":Ljava/text/DecimalFormatSymbols;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-lez v0, :cond_0

    const-string v3, "."

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x23

    .line 156
    invoke-static {v4, v0}, Lorg/locationtech/jts/io/WKTWriter;->stringOfChar(CI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "fmtString":Ljava/lang/String;
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    return-object v3

    .line 155
    .end local v1    # "fmtString":Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private indent(ILjava/io/Writer;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    iget-boolean v1, p0, Lorg/locationtech/jts/io/WKTWriter;->useFormatting:Z

    if-eqz v1, :cond_0

    if-gtz p1, :cond_1

    .line 766
    :cond_0
    return-void

    .line 762
    :cond_1
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 764
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTWriter;->indentTabStr:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private indentCoords(IILjava/io/Writer;)V
    .locals 1
    .param p1, "coordIndex"    # I
    .param p2, "level"    # I
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    iget v0, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/locationtech/jts/io/WKTWriter;->indent(ILjava/io/Writer;)V

    goto :goto_0
.end method

.method public static stringOfChar(CI)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # C
    .param p1, "count"    # I

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;
    .locals 4
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LINESTRING ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Ljava/lang/String;
    .locals 6
    .param p0, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "LINESTRING "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const-string v2, " EMPTY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 86
    :cond_0
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 88
    if-lez v1, :cond_1

    .line 89
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    :cond_2
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static toLineString([Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;
    .locals 6
    .param p0, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "LINESTRING "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    array-length v2, p0

    if-nez v2, :cond_0

    .line 110
    const-string v2, " EMPTY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 112
    :cond_0
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 114
    if-lez v1, :cond_1

    .line 115
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_2
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static toPoint(Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;
    .locals 4
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POINT ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeFormatted(Lorg/locationtech/jts/geom/Geometry;ZLjava/io/Writer;)V
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "useFormatting"    # Z
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iput-boolean p2, p0, Lorg/locationtech/jts/io/WKTWriter;->useFormatting:Z

    .line 311
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    invoke-static {v0}, Lorg/locationtech/jts/io/WKTWriter;->createFormatter(Lorg/locationtech/jts/geom/PrecisionModel;)Ljava/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKTWriter;->formatter:Ljava/text/DecimalFormat;

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lorg/locationtech/jts/io/WKTWriter;->appendGeometryTaggedText(Lorg/locationtech/jts/geom/Geometry;ILjava/io/Writer;)V

    .line 313
    return-void
.end method

.method private writeNumber(D)Ljava/lang/String;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 545
    iget-object v0, p0, Lorg/locationtech/jts/io/WKTWriter;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setFormatted(Z)V
    .locals 0
    .param p1, "isFormatted"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lorg/locationtech/jts/io/WKTWriter;->isFormatted:Z

    .line 214
    return-void
.end method

.method public setMaxCoordinatesPerLine(I)V
    .locals 0
    .param p1, "coordsPerLine"    # I

    .prologue
    .line 226
    iput p1, p0, Lorg/locationtech/jts/io/WKTWriter;->coordsPerLine:I

    .line 227
    return-void
.end method

.method public setTab(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 237
    if-gtz p1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab count must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    const/16 v0, 0x20

    invoke-static {v0, p1}, Lorg/locationtech/jts/io/WKTWriter;->stringOfChar(CI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKTWriter;->indentTabStr:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public write(Lorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;
    .locals 3
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 251
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 253
    .local v1, "sw":Ljava/io/Writer;
    :try_start_0
    iget-boolean v2, p0, Lorg/locationtech/jts/io/WKTWriter;->isFormatted:Z

    invoke-direct {p0, p1, v2, v1}, Lorg/locationtech/jts/io/WKTWriter;->writeFormatted(Lorg/locationtech/jts/geom/Geometry;ZLjava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    goto :goto_0
.end method

.method public write(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/locationtech/jts/io/WKTWriter;->writeFormatted(Lorg/locationtech/jts/geom/Geometry;ZLjava/io/Writer;)V

    .line 270
    return-void
.end method

.method public writeFormatted(Lorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;
    .locals 3
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 282
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 284
    .local v1, "sw":Ljava/io/Writer;
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2, v1}, Lorg/locationtech/jts/io/WKTWriter;->writeFormatted(Lorg/locationtech/jts/geom/Geometry;ZLjava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    goto :goto_0
.end method

.method public writeFormatted(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/locationtech/jts/io/WKTWriter;->writeFormatted(Lorg/locationtech/jts/geom/Geometry;ZLjava/io/Writer;)V

    .line 301
    return-void
.end method
