.class public Lorg/locationtech/jts/io/gml2/GMLWriter;
.super Ljava/lang/Object;
.source "GMLWriter.java"


# static fields
.field private static final coordinateSeparator:Ljava/lang/String; = ","

.field private static final tupleSeparator:Ljava/lang/String; = " "


# instance fields
.field private final INDENT:Ljava/lang/String;

.field private customElements:[Ljava/lang/String;

.field private emitNamespace:Z

.field private isRootTag:Z

.field private maxCoordinatesPerLine:I

.field private namespace:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private srsName:Ljava/lang/String;

.field private startingIndentIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "  "

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->INDENT:Ljava/lang/String;

    .line 59
    iput v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->startingIndentIndex:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->maxCoordinatesPerLine:I

    .line 63
    iput-boolean v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->emitNamespace:Z

    .line 65
    iput-boolean v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->isRootTag:Z

    .line 67
    const-string v0, "gml"

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    .line 68
    const-string v0, "http://www.opengis.net/gml"

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->namespace:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->srsName:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->customElements:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "emitNamespace"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "  "

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->INDENT:Ljava/lang/String;

    .line 59
    iput v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->startingIndentIndex:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->maxCoordinatesPerLine:I

    .line 63
    iput-boolean v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->emitNamespace:Z

    .line 65
    iput-boolean v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->isRootTag:Z

    .line 67
    const-string v0, "gml"

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    .line 68
    const-string v0, "http://www.opengis.net/gml"

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->namespace:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->srsName:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->customElements:[Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/io/gml2/GMLWriter;->setNamespace(Z)V

    .line 94
    return-void
.end method

.method private endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 2
    .param p1, "geometryName"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    const-string v0, ">\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method private prefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 474
    :cond_0
    const-string v0, ""

    .line 475
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V
    .locals 3
    .param p1, "geometryName"    # Ljava/lang/String;
    .param p2, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p2, p3}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeAttributes(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 430
    const-string v0, ">\n"

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p2, p3}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeCustomElements(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->isRootTag:Z

    .line 433
    return-void

    .line 427
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startLine(ILjava/io/Writer;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 421
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_0
    return-void
.end method

.method private write(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;I)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->isRootTag:Z

    .line 208
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writePoint(Lorg/locationtech/jts/geom/Point;Ljava/io/Writer;I)V

    .line 227
    :goto_0
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 228
    return-void

    .line 210
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_1

    .line 211
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeLineString(Lorg/locationtech/jts/geom/LineString;Ljava/io/Writer;I)V

    goto :goto_0

    .line 212
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_2

    .line 213
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writePolygon(Lorg/locationtech/jts/geom/Polygon;Ljava/io/Writer;I)V

    goto :goto_0

    .line 214
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-eqz v0, :cond_3

    .line 215
    check-cast p1, Lorg/locationtech/jts/geom/MultiPoint;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeMultiPoint(Lorg/locationtech/jts/geom/MultiPoint;Ljava/io/Writer;I)V

    goto :goto_0

    .line 216
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v0, :cond_4

    .line 217
    check-cast p1, Lorg/locationtech/jts/geom/MultiLineString;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeMultiLineString(Lorg/locationtech/jts/geom/MultiLineString;Ljava/io/Writer;I)V

    goto :goto_0

    .line 218
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v0, :cond_5

    .line 219
    check-cast p1, Lorg/locationtech/jts/geom/MultiPolygon;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeMultiPolygon(Lorg/locationtech/jts/geom/MultiPolygon;Ljava/io/Writer;I)V

    goto :goto_0

    .line 220
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_6

    .line 221
    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    iget v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->startingIndentIndex:I

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeGeometryCollection(Lorg/locationtech/jts/geom/GeometryCollection;Ljava/io/Writer;I)V

    goto :goto_0

    .line 224
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled geometry type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private write([Lorg/locationtech/jts/geom/Coordinate;Ljava/io/Writer;I)V
    .locals 6
    .param p1, "coords"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 378
    const-string v3, "coordinates"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 380
    const/4 v0, 0x2

    .line 382
    .local v0, "dim":I
    array-length v3, p1

    if-lez v3, :cond_0

    .line 383
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    const/4 v0, 0x3

    .line 387
    :cond_0
    const/4 v2, 0x1

    .line 388
    .local v2, "isNewLine":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 389
    if-eqz v2, :cond_1

    .line 390
    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 391
    const/4 v2, 0x0

    .line 393
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 395
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 404
    :cond_2
    :goto_1
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 407
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->maxCoordinatesPerLine:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_3

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 408
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    const/4 v2, 0x1

    .line 388
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 399
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 401
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_5
    if-nez v2, :cond_6

    .line 413
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    :cond_6
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 416
    const-string v3, "coordinates"

    invoke-direct {p0, v3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 417
    return-void
.end method

.method private writeAttributes(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    if-nez p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-boolean v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->isRootTag:Z

    if-eqz v0, :cond_0

    .line 441
    iget-boolean v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->emitNamespace:Z

    if-eqz v0, :cond_3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 446
    :cond_3
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->srsName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->srsName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " srsName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->srsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private writeCustomElements(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    if-nez p1, :cond_1

    .line 462
    :cond_0
    return-void

    .line 455
    :cond_1
    iget-boolean v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->isRootTag:Z

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->customElements:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->customElements:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 459
    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->customElements:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeGeometryCollection(Lorg/locationtech/jts/geom/GeometryCollection;Ljava/io/Writer;I)V
    .locals 3
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 349
    const-string v1, "MultiGeometry"

    invoke-direct {p0, v1, p1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 351
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 352
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 353
    const-string v1, "geometryMember"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 355
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    add-int/lit8 v2, p3, 0x2

    invoke-direct {p0, v1, p2, v2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->write(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;I)V

    .line 357
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 358
    const-string v1, "geometryMember"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 361
    const-string v1, "MultiGeometry"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 362
    return-void
.end method

.method private writeLineString(Lorg/locationtech/jts/geom/LineString;Ljava/io/Writer;I)V
    .locals 2
    .param p1, "ls"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 245
    const-string v0, "LineString"

    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 247
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/locationtech/jts/io/gml2/GMLWriter;->write([Lorg/locationtech/jts/geom/Coordinate;Ljava/io/Writer;I)V

    .line 249
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 250
    const-string v0, "LineString"

    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 251
    return-void
.end method

.method private writeLinearRing(Lorg/locationtech/jts/geom/LinearRing;Ljava/io/Writer;I)V
    .locals 2
    .param p1, "lr"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 257
    const-string v0, "LinearRing"

    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 259
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/locationtech/jts/io/gml2/GMLWriter;->write([Lorg/locationtech/jts/geom/Coordinate;Ljava/io/Writer;I)V

    .line 261
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 262
    const-string v0, "LinearRing"

    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 263
    return-void
.end method

.method private writeMultiLineString(Lorg/locationtech/jts/geom/MultiLineString;Ljava/io/Writer;I)V
    .locals 3
    .param p1, "mls"    # Lorg/locationtech/jts/geom/MultiLineString;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 313
    const-string v1, "MultiLineString"

    invoke-direct {p0, v1, p1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 315
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiLineString;->getNumGeometries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 316
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 317
    const-string v1, "lineStringMember"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 319
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiLineString;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    add-int/lit8 v2, p3, 0x2

    invoke-direct {p0, v1, p2, v2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeLineString(Lorg/locationtech/jts/geom/LineString;Ljava/io/Writer;I)V

    .line 321
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 322
    const-string v1, "lineStringMember"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 325
    const-string v1, "MultiLineString"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 326
    return-void
.end method

.method private writeMultiPoint(Lorg/locationtech/jts/geom/MultiPoint;Ljava/io/Writer;I)V
    .locals 3
    .param p1, "mp"    # Lorg/locationtech/jts/geom/MultiPoint;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 295
    const-string v1, "MultiPoint"

    invoke-direct {p0, v1, p1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 297
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPoint;->getNumGeometries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 298
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 299
    const-string v1, "pointMember"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 301
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiPoint;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Point;

    add-int/lit8 v2, p3, 0x2

    invoke-direct {p0, v1, p2, v2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writePoint(Lorg/locationtech/jts/geom/Point;Ljava/io/Writer;I)V

    .line 303
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 304
    const-string v1, "pointMember"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 307
    const-string v1, "MultiPoint"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 308
    return-void
.end method

.method private writeMultiPolygon(Lorg/locationtech/jts/geom/MultiPolygon;Ljava/io/Writer;I)V
    .locals 3
    .param p1, "mp"    # Lorg/locationtech/jts/geom/MultiPolygon;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 331
    const-string v1, "MultiPolygon"

    invoke-direct {p0, v1, p1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 333
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 334
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 335
    const-string v1, "polygonMember"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 337
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Polygon;

    add-int/lit8 v2, p3, 0x2

    invoke-direct {p0, v1, p2, v2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writePolygon(Lorg/locationtech/jts/geom/Polygon;Ljava/io/Writer;I)V

    .line 339
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 340
    const-string v1, "polygonMember"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 343
    const-string v1, "MultiPolygon"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 344
    return-void
.end method

.method private writePoint(Lorg/locationtech/jts/geom/Point;Ljava/io/Writer;I)V
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Point;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 233
    const-string v0, "Point"

    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/locationtech/jts/io/gml2/GMLWriter;->write([Lorg/locationtech/jts/geom/Coordinate;Ljava/io/Writer;I)V

    .line 237
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 238
    const-string v0, "Point"

    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 239
    return-void
.end method

.method private writePolygon(Lorg/locationtech/jts/geom/Polygon;Ljava/io/Writer;I)V
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 268
    const-string v1, "Polygon"

    invoke-direct {p0, v1, p1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 270
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 271
    const-string v1, "outerBoundaryIs"

    invoke-direct {p0, v1, v3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 273
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    add-int/lit8 v2, p3, 0x2

    invoke-direct {p0, v1, p2, v2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeLinearRing(Lorg/locationtech/jts/geom/LinearRing;Ljava/io/Writer;I)V

    .line 275
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 276
    const-string v1, "outerBoundaryIs"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 278
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 280
    const-string v1, "innerBoundaryIs"

    invoke-direct {p0, v1, v3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startGeomTag(Ljava/lang/String;Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V

    .line 282
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    add-int/lit8 v2, p3, 0x2

    invoke-direct {p0, v1, p2, v2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->writeLinearRing(Lorg/locationtech/jts/geom/LinearRing;Ljava/io/Writer;I)V

    .line 284
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 285
    const-string v1, "innerBoundaryIs"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->startLine(ILjava/io/Writer;)V

    .line 289
    const-string v1, "Polygon"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/gml2/GMLWriter;->endGeomTag(Ljava/lang/String;Ljava/io/Writer;)V

    .line 290
    return-void
.end method


# virtual methods
.method public setCustomElements([Ljava/lang/String;)V
    .locals 0
    .param p1, "customElements"    # [Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->customElements:[Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMaxCoordinatesPerLine(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 169
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid coordinate count per line, must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput p1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->maxCoordinatesPerLine:I

    .line 173
    return-void
.end method

.method public setNamespace(Z)V
    .locals 0
    .param p1, "emitNamespace"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->emitNamespace:Z

    .line 133
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->prefix:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSrsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "srsName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->srsName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setStartingIndentIndex(I)V
    .locals 0
    .param p1, "indent"    # I

    .prologue
    .line 158
    if-gez p1, :cond_0

    .line 159
    const/4 p1, 0x0

    .line 160
    :cond_0
    iput p1, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->startingIndentIndex:I

    .line 161
    return-void
.end method

.method public write(Lorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 183
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 185
    .local v1, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/io/gml2/GMLWriter;->write(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    goto :goto_0
.end method

.method public write(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget v0, p0, Lorg/locationtech/jts/io/gml2/GMLWriter;->startingIndentIndex:I

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/io/gml2/GMLWriter;->write(Lorg/locationtech/jts/geom/Geometry;Ljava/io/Writer;I)V

    .line 202
    return-void
.end method
