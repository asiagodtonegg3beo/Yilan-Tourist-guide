.class Lorg/locationtech/jts/operation/polygonize/EdgeRing$EnvelopeComparator;
.super Ljava/lang/Object;
.source "EdgeRing.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/operation/polygonize/EdgeRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnvelopeComparator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj0"    # Ljava/lang/Object;
    .param p2, "obj1"    # Ljava/lang/Object;

    .prologue
    .line 459
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .local v0, "r0":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    move-object v1, p2

    .line 460
    check-cast v1, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 461
    .local v1, "r1":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelope()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelope()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
