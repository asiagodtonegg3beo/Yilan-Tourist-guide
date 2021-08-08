.class Lorg/locationtech/jts/geom/Geometry$2;
.super Ljava/lang/Object;
.source "Geometry.java"

# interfaces
.implements Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/geom/Geometry;->intersection(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/geom/Geometry;

.field final synthetic val$g2:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1323
    iput-object p1, p0, Lorg/locationtech/jts/geom/Geometry$2;->this$0:Lorg/locationtech/jts/geom/Geometry;

    iput-object p2, p0, Lorg/locationtech/jts/geom/Geometry$2;->val$g2:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1325
    iget-object v0, p0, Lorg/locationtech/jts/geom/Geometry$2;->val$g2:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->intersection(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method
