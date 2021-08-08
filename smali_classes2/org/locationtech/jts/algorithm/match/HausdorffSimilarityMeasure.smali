.class public Lorg/locationtech/jts/algorithm/match/HausdorffSimilarityMeasure;
.super Ljava/lang/Object;
.source "HausdorffSimilarityMeasure.java"

# interfaces
.implements Lorg/locationtech/jts/algorithm/match/SimilarityMeasure;


# static fields
.field private static final DENSIFY_FRACTION:D = 0.25


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static diagonalSize(Lorg/locationtech/jts/geom/Envelope;)D
    .locals 8
    .param p0, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    .line 73
    :goto_0
    return-wide v4

    .line 71
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v2

    .line 72
    .local v2, "width":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v0

    .line 73
    .local v0, "hgt":D
    mul-double v4, v2, v2

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0
.end method


# virtual methods
.method public measure(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D
    .locals 12
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g2"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 55
    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    invoke-static {p1, p2, v8, v9}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->distance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)D

    move-result-wide v0

    .line 57
    .local v0, "distance":D
    new-instance v2, Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    .line 58
    .local v2, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    .line 59
    invoke-static {v2}, Lorg/locationtech/jts/algorithm/match/HausdorffSimilarityMeasure;->diagonalSize(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v4

    .line 61
    .local v4, "envSize":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v10, v0, v4

    sub-double v6, v8, v10

    .line 64
    .local v6, "measure":D
    return-wide v6
.end method
