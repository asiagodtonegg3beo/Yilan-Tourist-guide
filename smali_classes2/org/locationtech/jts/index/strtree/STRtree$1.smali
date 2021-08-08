.class final Lorg/locationtech/jts/index/strtree/STRtree$1;
.super Ljava/lang/Object;
.source "STRtree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/index/strtree/STRtree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 83
    .end local p1    # "o1":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-static {v0}, Lorg/locationtech/jts/index/strtree/STRtree;->access$000(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v2

    check-cast p2, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 84
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-interface {p2}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-static {v0}, Lorg/locationtech/jts/index/strtree/STRtree;->access$000(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v0

    .line 82
    invoke-static {v2, v3, v0, v1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->compareDoubles(DD)I

    move-result v0

    return v0
.end method
