.class public Lorg/locationtech/jts/precision/CoordinatePrecisionReducerFilter;
.super Ljava/lang/Object;
.source "CoordinatePrecisionReducerFilter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFilter;


# instance fields
.field private precModel:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 0
    .param p1, "precModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/precision/CoordinatePrecisionReducerFilter;->precModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 44
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 6
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "i"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lorg/locationtech/jts/precision/CoordinatePrecisionReducerFilter;->precModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-interface {p1, p2, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(D)D

    move-result-wide v0

    invoke-interface {p1, p2, v4, v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 52
    iget-object v0, p0, Lorg/locationtech/jts/precision/CoordinatePrecisionReducerFilter;->precModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-interface {p1, p2, v5}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(D)D

    move-result-wide v0

    invoke-interface {p1, p2, v5, v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 53
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isGeometryChanged()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
