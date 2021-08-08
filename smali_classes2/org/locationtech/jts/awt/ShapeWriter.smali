.class public Lorg/locationtech/jts/awt/ShapeWriter;
.super Ljava/lang/Object;
.source "ShapeWriter.java"


# static fields
.field public static final DEFAULT_POINT_FACTORY:Lorg/locationtech/jts/awt/PointShapeFactory;

.field public static final DEFAULT_POINT_TRANSFORMATION:Lorg/locationtech/jts/awt/PointTransformation;


# instance fields
.field private decimationDistance:D

.field private doRemoveDuplicatePoints:Z

.field private pointFactory:Lorg/locationtech/jts/awt/PointShapeFactory;

.field private pointTransformer:Lorg/locationtech/jts/awt/PointTransformation;

.field private transPoint:Ljava/awt/geom/Point2D;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lorg/locationtech/jts/awt/IdentityPointTransformation;

    invoke-direct {v0}, Lorg/locationtech/jts/awt/IdentityPointTransformation;-><init>()V

    sput-object v0, Lorg/locationtech/jts/awt/ShapeWriter;->DEFAULT_POINT_TRANSFORMATION:Lorg/locationtech/jts/awt/PointTransformation;

    .line 63
    new-instance v0, Lorg/locationtech/jts/awt/PointShapeFactory$Square;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-direct {v0, v2, v3}, Lorg/locationtech/jts/awt/PointShapeFactory$Square;-><init>(D)V

    sput-object v0, Lorg/locationtech/jts/awt/ShapeWriter;->DEFAULT_POINT_FACTORY:Lorg/locationtech/jts/awt/PointShapeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lorg/locationtech/jts/awt/ShapeWriter;->DEFAULT_POINT_TRANSFORMATION:Lorg/locationtech/jts/awt/PointTransformation;

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->pointTransformer:Lorg/locationtech/jts/awt/PointTransformation;

    .line 66
    sget-object v0, Lorg/locationtech/jts/awt/ShapeWriter;->DEFAULT_POINT_FACTORY:Lorg/locationtech/jts/awt/PointShapeFactory;

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->pointFactory:Lorg/locationtech/jts/awt/PointShapeFactory;

    .line 71
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->doRemoveDuplicatePoints:Z

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/awt/PointTransformation;)V
    .locals 1
    .param p1, "pointTransformer"    # Lorg/locationtech/jts/awt/PointTransformation;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/awt/ShapeWriter;-><init>(Lorg/locationtech/jts/awt/PointTransformation;Lorg/locationtech/jts/awt/PointShapeFactory;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/awt/PointTransformation;Lorg/locationtech/jts/awt/PointShapeFactory;)V
    .locals 2
    .param p1, "pointTransformer"    # Lorg/locationtech/jts/awt/PointTransformation;
    .param p2, "pointFactory"    # Lorg/locationtech/jts/awt/PointShapeFactory;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lorg/locationtech/jts/awt/ShapeWriter;->DEFAULT_POINT_TRANSFORMATION:Lorg/locationtech/jts/awt/PointTransformation;

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->pointTransformer:Lorg/locationtech/jts/awt/PointTransformation;

    .line 66
    sget-object v0, Lorg/locationtech/jts/awt/ShapeWriter;->DEFAULT_POINT_FACTORY:Lorg/locationtech/jts/awt/PointShapeFactory;

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->pointFactory:Lorg/locationtech/jts/awt/PointShapeFactory;

    .line 71
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->doRemoveDuplicatePoints:Z

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lorg/locationtech/jts/awt/ShapeWriter;->pointTransformer:Lorg/locationtech/jts/awt/PointTransformation;

    .line 93
    :cond_0
    if-eqz p2, :cond_1

    .line 94
    iput-object p2, p0, Lorg/locationtech/jts/awt/ShapeWriter;->pointFactory:Lorg/locationtech/jts/awt/PointShapeFactory;

    .line 95
    :cond_1
    return-void
.end method

