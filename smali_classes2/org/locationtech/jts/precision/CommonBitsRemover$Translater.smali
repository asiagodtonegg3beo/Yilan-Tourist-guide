.class Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;
.super Ljava/lang/Object;
.source "CommonBitsRemover.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/precision/CommonBitsRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Translater"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/precision/CommonBitsRemover;

.field trans:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/precision/CommonBitsRemover;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "this$0"    # Lorg/locationtech/jts/precision/CommonBitsRemover;
    .param p2, "trans"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;->this$0:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;->trans:Lorg/locationtech/jts/geom/Coordinate;

    .line 138
    iput-object p2, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;->trans:Lorg/locationtech/jts/geom/Coordinate;

    .line 139
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 10
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "i"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-interface {p1, p2, v8}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    iget-object v6, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;->trans:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double v0, v4, v6

    .line 143
    .local v0, "xp":D
    invoke-interface {p1, p2, v9}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    iget-object v6, p0, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;->trans:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double v2, v4, v6

    .line 144
    .local v2, "yp":D
    invoke-interface {p1, p2, v8, v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 145
    invoke-interface {p1, p2, v9, v2, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 146
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isGeometryChanged()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method
