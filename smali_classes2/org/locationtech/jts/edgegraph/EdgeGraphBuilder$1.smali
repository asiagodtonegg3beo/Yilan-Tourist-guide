.class Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder$1;
.super Ljava/lang/Object;
.source "EdgeGraphBuilder.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->add(Lorg/locationtech/jts/geom/Geometry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder$1;->this$0:Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "component"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 61
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder$1;->this$0:Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "component":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v0, p1}, Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;->access$000(Lorg/locationtech/jts/edgegraph/EdgeGraphBuilder;Lorg/locationtech/jts/geom/LineString;)V

    .line 64
    :cond_0
    return-void
.end method
