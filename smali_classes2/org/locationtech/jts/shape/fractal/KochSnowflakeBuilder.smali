.class public Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;
.super Lorg/locationtech/jts/shape/GeometricShapeBuilder;
.source "KochSnowflakeBuilder.java"


# static fields
.field private static final HEIGHT_FACTOR:D

.field private static final ONE_THIRD:D = 0.3333333333333333

.field private static final THIRD_HEIGHT:D

.field private static final TWO_THIRDS:D = 0.6666666666666666


# instance fields
.field private coordList:Lorg/locationtech/jts/geom/CoordinateList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 52
    const-wide v0, 0x3ff0c152382d7365L    # 1.0471975511965976

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->HEIGHT_FACTOR:D

    .line 54
    sget-wide v0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->HEIGHT_FACTOR:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    sput-wide v0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->THIRD_HEIGHT:D

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "geomFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 26
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    .line 31
    return-void
.end method

.method private addSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method private getBoundary(ILorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 11
    .param p1, "level"    # I
    .param p2, "origin"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "width"    # D

    .prologue
    .line 59
    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 61
    .local v4, "y":D
    if-lez p1, :cond_0

    .line 62
    sget-wide v6, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->THIRD_HEIGHT:D

    mul-double/2addr v6, p3

    add-double/2addr v4, v6

    .line 65
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-direct {v0, v6, v7, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 66
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, p3, v8

    add-double/2addr v6, v8

    sget-wide v8, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->HEIGHT_FACTOR:D

    mul-double/2addr v8, p3

    add-double/2addr v8, v4

    invoke-direct {v1, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 67
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v6, p3

    invoke-direct {v2, v6, v7, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 68
    .local v2, "p2":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0, p1, v0, v1}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->addSide(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 69
    invoke-virtual {p0, p1, v1, v2}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->addSide(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 70
    invoke-virtual {p0, p1, v2, v0}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->addSide(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 71
    iget-object v3, p0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->closeRing()V

    .line 72
    iget-object v3, p0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    return-object v3
.end method

.method public static recursionLevelForSize(I)I
    .locals 8
    .param p0, "numPts"    # I

    .prologue
    .line 35
    div-int/lit8 v4, p0, 0x3

    int-to-double v2, v4

    .line 36
    .local v2, "pow4":D
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double v0, v4, v6

    .line 37
    .local v0, "exp":D
    double-to-int v4, v0

    return v4
.end method


# virtual methods
.method public addSide(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 10
    .param p1, "level"    # I
    .param p2, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    invoke-direct {p0, p2, p3}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->addSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 96
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {p2, p3}, Lorg/locationtech/jts/math/Vector2D;->create(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v0

    .line 80
    .local v0, "base":Lorg/locationtech/jts/math/Vector2D;
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v8, v9}, Lorg/locationtech/jts/math/Vector2D;->multiply(D)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v8

    invoke-virtual {v8, p2}, Lorg/locationtech/jts/math/Vector2D;->translate(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 82
    .local v2, "midPt":Lorg/locationtech/jts/geom/Coordinate;
    sget-wide v8, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->THIRD_HEIGHT:D

    invoke-virtual {v0, v8, v9}, Lorg/locationtech/jts/math/Vector2D;->multiply(D)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v1

    .line 83
    .local v1, "heightVec":Lorg/locationtech/jts/math/Vector2D;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/locationtech/jts/math/Vector2D;->rotateByQuarterCircle(I)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v5

    .line 84
    .local v5, "offsetVec":Lorg/locationtech/jts/math/Vector2D;
    invoke-virtual {v5, v2}, Lorg/locationtech/jts/math/Vector2D;->translate(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 86
    .local v4, "offsetPt":Lorg/locationtech/jts/geom/Coordinate;
    add-int/lit8 v3, p1, -0x1

    .line 87
    .local v3, "n2":I
    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-virtual {v0, v8, v9}, Lorg/locationtech/jts/math/Vector2D;->multiply(D)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v8

    invoke-virtual {v8, p2}, Lorg/locationtech/jts/math/Vector2D;->translate(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 88
    .local v6, "thirdPt":Lorg/locationtech/jts/geom/Coordinate;
    const-wide v8, 0x3fe5555555555555L    # 0.6666666666666666

    invoke-virtual {v0, v8, v9}, Lorg/locationtech/jts/math/Vector2D;->multiply(D)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v8

    invoke-virtual {v8, p2}, Lorg/locationtech/jts/math/Vector2D;->translate(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 91
    .local v7, "twoThirdPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0, v3, p2, v6}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->addSide(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 92
    invoke-virtual {p0, v3, v6, v4}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->addSide(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 93
    invoke-virtual {p0, v3, v4, v7}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->addSide(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 94
    invoke-virtual {p0, v3, v7, p3}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->addSide(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 6

    .prologue
    .line 42
    iget v3, p0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->numPts:I

    invoke-static {v3}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->recursionLevelForSize(I)I

    move-result v1

    .line 43
    .local v1, "level":I
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->getSquareBaseLine()Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v0

    .line 44
    .local v0, "baseLine":Lorg/locationtech/jts/geom/LineSegment;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineSegment;->getLength()D

    move-result-wide v4

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->getBoundary(ILorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 45
    .local v2, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v3, p0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v4, p0, Lorg/locationtech/jts/shape/fractal/KochSnowflakeBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 46
    invoke-virtual {v4, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v4

    const/4 v5, 0x0

    .line 45
    invoke-virtual {v3, v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    return-object v3
.end method
