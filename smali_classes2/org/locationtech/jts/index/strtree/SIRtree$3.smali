.class Lorg/locationtech/jts/index/strtree/SIRtree$3;
.super Lorg/locationtech/jts/index/strtree/AbstractNode;
.source "SIRtree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/index/strtree/SIRtree;->createNode(I)Lorg/locationtech/jts/index/strtree/AbstractNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/index/strtree/SIRtree;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/index/strtree/SIRtree;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/index/strtree/SIRtree;
    .param p2, "level"    # I

    .prologue
    .line 62
    iput-object p1, p0, Lorg/locationtech/jts/index/strtree/SIRtree$3;->this$0:Lorg/locationtech/jts/index/strtree/SIRtree;

    invoke-direct {p0, p2}, Lorg/locationtech/jts/index/strtree/AbstractNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected computeBounds()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "bounds":Lorg/locationtech/jts/index/strtree/Interval;
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/SIRtree$3;->getChildBoundables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 67
    .local v1, "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lorg/locationtech/jts/index/strtree/Interval;

    .end local v0    # "bounds":Lorg/locationtech/jts/index/strtree/Interval;
    invoke-interface {v1}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/index/strtree/Interval;

    invoke-direct {v0, v3}, Lorg/locationtech/jts/index/strtree/Interval;-><init>(Lorg/locationtech/jts/index/strtree/Interval;)V

    .restart local v0    # "bounds":Lorg/locationtech/jts/index/strtree/Interval;
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v1}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/index/strtree/Interval;

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/index/strtree/Interval;->expandToInclude(Lorg/locationtech/jts/index/strtree/Interval;)Lorg/locationtech/jts/index/strtree/Interval;

    goto :goto_0

    .line 74
    .end local v1    # "childBoundable":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_1
    return-object v0
.end method
