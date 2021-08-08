.class public Lorg/locationtech/jts/algorithm/match/SimilarityMeasureCombiner;
.super Ljava/lang/Object;
.source "SimilarityMeasureCombiner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(DD)D
    .locals 2
    .param p0, "measure1"    # D
    .param p2, "measure2"    # D

    .prologue
    .line 25
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method
