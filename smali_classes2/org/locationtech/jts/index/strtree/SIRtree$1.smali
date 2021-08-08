.class Lorg/locationtech/jts/index/strtree/SIRtree$1;
.super Ljava/lang/Object;
.source "SIRtree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/index/strtree/SIRtree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/index/strtree/SIRtree;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/index/strtree/SIRtree;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/index/strtree/SIRtree;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/locationtech/jts/index/strtree/SIRtree$1;->this$0:Lorg/locationtech/jts/index/strtree/SIRtree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 37
    .end local p1    # "o1":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Interval;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/Interval;->getCentre()D

    move-result-wide v2

    check-cast p2, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 38
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-interface {p2}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/strtree/Interval;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/Interval;->getCentre()D

    move-result-wide v0

    .line 36
    invoke-static {v2, v3, v0, v1}, Lorg/locationtech/jts/index/strtree/AbstractSTRtree;->compareDoubles(DD)I

    move-result v0

    return v0
.end method
