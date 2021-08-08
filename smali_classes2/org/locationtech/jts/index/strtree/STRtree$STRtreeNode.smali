.class final Lorg/locationtech/jts/index/strtree/STRtree$STRtreeNode;
.super Lorg/locationtech/jts/index/strtree/AbstractNode;
.source "STRtree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/index/strtree/STRtree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "STRtreeNode"
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/strtree/AbstractNode;-><init>(I)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(ILorg/locationtech/jts/index/strtree/STRtree$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/locationtech/jts/index/strtree/STRtree$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/strtree/STRtree$STRtreeNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected computeBounds()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "bounds":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/STRtree$STRtreeNode;->getChildBoundables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 63
    .local v1, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    .end local v0    # "bounds":Lorg/locationtech/jts/geom/Envelope;
    invoke-interface {v1}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0, v3}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    .restart local v0    # "bounds":Lorg/locationtech/jts/geom/Envelope;
    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v1}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    goto :goto_0

    .line 70
    .end local v1    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_1
    return-object v0
.end method
