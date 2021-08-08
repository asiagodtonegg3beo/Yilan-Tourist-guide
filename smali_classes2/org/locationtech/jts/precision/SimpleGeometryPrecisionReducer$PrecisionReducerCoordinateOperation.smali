.class Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$PrecisionReducerCoordinateOperation;
.super Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;
.source "SimpleGeometryPrecisionReducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrecisionReducerCoordinateOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;


# direct methods
.method private constructor <init>(Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$PrecisionReducerCoordinateOperation;->this$0:Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;

    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;
    .param p2, "x1"    # Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$PrecisionReducerCoordinateOperation;-><init>(Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;)V

    return-void
.end method


# virtual methods
.method public edit([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 114
    array-length v7, p1

    if-nez v7, :cond_1

    const/4 v0, 0x0

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    array-length v7, p1

    new-array v6, v7, [Lorg/locationtech/jts/geom/Coordinate;

    .line 118
    .local v6, "reducedCoords":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_2

    .line 119
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, p1, v2

    invoke-direct {v1, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 120
    .local v1, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v7, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$PrecisionReducerCoordinateOperation;->this$0:Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;

    invoke-static {v7}, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->access$100(Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;)Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 121
    aput-object v1, v6, v2

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v1    # "coord":Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    new-instance v4, Lorg/locationtech/jts/geom/CoordinateList;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lorg/locationtech/jts/geom/CoordinateList;-><init>([Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 125
    .local v4, "noRepeatedCoordList":Lorg/locationtech/jts/geom/CoordinateList;
    invoke-virtual {v4}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 137
    .local v5, "noRepeatedCoords":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    .line 138
    .local v3, "minLength":I
    instance-of v7, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v7, :cond_3

    const/4 v3, 0x2

    .line 139
    :cond_3
    instance-of v7, p2, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v7, :cond_4

    const/4 v3, 0x4

    .line 141
    :cond_4
    move-object v0, v6

    .line 142
    .local v0, "collapsedCoords":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v7, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$PrecisionReducerCoordinateOperation;->this$0:Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;

    invoke-static {v7}, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->access$200(Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x0

    .line 145
    :cond_5
    array-length v7, v5

    if-lt v7, v3, :cond_0

    move-object v0, v5

    .line 150
    goto :goto_0
.end method
