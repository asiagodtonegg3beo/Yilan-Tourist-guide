.class public Lorg/locationtech/jts/awt/ShapeReader;
.super Ljava/lang/Object;
.source "ShapeReader.java"


# static fields
.field private static final INVERT_Y:Ljava/awt/geom/AffineTransform;


# instance fields
.field private geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    sput-object v0, Lorg/locationtech/jts/awt/ShapeReader;->INVERT_Y:Ljava/awt/geom/AffineTransform;

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/locationtech/jts/awt/ShapeReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 80
    return-void
.end method

.method private isHole([Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 1
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 117
    invoke-static {p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method

.method private static nextCoordinateArray(Ljava/awt/geom/PathIterator;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 11
    .param p0, "pathIt"    # Ljava/awt/geom/PathIterator;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 142
    const/4 v4, 0x6

    new-array v2, v4, [D

    .line 143
    .local v2, "pathPt":[D
    const/4 v0, 0x0

    .line 144
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v1, 0x0

    .line 145
    .local v1, "isDone":Z
    :cond_0
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    invoke-interface {p0, v2}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v3

    .line 147
    .local v3, "segType":I
    packed-switch v3, :pswitch_data_0

    .line 169
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "unhandled (non-linear) segment type encountered"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :pswitch_1
    if-eqz v0, :cond_2

    .line 151
    const/4 v1, 0x1

    .line 171
    :goto_0
    if-eqz v1, :cond_0

    .line 174
    .end local v3    # "segType":I
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    return-object v4

    .line 154
    .restart local v3    # "segType":I
    :cond_2
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    .end local v0    # "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 155
    .restart local v0    # "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    aget-wide v6, v2, v5

    aget-wide v8, v2, v10

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    .line 160
    :pswitch_2
    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    aget-wide v6, v2, v5

    aget-wide v8, v2, v10

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    .line 164
    :pswitch_3
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->closeRing()V

    .line 165
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->next()V

    .line 166
    const/4 v1, 0x1

    .line 167
    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static read(Ljava/awt/Shape;DLorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "shp"    # Ljava/awt/Shape;
    .param p1, "flatness"    # D
    .param p3, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 72
    sget-object v1, Lorg/locationtech/jts/awt/ShapeReader;->INVERT_Y:Ljava/awt/geom/AffineTransform;

    invoke-interface {p0, v1, p1, p2}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;

    move-result-object v0

    .line 73
    .local v0, "pathIt":Ljava/awt/geom/PathIterator;
    invoke-static {v0, p3}, Lorg/locationtech/jts/awt/ShapeReader;->read(Ljava/awt/geom/PathIterator;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public static read(Ljava/awt/geom/PathIterator;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "pathIt"    # Ljava/awt/geom/PathIterator;
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 58
    new-instance v0, Lorg/locationtech/jts/awt/ShapeReader;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/awt/ShapeReader;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 59
    .local v0, "pc":Lorg/locationtech/jts/awt/ShapeReader;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/awt/ShapeReader;->read(Ljava/awt/geom/PathIterator;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public static toCoordinates(Ljava/awt/geom/PathIterator;)Ljava/util/List;
    .locals 3
    .param p0, "pathIt"    # Ljava/awt/geom/PathIterator;

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "coordArrays":Ljava/util/List;
    :goto_0
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    invoke-static {p0}, Lorg/locationtech/jts/awt/ShapeReader;->nextCoordinateArray(Ljava/awt/geom/PathIterator;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 133
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    if-nez v1, :cond_1

    .line 137
    .end local v1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-object v0

    .line 135
    .restart local v1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public read(Ljava/awt/geom/PathIterator;)Lorg/locationtech/jts/geom/Geometry;
    .locals 10
    .param p1, "pathIt"    # Ljava/awt/geom/PathIterator;

    .prologue
    .line 90
    invoke-static {p1}, Lorg/locationtech/jts/awt/ShapeReader;->toCoordinates(Ljava/awt/geom/PathIterator;)Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, "pathPtSeq":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v5, "polys":Ljava/util/List;
    const/4 v7, 0x0

    .line 94
    .local v7, "seqIndex":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 97
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v6, v9

    check-cast v6, [Lorg/locationtech/jts/geom/Coordinate;

    .line 98
    .local v6, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v9, p0, Lorg/locationtech/jts/awt/ShapeReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v9, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v8

    .line 99
    .local v8, "shell":Lorg/locationtech/jts/geom/LinearRing;
    add-int/lit8 v7, v7, 0x1

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v3, "holes":Ljava/util/List;
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/locationtech/jts/geom/Coordinate;

    check-cast v9, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v9}, Lorg/locationtech/jts/awt/ShapeReader;->isHole([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 104
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v2, v9

    check-cast v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 105
    .local v2, "holePts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v9, p0, Lorg/locationtech/jts/awt/ShapeReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v9, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    .line 106
    .local v0, "hole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    goto :goto_1

    .line 109
    .end local v0    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    .end local v2    # "holePts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    invoke-static {v3}, Lorg/locationtech/jts/geom/GeometryFactory;->toLinearRingArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    .line 110
    .local v1, "holeArray":[Lorg/locationtech/jts/geom/LinearRing;
    iget-object v9, p0, Lorg/locationtech/jts/awt/ShapeReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v9, v8, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v1    # "holeArray":[Lorg/locationtech/jts/geom/LinearRing;
    .end local v3    # "holes":Ljava/util/List;
    .end local v6    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v8    # "shell":Lorg/locationtech/jts/geom/LinearRing;
    :cond_1
    iget-object v9, p0, Lorg/locationtech/jts/awt/ShapeReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v9, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v9

    return-object v9
.end method
