.class Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringTransformer;
.super Lorg/locationtech/jts/geom/util/GeometryTransformer;
.source "TopologyPreservingSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineStringTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringTransformer;->this$0:Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;

    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/GeometryTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 2
    .param p1, "coords"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 128
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    .line 130
    :cond_0
    instance-of v1, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringTransformer;->this$0:Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;

    invoke-static {v1}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;->access$000(Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/simplify/TaggedLineString;

    .line 132
    .local v0, "taggedLine":Lorg/locationtech/jts/simplify/TaggedLineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/simplify/TaggedLineString;->getResultCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/simplify/TopologyPreservingSimplifier$LineStringTransformer;->createCoordinateSequence([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    goto :goto_0

    .line 135
    .end local v0    # "taggedLine":Lorg/locationtech/jts/simplify/TaggedLineString;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    goto :goto_0
.end method
