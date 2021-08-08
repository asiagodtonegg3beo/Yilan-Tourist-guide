.class Lorg/locationtech/jts/precision/SimpleMinimumClearance$VertexCoordinateFilter;
.super Ljava/lang/Object;
.source "SimpleMinimumClearance.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/precision/SimpleMinimumClearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VertexCoordinateFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/precision/SimpleMinimumClearance;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/precision/SimpleMinimumClearance;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$VertexCoordinateFilter;->this$0:Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 3
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$VertexCoordinateFilter;->this$0:Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    invoke-static {v0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->access$000(Lorg/locationtech/jts/precision/SimpleMinimumClearance;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    new-instance v1, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;

    iget-object v2, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$VertexCoordinateFilter;->this$0:Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    invoke-direct {v1, v2, p1}, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;-><init>(Lorg/locationtech/jts/precision/SimpleMinimumClearance;Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 112
    return-void
.end method
