.class final Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder$1;
.super Ljava/lang/Object;
.source "FacetSequenceTreeBuilder.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;->computeFacetSequences(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sections:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder$1;->val$sections:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    instance-of v1, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v1, :cond_1

    .line 59
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder$1;->val$sections:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;->access$000(Lorg/locationtech/jts/geom/CoordinateSequence;Ljava/util/List;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v1, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v1, :cond_0

    .line 63
    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder$1;->val$sections:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;->access$000(Lorg/locationtech/jts/geom/CoordinateSequence;Ljava/util/List;)V

    goto :goto_0
.end method
