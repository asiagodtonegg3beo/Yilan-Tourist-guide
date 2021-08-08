.class Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;
.super Ljava/lang/Object;
.source "Polygonizer.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/operation/polygonize/Polygonizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineStringAdder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/operation/polygonize/Polygonizer;


# direct methods
.method private constructor <init>(Lorg/locationtech/jts/operation/polygonize/Polygonizer;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;->this$0:Lorg/locationtech/jts/operation/polygonize/Polygonizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/jts/operation/polygonize/Polygonizer;Lorg/locationtech/jts/operation/polygonize/Polygonizer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/locationtech/jts/operation/polygonize/Polygonizer;
    .param p2, "x1"    # Lorg/locationtech/jts/operation/polygonize/Polygonizer$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;-><init>(Lorg/locationtech/jts/operation/polygonize/Polygonizer;)V

    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 61
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;->this$0:Lorg/locationtech/jts/operation/polygonize/Polygonizer;

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v0, p1}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->access$000(Lorg/locationtech/jts/operation/polygonize/Polygonizer;Lorg/locationtech/jts/geom/LineString;)V

    .line 63
    :cond_0
    return-void
.end method
