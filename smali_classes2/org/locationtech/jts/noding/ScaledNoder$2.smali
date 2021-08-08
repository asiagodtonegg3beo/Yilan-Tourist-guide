.class Lorg/locationtech/jts/noding/ScaledNoder$2;
.super Ljava/lang/Object;
.source "ScaledNoder.java"

# interfaces
.implements Lorg/locationtech/jts/util/CollectionUtil$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/noding/ScaledNoder;->rescale(Ljava/util/Collection;)V
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
    .line 105
    iput-object p1, p0, Lorg/locationtech/jts/noding/ScaledNoder$2;->this$0:Lorg/locationtech/jts/noding/ScaledNoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 107
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/noding/SegmentString;

    .line 108
    .local v0, "ss":Lorg/locationtech/jts/noding/SegmentString;
    iget-object v1, p0, Lorg/locationtech/jts/noding/ScaledNoder$2;->this$0:Lorg/locationtech/jts/noding/ScaledNoder;

    invoke-interface {v0}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/locationtech/jts/noding/ScaledNoder;->access$100(Lorg/locationtech/jts/noding/ScaledNoder;[Lorg/locationtech/jts/geom/Coordinate;)V

    .line 109
    const/4 v1, 0x0

    return-object v1
.end method
