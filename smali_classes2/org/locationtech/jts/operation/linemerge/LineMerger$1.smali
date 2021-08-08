.class Lorg/locationtech/jts/operation/linemerge/LineMerger$1;
.super Ljava/lang/Object;
.source "LineMerger.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/operation/linemerge/LineMerger;->add(Lorg/locationtech/jts/geom/Geometry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/operation/linemerge/LineMerger;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/operation/linemerge/LineMerger;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/operation/linemerge/LineMerger;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger$1;->this$0:Lorg/locationtech/jts/operation/linemerge/LineMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "component"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 75
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger$1;->this$0:Lorg/locationtech/jts/operation/linemerge/LineMerger;

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "component":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v0, p1}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->access$000(Lorg/locationtech/jts/operation/linemerge/LineMerger;Lorg/locationtech/jts/geom/LineString;)V

    .line 78
    :cond_0
    return-void
.end method
