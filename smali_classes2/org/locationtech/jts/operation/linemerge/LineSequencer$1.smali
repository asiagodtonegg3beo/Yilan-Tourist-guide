.class Lorg/locationtech/jts/operation/linemerge/LineSequencer$1;
.super Ljava/lang/Object;
.source "LineSequencer.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/operation/linemerge/LineSequencer;->add(Lorg/locationtech/jts/geom/Geometry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/operation/linemerge/LineSequencer;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/operation/linemerge/LineSequencer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/operation/linemerge/LineSequencer;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer$1;->this$0:Lorg/locationtech/jts/operation/linemerge/LineSequencer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "component"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 169
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer$1;->this$0:Lorg/locationtech/jts/operation/linemerge/LineSequencer;

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "component":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v0, p1}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->access$000(Lorg/locationtech/jts/operation/linemerge/LineSequencer;Lorg/locationtech/jts/geom/LineString;)V

    .line 172
    :cond_0
    return-void
.end method
