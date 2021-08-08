.class Lorg/locationtech/jts/index/strtree/SIRtree$2;
.super Ljava/lang/Object;
.source "SIRtree.java"

# interfaces
.implements Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;


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
    .line 42
    iput-object p1, p0, Lorg/locationtech/jts/index/strtree/SIRtree$2;->this$0:Lorg/locationtech/jts/index/strtree/SIRtree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intersects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "aBounds"    # Ljava/lang/Object;
    .param p2, "bBounds"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lorg/locationtech/jts/index/strtree/Interval;

    .end local p1    # "aBounds":Ljava/lang/Object;
    check-cast p2, Lorg/locationtech/jts/index/strtree/Interval;

    .end local p2    # "bBounds":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/index/strtree/Interval;->intersects(Lorg/locationtech/jts/index/strtree/Interval;)Z

    move-result v0

    return v0
.end method
