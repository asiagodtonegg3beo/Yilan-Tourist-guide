.class Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringMapBuilderFilter;
.super Ljava/lang/Object;
.source "TopologyPreservingSimplifier.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineStringMapBuilderFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringMapBuilderFilter;->this$0:Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 160
    instance-of v3, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 161
    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 163
    .local v0, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    .end local v0    # "line":Lorg/locationtech/jts/geom/LineString;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v0    # "line":Lorg/locationtech/jts/geom/LineString;
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x4

    .line 166
    .local v1, "minSize":I
    :goto_1
    new-instance v2, Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-direct {v2, v0, v1}, Lorg/locationtech/jts/simplify/TaggedLineString;-><init>(Lorg/locationtech/jts/geom/LineString;I)V

    .line 167
    .local v2, "taggedLine":Lorg/locationtech/jts/simplify/TaggedLineString;
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringMapBuilderFilter;->this$0:Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;

    invoke-static {v3}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->access$000(Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    .end local v1    # "minSize":I
    .end local v2    # "taggedLine":Lorg/locationtech/jts/simplify/TaggedLineString;
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method
