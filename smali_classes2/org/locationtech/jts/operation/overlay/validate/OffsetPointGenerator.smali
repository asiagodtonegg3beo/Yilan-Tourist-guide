.class public Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;
.super Ljava/lang/Object;
.source "OffsetPointGenerator.java"


# instance fields
.field private doLeft:Z

.field private doRight:Z

.field private g:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->doLeft:Z

    .line 42
    iput-boolean v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->doRight:Z

    .line 46
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->g:Lorg/locationtech/jts/geom/Geometry;

    .line 47
    return-void
.end method

.method private computeOffsetPoints(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;DLjava/util/List;)V
    .locals 25
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "offsetDistance"    # D
    .param p5, "offsetPts"    # Ljava/util/List;

    .prologue
    .line 96
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    sub-double v4, v20, v22

    .line 97
    .local v4, "dx":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    sub-double v6, v20, v22

    .line 98
    .local v6, "dy":D
    mul-double v20, v4, v4

    mul-double v22, v6, v6

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 100
    .local v8, "len":D
    mul-double v20, p3, v4

    div-double v16, v20, v8

    .line 101
    .local v16, "ux":D
    mul-double v20, p3, v6

    div-double v18, v20, v8

    .line 103
    .local v18, "uy":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v10, v20, v22

    .line 104
    .local v10, "midX":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v12, v20, v22

    .line 106
    .local v12, "midY":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->doLeft:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 107
    new-instance v14, Lorg/locationtech/jts/geom/Coordinate;

    sub-double v20, v10, v18

    add-double v22, v12, v16

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 108
    .local v14, "offsetLeft":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p5

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v14    # "offsetLeft":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->doRight:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 112
    new-instance v15, Lorg/locationtech/jts/geom/Coordinate;

    add-double v20, v10, v18

    sub-double v22, v12, v16

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v15, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 113
    .local v15, "offsetRight":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p5

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v15    # "offsetRight":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    return-void
.end method

.method private extractPoints(Lorg/locationtech/jts/geom/LineString;DLjava/util/List;)V
    .locals 8
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "offsetDistance"    # D
    .param p4, "offsetPts"    # Ljava/util/List;

    .prologue
    .line 80
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 81
    .local v7, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 82
    aget-object v2, v7, v0

    add-int/lit8 v1, v0, 0x1

    aget-object v3, v7, v1

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->computeOffsetPoints(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;DLjava/util/List;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public getPoints(D)Ljava/util/List;
    .locals 5
    .param p1, "offsetDistance"    # D

    .prologue
    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, "offsetPts":Ljava/util/List;
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->g:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v4}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "lines":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    .line 72
    .local v1, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-direct {p0, v1, p1, p2, v3}, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->extractPoints(Lorg/locationtech/jts/geom/LineString;DLjava/util/List;)V

    goto :goto_0

    .line 75
    .end local v1    # "line":Lorg/locationtech/jts/geom/LineString;
    :cond_0
    return-object v3
.end method

.method public setSidesToGenerate(ZZ)V
    .locals 0
    .param p1, "doLeft"    # Z
    .param p2, "doRight"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->doLeft:Z

    .line 58
    iput-boolean p2, p0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->doRight:Z

    .line 59
    return-void
.end method