.method private appendRing(Lorg/locationtech/jts/awt/PolygonShape;[Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 16
    .param p1, "poly"    # Lorg/locationtech/jts/awt/PolygonShape;
    .param p2, "coords"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 195
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 196
    .local v8, "prevx":D
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 197
    .local v10, "prevy":D
    const/4 v6, 0x0

    .line 199
    .local v6, "prev":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p2

    array-length v7, v0

    add-int/lit8 v5, v7, -0x1

    .line 205
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_7

    .line 207
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    const-wide/16 v14, 0x0

    cmpl-double v7, v12, v14

    if-lez v7, :cond_3

    .line 208
    if-eqz v6, :cond_1

    aget-object v7, p2, v2

    iget-wide v12, v7, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v14, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v12, v14

    .line 209
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    cmpg-double v7, v12, v14

    if-gez v7, :cond_1

    aget-object v7, p2, v2

    iget-wide v12, v7, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v14, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v12, v14

    .line 210
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    cmpg-double v7, v12, v14

    if-gez v7, :cond_1

    const/4 v3, 0x1

    .line 211
    .local v3, "isDecimated":Z
    :goto_1
    if-ge v2, v5, :cond_2

    if-eqz v3, :cond_2

    .line 205
    .end local v3    # "isDecimated":Z
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 213
    .restart local v3    # "isDecimated":Z
    :cond_2
    aget-object v6, p2, v2

    .line 216
    .end local v3    # "isDecimated":Z
    :cond_3
    aget-object v7, p2, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lorg/locationtech/jts/awt/ShapeWriter;->transformPoint(Lorg/locationtech/jts/geom/Coordinate;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 218
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/locationtech/jts/awt/ShapeWriter;->doRemoveDuplicatePoints:Z

    if-eqz v7, :cond_5

    .line 220
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v7}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v12

    cmpl-double v7, v12, v8

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v7}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v12

    cmpl-double v7, v12, v10

    if-nez v7, :cond_6

    const/4 v4, 0x1

    .line 221
    .local v4, "isDup":Z
    :goto_3
    if-ge v2, v5, :cond_4

    if-nez v4, :cond_0

    .line 223
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v7}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    .line 224
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v7}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v10

    .line 226
    .end local v4    # "isDup":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/locationtech/jts/awt/PolygonShape;->addToRing(Ljava/awt/geom/Point2D;)V

    goto :goto_2

    .line 220
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 229
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/awt/PolygonShape;->endRing()V

    .line 230
    return-void
.end method

.method private toShape(Lorg/locationtech/jts/geom/GeometryCollection;)Ljava/awt/Shape;
    .locals 4
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;

    .prologue
    .line 234
    new-instance v2, Lorg/locationtech/jts/awt/GeometryCollectionShape;

    invoke-direct {v2}, Lorg/locationtech/jts/awt/GeometryCollectionShape;-><init>()V

    .line 236
    .local v2, "shape":Lorg/locationtech/jts/awt/GeometryCollectionShape;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 237
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 238
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/awt/ShapeWriter;->toShape(Lorg/locationtech/jts/geom/Geometry;)Ljava/awt/Shape;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/awt/GeometryCollectionShape;->add(Ljava/awt/Shape;)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-object v2
.end method

.method private toShape(Lorg/locationtech/jts/geom/Point;)Ljava/awt/Shape;
    .locals 2
    .param p1, "point"    # Lorg/locationtech/jts/geom/Point;

    .prologue
    .line 298
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/awt/ShapeWriter;->transformPoint(Lorg/locationtech/jts/geom/Coordinate;)Ljava/awt/geom/Point2D;

    move-result-object v0

    .line 299
    .local v0, "viewPoint":Ljava/awt/geom/Point2D;
    iget-object v1, p0, Lorg/locationtech/jts/awt/ShapeWriter;->pointFactory:Lorg/locationtech/jts/awt/PointShapeFactory;

    invoke-interface {v1, v0}, Lorg/locationtech/jts/awt/PointShapeFactory;->createPoint(Ljava/awt/geom/Point2D;)Ljava/awt/Shape;

    move-result-object v1

    return-object v1
.end method

