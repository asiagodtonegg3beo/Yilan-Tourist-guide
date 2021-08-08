.class Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;
.super Lorg/locationtech/jts/planargraph/Edge;
.source "PolygonizeEdge.java"


# instance fields
.field private line:Lorg/locationtech/jts/geom/LineString;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LineString;)V
    .locals 0
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/Edge;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;->line:Lorg/locationtech/jts/geom/LineString;

    .line 33
    return-void
.end method


# virtual methods
.method public getLine()Lorg/locationtech/jts/geom/LineString;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;->line:Lorg/locationtech/jts/geom/LineString;

    return-object v0
.end method
