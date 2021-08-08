.class public Lorg/locationtech/jts/io/kml/KMLWriter;
.super Ljava/lang/Object;
.source "KMLWriter.java"


# static fields
.field public static ALTITUDE_MODE_ABSOLUTE:Ljava/lang/String; = null

.field public static ALTITUDE_MODE_CLAMPTOGROUND:Ljava/lang/String; = null

.field public static ALTITUDE_MODE_RELATIVETOGROUND:Ljava/lang/String; = null

.field private static final COORDINATE_SEPARATOR:Ljava/lang/String; = ","

.field private static final TUPLE_SEPARATOR:Ljava/lang/String; = " "


# instance fields
.field private final INDENT_SIZE:I

.field private altitudeMode:Ljava/lang/String;

.field private extrude:Z

.field private linePrefix:Ljava/lang/String;

.field private maxCoordinatesPerLine:I

.field private numberFormatter:Ljava/text/DecimalFormat;

.field private tesselate:Z

.field private zVal:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "clampToGround "

    sput-object v0, Lorg/locationtech/jts/io/kml/KMLWriter;->ALTITUDE_MODE_CLAMPTOGROUND:Ljava/lang/String;

    .line 54
    const-string v0, "relativeToGround  "

    sput-object v0, Lorg/locationtech/jts/io/kml/KMLWriter;->ALTITUDE_MODE_RELATIVETOGROUND:Ljava/lang/String;

    .line 58
    const-string v0, "absolute"

    sput-object v0, Lorg/locationtech/jts/io/kml/KMLWriter;->ALTITUDE_MODE_ABSOLUTE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->INDENT_SIZE:I

    .line 100
    iput-object v2, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->linePrefix:Ljava/lang/String;

    .line 101
    const/4 v0, 0x5

    iput v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->maxCoordinatesPerLine:I

    .line 102
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->zVal:D

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->extrude:Z

    .line 105
    iput-object v2, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->altitudeMode:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->numberFormatter:Ljava/text/DecimalFormat;

    .line 112
    return-void
.end method

