.class public final Lcom/google/appinventor/components/runtime/util/GeometryUtil;
.super Ljava/lang/Object;
.source "GeometryUtil.java"


# static fields
.field public static final EARTH_RADIUS:D = 6378137.0

.field private static final FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

.field public static final ONE_DEG_IN_METERS:D = 111319.49079327358

.field public static final WEB_MERCATOR_SRID:I = 0x10e6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    new-instance v1, Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/PrecisionModel;-><init>()V

    const/16 v2, 0x10e6

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p0, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public static bearingTo(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 400
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 435
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 423
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 427
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 431
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 419
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 405
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 410
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 415
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static coerceToDouble(Ljava/lang/Object;)D
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 54
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 59
    .restart local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-wide v2

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0
.end method

.method public static coerceToPoint(Ljava/lang/Object;Ljava/lang/Object;)Lorg/osmdroid/util/GeoPoint;
    .locals 6
    .param p0, "lat"    # Ljava/lang/Object;
    .param p1, "lng"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 66
    .local v0, "latitude":D
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 67
    .local v2, "longitude":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Latitude must be a numeric."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Longitude must be a numeric."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_1
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3

    .line 72
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Latitude must be between -90 and 90."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_3
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_4

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_5

    .line 74
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Longitude must be between -180 and 180."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_5
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v4
.end method

.method public static createGeometry(DDDD)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p0, "north"    # D
    .param p2, "east"    # D
    .param p4, "south"    # D
    .param p6, "west"    # D

    .prologue
    .line 129
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v3, p2, p3, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v3, p2, p3, p4, p5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v3, p6, p7, p4, p5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v3, p6, p7, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v3, p2, p3, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public static createGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/Geometry;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "line":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public static createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)",
            "Lorg/locationtech/jts/geom/Geometry;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    if-nez p0, :cond_0

    .line 140
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "points must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 143
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "holes must either be null or the same length as points."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Lorg/locationtech/jts/geom/Polygon;

    .line 146
    .local v4, "polygons":[Lorg/locationtech/jts/geom/Polygon;
    const/4 v0, 0x0

    .line 147
    .local v0, "i":I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 148
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 149
    .local v5, "ring":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->ringToPolygon(Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v7

    aput-object v7, v4, v0

    move v0, v1

    .line 150
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 152
    .end local v5    # "ring":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    .local v2, "ip":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 154
    .local v3, "jp":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 155
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->ringToPolygon(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v6

    aput-object v6, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 158
    .end local v2    # "ip":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    .end local v3    # "jp":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :cond_4
    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    :goto_2
    return-object v6

    :cond_5
    sget-object v6, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v6, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v6

    goto :goto_2
.end method

.method public static createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 121
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public static distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D
    .locals 2
    .param p0, "marker1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "marker2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 246
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 242
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D
    .locals 24
    .param p0, "a"    # Lorg/osmdroid/api/IGeoPoint;
    .param p1, "b"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 230
    invoke-interface/range {p0 .. p0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 231
    .local v8, "lat1":D
    invoke-interface/range {p0 .. p0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 232
    .local v12, "lng1":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 233
    .local v10, "lat2":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 234
    .local v14, "lng2":D
    sub-double v4, v10, v8

    .line 235
    .local v4, "dLat":D
    sub-double v6, v14, v12

    .line 236
    .local v6, "dLng":D
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v20, v6, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v2, v16, v18

    .line 237
    .local v2, "cordlen":D
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    mul-double v0, v16, v18

    .line 238
    .local v0, "angle":D
    const-wide v16, 0x415854a640000000L    # 6378137.0

    mul-double v16, v16, v0

    return-wide v16
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "circle1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "circle2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 384
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 388
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 380
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 356
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2
    .param p0, "lineString1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "lineString2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 348
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 352
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 360
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 344
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 336
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 328
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 332
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 340
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 372
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "polygon1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "polygon2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 368
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 376
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 364
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "rectangle1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p1, "rectangle2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 396
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 392
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 8
    .param p0, "circle1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "circle2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    const-wide/16 v2, 0x0

    .line 310
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v4

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 311
    .local v0, "d":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "d":D
    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 8
    .param p0, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    const-wide/16 v2, 0x0

    .line 315
    const-wide v4, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 316
    .local v0, "d":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "d":D
    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 8
    .param p0, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    const-wide/16 v2, 0x0

    .line 305
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v4

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 306
    .local v0, "d":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "d":D
    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 8
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    const-wide/16 v2, 0x0

    .line 279
    const-wide v4, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 280
    .local v0, "d":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "d":D
    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 4
    .param p0, "lineString1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "lineString2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 271
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 275
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 284
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 267
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 8
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    const-wide/16 v2, 0x0

    .line 258
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v4

    int-to-double v4, v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 259
    .local v0, "d":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "d":D
    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 4
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 250
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 254
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 263
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 8
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    const-wide/16 v2, 0x0

    .line 296
    const-wide v4, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 297
    .local v0, "d":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "d":D
    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4
    .param p0, "polygon1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "polygon2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 292
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 301
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 288
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4
    .param p0, "rectangle1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p1, "rectangle2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 324
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4
    .param p0, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 320
    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .param p0, "p"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 226
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v0
.end method

.method public static geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/LinearRing;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    return-object v0
.end method

.method public static getCentroid(Ljava/util/List;Ljava/util/List;)Lorg/osmdroid/util/GeoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)",
            "Lorg/osmdroid/util/GeoPoint;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public static getMidpoint(Ljava/util/List;)Lorg/osmdroid/util/GeoPoint;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/GeoPoint;"
        }
    .end annotation

    .prologue
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const-wide/16 v2, 0x0

    .line 162
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 169
    :goto_0
    return-object v1

    .line 165
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 166
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v2, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    move-object v1, v2

    goto :goto_0

    .line 168
    :cond_1
    sget-object v1, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    .line 169
    .local v0, "ls":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    goto :goto_0
.end method

.method public static isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 4
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v1, 0x1

    .line 567
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 568
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-class v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v3, "list"

    invoke-static {v0, v2, v3}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 567
    :goto_0
    return v0

    .line 568
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 6
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    move v1, v2

    .line 553
    :goto_0
    return v1

    .line 550
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-class v4, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v5, "list"

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 551
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    move v1, v2

    .line 553
    goto :goto_0
.end method

.method public static isValidLatitude(D)Z
    .locals 2
    .param p0, "latitude"    # D

    .prologue
    .line 445
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidLongitude(D)Z
    .locals 2
    .param p0, "longitude"    # D

    .prologue
    .line 455
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;
    .locals 6
    .param p0, "p"    # Lorg/locationtech/jts/geom/Point;

    .prologue
    .line 222
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getX()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public static multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 5
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "multipolygon":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 503
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v4, "list"

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :cond_0
    return-object v1
.end method

.method public static multiPolygonHolesFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 8
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 512
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x1

    .line 514
    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 515
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v7, "list"

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 516
    .local v4, "yailHoles":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    add-int/lit8 v2, v2, 0x1

    .line 518
    goto :goto_0

    .line 519
    .end local v4    # "yailHoles":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-result-object v5

    throw v5

    .line 522
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :cond_0
    return-object v1
.end method

.method public static multiPolygonHolesToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    .line 528
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_0
    return-object v1

    .line 530
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 531
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-object v1

    .line 482
    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_2

    .line 483
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->polygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 486
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->polygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "multipolygon":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 494
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 495
    .local v0, "polygon":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    .end local v0    # "polygon":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public static pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;
    .locals 8
    .param p0, "point"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 93
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 94
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v2, 0xd51

    new-array v3, v5, [Ljava/lang/Object;

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1

    .line 98
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToPoint(Ljava/lang/Object;Ljava/lang/Object;)Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v2, 0xd4d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1
.end method

.method public static pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 7
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v3, "newPoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x1

    .line 108
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v6, "list"

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-result-object v4

    throw v4

    .line 117
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :cond_0
    return-object v3
.end method

.method public static pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/api/IGeoPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/api/IGeoPoint;

    .line 87
    .local v1, "point":Lorg/osmdroid/api/IGeoPoint;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v1    # "point":Lorg/osmdroid/api/IGeoPoint;
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public static pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)[",
            "Lorg/locationtech/jts/geom/Coordinate;"
        }
    .end annotation

    .prologue
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v6, 0x0

    .line 195
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/osmdroid/util/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 196
    .local v0, "closed":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v0, :cond_0

    move v5, v6

    :goto_0
    add-int/2addr v5, v7

    new-array v1, v5, [Lorg/locationtech/jts/geom/Coordinate;

    .line 197
    .local v1, "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .line 198
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    .line 199
    .local v4, "p":Lorg/osmdroid/util/GeoPoint;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    aput-object v7, v1, v2

    move v2, v3

    .line 200
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 196
    .end local v1    # "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "i":I
    .end local v4    # "p":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 201
    .restart local v1    # "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v2    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 202
    aget-object v5, v1, v6

    aput-object v5, v1, v2

    .line 204
    :cond_2
    return-object v1
.end method

.method public static polygonToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 13
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 459
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
    .local v9, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 461
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v2, 0xd4c

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "Too few points in Polygon, expected 3."

    aput-object v4, v3, v10

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1

    .line 464
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 465
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 466
    .local v8, "point":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v1, v12, :cond_1

    .line 467
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Invalid number of dimensions in polygon, expected 2."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ne v1, v12, :cond_2

    .line 470
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_2
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    .end local v8    # "point":Lorg/json/JSONArray;
    :cond_3
    return-object v9
.end method

.method public static ringToPolygon(Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/Polygon;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "ring":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public static ringToPolygon(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)",
            "Lorg/locationtech/jts/geom/Polygon;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "ring":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v4

    .line 213
    .local v4, "shell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Lorg/locationtech/jts/geom/LinearRing;

    .line 214
    .local v1, "holeRings":[Lorg/locationtech/jts/geom/LinearRing;
    const/4 v2, 0x0

    .line 215
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    .local v0, "h":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v6

    aput-object v6, v1, v2

    move v2, v3

    .line 217
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 218
    .end local v0    # "h":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    sget-object v5, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v5, v4, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v5

    return-object v5
.end method
