.class public Lorg/locationtech/jts/densify/Densifier;
.super Ljava/lang/Object;
.source "Densifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;
    }
.end annotation


# instance fields
.field private distanceTolerance:D

.field private inputGeom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "inputGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/locationtech/jts/densify/Densifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/densify/Densifier;)D
    .locals 2
    .param p0, "x0"    # Lorg/locationtech/jts/densify/Densifier;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/locationtech/jts/densify/Densifier;->distanceTolerance:D

    return-wide v0
.end method

.method static synthetic access$100([Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/geom/PrecisionModel;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p0, "x0"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "x1"    # D
    .param p3, "x2"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3}, Lorg/locationtech/jts/densify/Densifier;->densifyPoints([Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/geom/PrecisionModel;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public static densify(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 49
    new-instance v0, Lorg/locationtech/jts/densify/Densifier;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/densify/Densifier;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 50
    .local v0, "densifier":Lorg/locationtech/jts/densify/Densifier;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/densify/Densifier;->setDistanceTolerance(D)V

    .line 51
    invoke-virtual {v0}, Lorg/locationtech/jts/densify/Densifier;->getResultGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private static densifyPoints([Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/geom/PrecisionModel;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 17
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "distanceTolerance"    # D
    .param p3, "precModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 63
    new-instance v11, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v11}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 64
    .local v11, "seg":Lorg/locationtech/jts/geom/LineSegment;
    new-instance v2, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 65
    .local v2, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    if-ge v6, v14, :cond_1

    .line 66
    aget-object v14, p0, v6

    iput-object v14, v11, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 67
    add-int/lit8 v14, v6, 0x1

    aget-object v14, p0, v14

    iput-object v14, v11, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 68
    iget-object v14, v11, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 69
    invoke-virtual {v11}, Lorg/locationtech/jts/geom/LineSegment;->getLength()D

    move-result-wide v8

    .line 70
    .local v8, "len":D
    div-double v14, v8, p1

    double-to-int v14, v14

    add-int/lit8 v3, v14, 0x1

    .line 71
    .local v3, "densifiedSegCount":I
    const/4 v14, 0x1

    if-le v3, v14, :cond_0

    .line 72
    int-to-double v14, v3

    div-double v4, v8, v14

    .line 73
    .local v4, "densifiedSegLen":D
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 74
    int-to-double v14, v7

    mul-double/2addr v14, v4

    div-double v12, v14, v8

    .line 75
    .local v12, "segFract":D
    invoke-virtual {v11, v12, v13}, Lorg/locationtech/jts/geom/LineSegment;->pointAlong(D)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v10

    .line 76
    .local v10, "p":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 77
    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 65
    .end local v4    # "densifiedSegLen":D
    .end local v7    # "j":I
    .end local v10    # "p":Lorg/locationtech/jts/geom/Coordinate;
    .end local v12    # "segFract":D
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "densifiedSegCount":I
    .end local v8    # "len":D
    :cond_1
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-object v14, p0, v14

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 82
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v14

    return-object v14
.end method


# virtual methods
.method public getResultGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;-><init>(Lorg/locationtech/jts/densify/Densifier;)V

    iget-object v1, p0, Lorg/locationtech/jts/densify/Densifier;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;->transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public setDistanceTolerance(D)V
    .locals 3
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 108
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-wide p1, p0, Lorg/locationtech/jts/densify/Densifier;->distanceTolerance:D

    .line 111
    return-void
.end method
