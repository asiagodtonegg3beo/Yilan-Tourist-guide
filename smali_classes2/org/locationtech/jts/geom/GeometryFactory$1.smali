.class Lorg/locationtech/jts/geom/GeometryFactory$1;
.super Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateSequenceOperation;
.source "GeometryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/geom/GeometryFactory;->createGeometry(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/geom/GeometryFactory;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/locationtech/jts/geom/GeometryFactory$1;->this$0:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateSequenceOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public edit(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "coordSeq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 561
    iget-object v0, p0, Lorg/locationtech/jts/geom/GeometryFactory$1;->this$0:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->access$000(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    return-object v0
.end method
