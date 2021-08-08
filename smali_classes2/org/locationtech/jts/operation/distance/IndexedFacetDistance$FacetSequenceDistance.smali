.class Lorg/locationtech/jts/operation/distance/IndexedFacetDistance$FacetSequenceDistance;
.super Ljava/lang/Object;
.source "IndexedFacetDistance.java"

# interfaces
.implements Lorg/locationtech/jts/index/strtree/ItemDistance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FacetSequenceDistance"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/jts/operation/distance/IndexedFacetDistance$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/locationtech/jts/operation/distance/IndexedFacetDistance$1;

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance$FacetSequenceDistance;-><init>()V

    return-void
.end method


# virtual methods
.method public distance(Lorg/locationtech/jts/index/strtree/ItemBoundable;Lorg/locationtech/jts/index/strtree/ItemBoundable;)D
    .locals 4
    .param p1, "item1"    # Lorg/locationtech/jts/index/strtree/ItemBoundable;
    .param p2, "item2"    # Lorg/locationtech/jts/index/strtree/ItemBoundable;

    .prologue
    .line 160
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/distance/FacetSequence;

    .line 161
    .local v0, "fs1":Lorg/locationtech/jts/operation/distance/FacetSequence;
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/distance/FacetSequence;

    .line 162
    .local v1, "fs2":Lorg/locationtech/jts/operation/distance/FacetSequence;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->distance(Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    move-result-wide v2

    return-wide v2
.end method
