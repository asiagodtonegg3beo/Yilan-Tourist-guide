.class final Lorg/locationtech/jts/index/strtree/STRtree$3;
.super Ljava/lang/Object;
.source "STRtree.java"

# interfaces
.implements Lorg/locationtech/jts/index/strtree/AbstractSTRtree$IntersectsOp;


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
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intersects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "aBounds"    # Ljava/lang/Object;
    .param p2, "bBounds"    # Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, Lorg/locationtech/jts/geom/Envelope;

    .end local p1    # "aBounds":Ljava/lang/Object;
    check-cast p2, Lorg/locationtech/jts/geom/Envelope;

    .end local p2    # "bBounds":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    return v0
.end method
