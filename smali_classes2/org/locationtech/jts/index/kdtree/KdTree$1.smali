.class Lorg/locationtech/jts/index/kdtree/KdTree$1;
.super Ljava/lang/Object;
.source "KdTree.java"

# interfaces
.implements Lorg/locationtech/jts/index/kdtree/KdNodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/index/kdtree/KdTree;->query(Lorg/locationtech/jts/geom/Envelope;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/index/kdtree/KdTree;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/index/kdtree/KdTree;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/index/kdtree/KdTree;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/locationtech/jts/index/kdtree/KdTree$1;->this$0:Lorg/locationtech/jts/index/kdtree/KdTree;

    iput-object p2, p0, Lorg/locationtech/jts/index/kdtree/KdTree$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/locationtech/jts/index/kdtree/KdNode;)V
    .locals 1
    .param p1, "node"    # Lorg/locationtech/jts/index/kdtree/KdNode;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdTree$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method
