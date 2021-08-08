.class Lorg/locationtech/jts/noding/ScaledNoder$1;
.super Ljava/lang/Object;
.source "ScaledNoder.java"

# interfaces
.implements Lorg/locationtech/jts/util/CollectionUtil$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/noding/ScaledNoder;->scale(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/noding/ScaledNoder;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/noding/ScaledNoder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/noding/ScaledNoder;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/locationtech/jts/noding/ScaledNoder$1;->this$0:Lorg/locationtech/jts/noding/ScaledNoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 78
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/noding/SegmentString;

    .line 79
    .local v0, "ss":Lorg/locationtech/jts/noding/SegmentString;
    new-instance v1, Lorg/locationtech/jts/noding/NodedSegmentString;

    iget-object v2, p0, Lorg/locationtech/jts/noding/ScaledNoder$1;->this$0:Lorg/locationtech/jts/noding/ScaledNoder;

    invoke-interface {v0}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/locationtech/jts/noding/ScaledNoder;->access$000(Lorg/locationtech/jts/noding/ScaledNoder;[Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-interface {v0}, Lorg/locationtech/jts/noding/SegmentString;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/noding/NodedSegmentString;-><init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    return-object v1
.end method
