.class public Lorg/locationtech/jts/algorithm/SimplePointInRing;
.super Ljava/lang/Object;
.source "SimplePointInRing.java"

# interfaces
.implements Lorg/locationtech/jts/algorithm/PointInRing;


# instance fields
.field private pts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LinearRing;)V
    .locals 1
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/SimplePointInRing;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 33
    return-void
.end method


# virtual methods
.method public isInside(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/SimplePointInRing;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {p1, v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method