.method private static createFormatter(I)Ljava/text/DecimalFormat;
    .locals 4
    .param p0, "precision"    # I

    .prologue
    .line 391
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 392
    .local v1, "symbols":Ljava/text/DecimalFormatSymbols;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 393
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x23

    .line 394
    invoke-static {v3, p0}, Lorg/locationtech/jts/util/StringUtil;->chars(CI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 395
    .local v0, "format":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 396
    return-object v0
.end method

.method private geometryTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "geometryName"    # Ljava/lang/String;
    .param p2, "attributes"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 248
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 237
    iget-object v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->linePrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->linePrefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_0
    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Lorg/locationtech/jts/util/StringUtil;->spaces(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    return-void
.end method

.method private write(DLjava/lang/StringBuffer;)V
    .locals 1
    .param p1, "num"    # D
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 373
    iget-object v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->numberFormatter:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->numberFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private write(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 355
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-direct {p0, v2, v3, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->write(DLjava/lang/StringBuffer;)V

    .line 356
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-direct {p0, v2, v3, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->write(DLjava/lang/StringBuffer;)V

    .line 359
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 361
    .local v0, "z":D
    iget-wide v2, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->zVal:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    iget-wide v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->zVal:D

    .line 366
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 367
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    invoke-direct {p0, v0, v1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->write(DLjava/lang/StringBuffer;)V

    .line 370
    :cond_1
    return-void
.end method

.method private write([Lorg/locationtech/jts/geom/Coordinate;ILjava/lang/StringBuffer;)V
    .locals 4
    .param p1, "coords"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "level"    # I
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 330
    const-string v2, "<coordinates>"

    invoke-direct {p0, v2, p2, p3}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "isNewLine":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 334
    if-lez v0, :cond_0

    .line 335
    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :cond_0
    if-eqz v1, :cond_1

    .line 339
    const-string v2, "  "

    invoke-direct {p0, v2, p2, p3}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 340
    const/4 v1, 0x0

    .line 343
    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2, p3}, Lorg/locationtech/jts/io/kml/KMLWriter;->write(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/StringBuffer;)V

    .line 346
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->maxCoordinatesPerLine:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 347
    const-string v2, "\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    const/4 v1, 0x1

    .line 333
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_3
    const-string v2, "</coordinates>\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    return-void
.end method

.method public static writeGeometry(Lorg/locationtech/jts/geom/Geometry;D)Ljava/lang/String;
    .locals 3
    .param p0, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "z"    # D

    .prologue
    .line 69
    new-instance v0, Lorg/locationtech/jts/io/kml/KMLWriter;

    invoke-direct {v0}, Lorg/locationtech/jts/io/kml/KMLWriter;-><init>()V

    .line 70
    .local v0, "writer":Lorg/locationtech/jts/io/kml/KMLWriter;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->setZ(D)V

    .line 71
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/io/kml/KMLWriter;->write(Lorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeGeometry(Lorg/locationtech/jts/geom/Geometry;DIZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "z"    # D
    .param p3, "precision"    # I
    .param p4, "extrude"    # Z
    .param p5, "altitudeMode"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lorg/locationtech/jts/io/kml/KMLWriter;

    invoke-direct {v0}, Lorg/locationtech/jts/io/kml/KMLWriter;-><init>()V

    .line 89
    .local v0, "writer":Lorg/locationtech/jts/io/kml/KMLWriter;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->setZ(D)V

    .line 90
    invoke-virtual {v0, p3}, Lorg/locationtech/jts/io/kml/KMLWriter;->setPrecision(I)V

    .line 91
    invoke-virtual {v0, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->setExtrude(Z)V

    .line 92
    invoke-virtual {v0, p5}, Lorg/locationtech/jts/io/kml/KMLWriter;->setAltitudeMode(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/io/kml/KMLWriter;->write(Lorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeGeometry(Lorg/locationtech/jts/geom/Geometry;ILjava/lang/StringBuffer;)V
    .locals 6
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "level"    # I
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 220
    const-string v2, ""

    .line 221
    .local v2, "attributes":Ljava/lang/String;
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_0

    .line 222
    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, v2, p2, p3}, Lorg/locationtech/jts/io/kml/KMLWriter;->writePoint(Lorg/locationtech/jts/geom/Point;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 234
    :goto_0
    return-void

    .line 223
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v0, :cond_1

    move-object v1, p1

    .line 224
    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeLinearRing(Lorg/locationtech/jts/geom/LinearRing;Ljava/lang/String;ZILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 225
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_2

    .line 226
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, v2, p2, p3}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeLineString(Lorg/locationtech/jts/geom/LineString;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 227
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_3

    .line 228
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, v2, p2, p3}, Lorg/locationtech/jts/io/kml/KMLWriter;->writePolygon(Lorg/locationtech/jts/geom/Polygon;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 229
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_4

    .line 230
    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, v2, p2, p3}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeGeometryCollection(Lorg/locationtech/jts/geom/GeometryCollection;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 233
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geometry type not supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeGeometryCollection(Lorg/locationtech/jts/geom/GeometryCollection;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 3
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 316
    const-string v1, "<MultiGeometry>\n"

    invoke-direct {p0, v1, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 317
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 318
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v1, v2, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeGeometry(Lorg/locationtech/jts/geom/Geometry;ILjava/lang/StringBuffer;)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    const-string v1, "</MultiGeometry>\n"

    invoke-direct {p0, v1, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 321
    return-void
.end method

.method private writeLineString(Lorg/locationtech/jts/geom/LineString;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "ls"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineString"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->geometryTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 281
    invoke-direct {p0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeModifiers(ILjava/lang/StringBuffer;)V

    .line 282
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v0, v1, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->write([Lorg/locationtech/jts/geom/Coordinate;ILjava/lang/StringBuffer;)V

    .line 283
    const-string v0, "</LineString>\n"

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 284
    return-void
.end method

.method private writeLinearRing(Lorg/locationtech/jts/geom/LinearRing;Ljava/lang/String;ZILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "lr"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "writeModifiers"    # Z
    .param p4, "level"    # I
    .param p5, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinearRing"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->geometryTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 291
    if-eqz p3, :cond_0

    invoke-direct {p0, p4, p5}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeModifiers(ILjava/lang/StringBuffer;)V

    .line 292
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    invoke-direct {p0, v0, v1, p5}, Lorg/locationtech/jts/io/kml/KMLWriter;->write([Lorg/locationtech/jts/geom/Coordinate;ILjava/lang/StringBuffer;)V

    .line 293
    const-string v0, "</LinearRing>\n"

    invoke-direct {p0, v0, p4, p5}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 294
    return-void
.end method

.method private writeModifiers(ILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->extrude:Z

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "<extrude>1</extrude>\n"

    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 260
    :cond_0
    iget-boolean v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->tesselate:Z

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "<tesselate>1</tesselate>\n"

    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->altitudeMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<altitudeMode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->altitudeMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</altitudeMode>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 266
    :cond_2
    return-void
.end method

.method private writePoint(Lorg/locationtech/jts/geom/Point;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Point;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->geometryTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 272
    invoke-direct {p0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeModifiers(ILjava/lang/StringBuffer;)V

    .line 273
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v0, v1, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->write([Lorg/locationtech/jts/geom/Coordinate;ILjava/lang/StringBuffer;)V

    .line 274
    const-string v0, "</Point>\n"

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 275
    return-void
.end method

.method private writePolygon(Lorg/locationtech/jts/geom/Polygon;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 7
    .param p1, "p"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Polygon"

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->geometryTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 299
    invoke-direct {p0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeModifiers(ILjava/lang/StringBuffer;)V

    .line 301
    const-string v0, "  <outerBoundaryIs>\n"

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 302
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    add-int/lit8 v4, p3, 0x1

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeLinearRing(Lorg/locationtech/jts/geom/LinearRing;Ljava/lang/String;ZILjava/lang/StringBuffer;)V

    .line 303
    const-string v0, "  </outerBoundaryIs>\n"

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 305
    const/4 v6, 0x0

    .local v6, "t":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 306
    const-string v0, "  <innerBoundaryIs>\n"

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 307
    invoke-virtual {p1, v6}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    add-int/lit8 v4, p3, 0x1

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeLinearRing(Lorg/locationtech/jts/geom/LinearRing;Ljava/lang/String;ZILjava/lang/StringBuffer;)V

    .line 308
    const-string v0, "  </innerBoundaryIs>\n"

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 305
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 311
    :cond_0
    const-string v0, "</Polygon>\n"

    invoke-direct {p0, v0, p3, p4}, Lorg/locationtech/jts/io/kml/KMLWriter;->startLine(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 312
    return-void
.end method


# virtual methods
.method public setAltitudeMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "altitudeMode"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->altitudeMode:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setExtrude(Z)V
    .locals 0
    .param p1, "extrude"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->extrude:Z

    .line 154
    return-void
.end method

.method public setLinePrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->linePrefix:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setMaximumCoordinatesPerLine(I)V
    .locals 0
    .param p1, "maxCoordinatesPerLine"    # I

    .prologue
    .line 130
    if-gtz p1, :cond_0

    .line 131
    const/4 p1, 0x1

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iput p1, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->maxCoordinatesPerLine:I

    goto :goto_0
.end method

.method public setPrecision(I)V
    .locals 1
    .param p1, "precision"    # I

    .prologue
    .line 182
    if-ltz p1, :cond_0

    .line 183
    invoke-static {p1}, Lorg/locationtech/jts/io/kml/KMLWriter;->createFormatter(I)Ljava/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->numberFormatter:Ljava/text/DecimalFormat;

    .line 184
    :cond_0
    return-void
.end method

.method public setTesselate(Z)V
    .locals 0
    .param p1, "tesselate"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->tesselate:Z

    .line 163
    return-void
.end method

.method public setZ(D)V
    .locals 1
    .param p1, "zVal"    # D

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/locationtech/jts/io/kml/KMLWriter;->zVal:D

    .line 145
    return-void
.end method

.method public write(Lorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/io/kml/KMLWriter;->write(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/StringBuffer;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 206
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/io/kml/KMLWriter;->write(Lorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public write(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/locationtech/jts/io/kml/KMLWriter;->writeGeometry(Lorg/locationtech/jts/geom/Geometry;ILjava/lang/StringBuffer;)V

    .line 217
    return-void
.end method
