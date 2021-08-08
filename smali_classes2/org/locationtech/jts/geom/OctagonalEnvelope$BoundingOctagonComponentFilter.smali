.class Lorg/locationtech/jts/geom/OctagonalEnvelope$BoundingOctagonComponentFilter;
.super Ljava/lang/Object;
.source "OctagonalEnvelope.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/OctagonalEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundingOctagonComponentFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/geom/OctagonalEnvelope;


# direct methods
.method private constructor <init>(Lorg/locationtech/jts/geom/OctagonalEnvelope;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope$BoundingOctagonComponentFilter;->this$0:Lorg/locationtech/jts/geom/OctagonalEnvelope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/jts/geom/OctagonalEnvelope;Lorg/locationtech/jts/geom/OctagonalEnvelope$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/locationtech/jts/geom/OctagonalEnvelope;
    .param p2, "x1"    # Lorg/locationtech/jts/geom/OctagonalEnvelope$1;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope$BoundingOctagonComponentFilter;-><init>(Lorg/locationtech/jts/geom/OctagonalEnvelope;)V

    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 348
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope$BoundingOctagonComponentFilter;->this$0:Lorg/locationtech/jts/geom/OctagonalEnvelope;

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope$BoundingOctagonComponentFilter;->this$0:Lorg/locationtech/jts/geom/OctagonalEnvelope;

    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    goto :goto_0
.end method