.method private toShape(Lorg/locationtech/jts/geom/Polygon;)Ljava/awt/Shape;
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 183
    new-instance v1, Lorg/locationtech/jts/awt/PolygonShape;

    invoke-direct {v1}, Lorg/locationtech/jts/awt/PolygonShape;-><init>()V

    .line 185
    .local v1, "poly":Lorg/locationtech/jts/awt/PolygonShape;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/locationtech/jts/awt/ShapeWriter;->appendRing(Lorg/locationtech/jts/awt/PolygonShape;[Lorg/locationtech/jts/geom/Coordinate;)V

    .line 186
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 187
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/locationtech/jts/awt/ShapeWriter;->appendRing(Lorg/locationtech/jts/awt/PolygonShape;[Lorg/locationtech/jts/geom/Coordinate;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-object v1
.end method

.method private toShape(Lorg/locationtech/jts/geom/LineString;)Ljava/awt/geom/GeneralPath;
    .locals 18
    .param p1, "lineString"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 256
    new-instance v12, Ljava/awt/geom/GeneralPath;

    invoke-direct {v12}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 258
    .local v12, "shape":Ljava/awt/geom/GeneralPath;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 259
    .local v7, "prev":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lorg/locationtech/jts/awt/ShapeWriter;->transformPoint(Lorg/locationtech/jts/geom/Coordinate;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v14

    double-to-float v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v14}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v14

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Ljava/awt/geom/GeneralPath;->moveTo(FF)V

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    .line 263
    .local v8, "prevx":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v10

    .line 265
    .local v10, "prevy":D
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .line 267
    .local v6, "n":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v6, :cond_7

    .line 268
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 269
    .local v2, "currentCoord":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_3

    .line 270
    if-eqz v7, :cond_1

    iget-wide v14, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    .line 271
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_1

    iget-wide v14, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    .line 272
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_1

    const/4 v4, 0x1

    .line 273
    .local v4, "isDecimated":Z
    :goto_1
    if-ge v3, v6, :cond_2

    if-eqz v4, :cond_2

    .line 267
    .end local v4    # "isDecimated":Z
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 276
    .restart local v4    # "isDecimated":Z
    :cond_2
    move-object v7, v2

    .line 279
    .end local v4    # "isDecimated":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lorg/locationtech/jts/awt/ShapeWriter;->transformPoint(Lorg/locationtech/jts/geom/Coordinate;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 281
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->doRemoveDuplicatePoints:Z

    if-eqz v13, :cond_5

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v14

    cmpl-double v13, v14, v8

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v14

    cmpl-double v13, v14, v10

    if-nez v13, :cond_6

    const/4 v5, 0x1

    .line 284
    .local v5, "isDup":Z
    :goto_3
    if-ge v3, v6, :cond_4

    if-nez v5, :cond_0

    .line 286
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v10

    .line 290
    .end local v5    # "isDup":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v13}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v14

    double-to-float v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/locationtech/jts/awt/ShapeWriter;->transPoint:Ljava/awt/geom/Point2D;

    invoke-virtual {v14}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v14

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    goto :goto_2

    .line 283
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 293
    .end local v2    # "currentCoord":Lorg/locationtech/jts/geom/Coordinate;
    :cond_7
    return-object v12
.end method

.method private toShape(Lorg/locationtech/jts/geom/MultiLineString;)Ljava/awt/geom/GeneralPath;
    .locals 5
    .param p1, "mls"    # Lorg/locationtech/jts/geom/MultiLineString;

    .prologue
    .line 245
    new-instance v2, Ljava/awt/geom/GeneralPath;

    invoke-direct {v2}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 247
    .local v2, "path":Ljava/awt/geom/GeneralPath;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiLineString;->getNumGeometries()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 248
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiLineString;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    .line 249
    .local v1, "lineString":Lorg/locationtech/jts/geom/LineString;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/awt/ShapeWriter;->toShape(Lorg/locationtech/jts/geom/LineString;)Ljava/awt/geom/GeneralPath;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/awt/geom/GeneralPath;->append(Ljava/awt/Shape;Z)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "lineString":Lorg/locationtech/jts/geom/LineString;
    :cond_0
    return-object v2
.end method

.method private transformPoint(Lorg/locationtech/jts/geom/Coordinate;)Ljava/awt/geom/Point2D;
    .locals 1
    .param p1, "model"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 303
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/awt/ShapeWriter;->transformPoint(Lorg/locationtech/jts/geom/Coordinate;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v0

    return-object v0
.end method

.method private transformPoint(Lorg/locationtech/jts/geom/Coordinate;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 1
    .param p1, "model"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "view"    # Ljava/awt/geom/Point2D;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/locationtech/jts/awt/ShapeWriter;->pointTransformer:Lorg/locationtech/jts/awt/PointTransformation;

    invoke-interface {v0, p1, p2}, Lorg/locationtech/jts/awt/PointTransformation;->transform(Lorg/locationtech/jts/geom/Coordinate;Ljava/awt/geom/Point2D;)V

    .line 308
    return-object p2
.end method


# virtual methods
.method public setDecimation(D)V
    .locals 1
    .param p1, "decimationDistance"    # D

    .prologue
    .line 149
    iput-wide p1, p0, Lorg/locationtech/jts/awt/ShapeWriter;->decimationDistance:D

    .line 150
    return-void
.end method

.method public setRemoveDuplicatePoints(Z)V
    .locals 0
    .param p1, "doRemoveDuplicatePoints"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/locationtech/jts/awt/ShapeWriter;->doRemoveDuplicatePoints:Z

    .line 128
    return-void
.end method

.method public toShape(Lorg/locationtech/jts/geom/Geometry;)Ljava/awt/Shape;
    .locals 3
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 170
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 175
    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return-object v0

    .line 171
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/awt/ShapeWriter;->toShape(Lorg/locationtech/jts/geom/Polygon;)Ljava/awt/Shape;

    move-result-object v0

    goto :goto_0

    .line 172
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/awt/ShapeWriter;->toShape(Lorg/locationtech/jts/geom/LineString;)Ljava/awt/geom/GeneralPath;

    move-result-object v0

    goto :goto_0

    .line 173
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/locationtech/jts/geom/MultiLineString;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/awt/ShapeWriter;->toShape(Lorg/locationtech/jts/geom/MultiLineString;)Ljava/awt/geom/GeneralPath;

    move-result-object v0

    goto :goto_0

    .line 174
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/awt/ShapeWriter;->toShape(Lorg/locationtech/jts/geom/Point;)Ljava/awt/Shape;

    move-result-object v0

    goto :goto_0

    .line 175
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/awt/ShapeWriter;->toShape(Lorg/locationtech/jts/geom/GeometryCollection;)Ljava/awt/Shape;

    move-result-object v0

    goto :goto_0

    .line 177
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized Geometry class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
