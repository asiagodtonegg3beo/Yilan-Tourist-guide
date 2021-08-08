.class Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;
.super Ljava/lang/Object;
.source "CommonBitsRemover.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/precision/CommonBitsRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommonCoordinateFilter"
.end annotation


# instance fields
.field private commonBitsX:Lorg/locationtech/jts/precision/CommonBits;

.field private commonBitsY:Lorg/locationtech/jts/precision/CommonBits;

.field final synthetic this$0:Lorg/locationtech/jts/precision/CommonBitsRemover;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/precision/CommonBitsRemover;)V
    .locals 1
    .param p1, "this$0"    # Lorg/locationtech/jts/precision/CommonBitsRemover;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;->this$0:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lorg/locationtech/jts/precision/CommonBits;

    invoke-direct {v0}, Lorg/locationtech/jts/precision/CommonBits;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;->commonBitsX:Lorg/locationtech/jts/precision/CommonBits;

    .line 115
    new-instance v0, Lorg/locationtech/jts/precision/CommonBits;

    invoke-direct {v0}, Lorg/locationtech/jts/precision/CommonBits;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;->commonBitsY:Lorg/locationtech/jts/precision/CommonBits;

    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;->commonBitsX:Lorg/locationtech/jts/precision/CommonBits;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/precision/CommonBits;->add(D)V

    .line 120
    iget-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;->commonBitsY:Lorg/locationtech/jts/precision/CommonBits;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/precision/CommonBits;->add(D)V

    .line 121
    return-void
.end method

.method public getCommonCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 6

    .prologue
    .line 125
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;->commonBitsX:Lorg/locationtech/jts/precision/CommonBits;

    .line 126
    invoke-virtual {v1}, Lorg/locationtech/jts/precision/CommonBits;->getCommon()D

    move-result-wide v2

    iget-object v1, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;->commonBitsY:Lorg/locationtech/jts/precision/CommonBits;

    .line 127
    invoke-virtual {v1}, Lorg/locationtech/jts/precision/CommonBits;->getCommon()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 125
    return-object v0
.end method
