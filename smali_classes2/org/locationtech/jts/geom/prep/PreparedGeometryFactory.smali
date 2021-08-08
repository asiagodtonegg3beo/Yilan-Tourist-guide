.class public Lorg/locationtech/jts/geom/prep/PreparedGeometryFactory;
.super Ljava/lang/Object;
.source "PreparedGeometryFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static prepare(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/prep/PreparedGeometry;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 41
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedGeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/prep/PreparedGeometryFactory;-><init>()V

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/prep/PreparedGeometryFactory;->create(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/prep/PreparedGeometry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/prep/PreparedGeometry;
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 55
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    check-cast p1, Lorg/locationtech/jts/geom/Polygonal;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;-><init>(Lorg/locationtech/jts/geom/Polygonal;)V

    .line 65
    :goto_0
    return-object v0

    .line 57
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/Lineal;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedLineString;

    check-cast p1, Lorg/locationtech/jts/geom/Lineal;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/prep/PreparedLineString;-><init>(Lorg/locationtech/jts/geom/Lineal;)V

    goto :goto_0

    .line 59
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/Puntal;

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedPoint;

    check-cast p1, Lorg/locationtech/jts/geom/Puntal;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPoint;-><init>(Lorg/locationtech/jts/geom/Puntal;)V

    goto :goto_0

    .line 65
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    new-instance v0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0
.end method
