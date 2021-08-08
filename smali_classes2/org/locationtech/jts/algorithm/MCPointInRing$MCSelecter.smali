.class Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;
.super Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;
.source "MCPointInRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/algorithm/MCPointInRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MCSelecter"
.end annotation


# instance fields
.field p:Lorg/locationtech/jts/geom/Coordinate;

.field final synthetic this$0:Lorg/locationtech/jts/algorithm/MCPointInRing;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/algorithm/MCPointInRing;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/algorithm/MCPointInRing;
    .param p2, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;->this$0:Lorg/locationtech/jts/algorithm/MCPointInRing;

    invoke-direct {p0}, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;-><init>()V

    .line 48
    iput-object p2, p0, Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 49
    return-void
.end method


# virtual methods
.method public select(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 2
    .param p1, "ls"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;->this$0:Lorg/locationtech/jts/algorithm/MCPointInRing;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;->p:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, p1}, Lorg/locationtech/jts/algorithm/MCPointInRing;->access$000(Lorg/locationtech/jts/algorithm/MCPointInRing;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineSegment;)V

    .line 54
    return-void
.end method
