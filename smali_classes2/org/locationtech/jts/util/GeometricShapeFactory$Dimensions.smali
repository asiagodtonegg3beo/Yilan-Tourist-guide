.class public Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;
.super Ljava/lang/Object;
.source "GeometricShapeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/util/GeometricShapeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Dimensions"
.end annotation


# instance fields
.field public base:Lorg/locationtech/jts/geom/Coordinate;

.field public centre:Lorg/locationtech/jts/geom/Coordinate;

.field public height:D

.field final synthetic this$0:Lorg/locationtech/jts/util/GeometricShapeFactory;

.field public width:D


# direct methods
.method protected constructor <init>(Lorg/locationtech/jts/util/GeometricShapeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/util/GeometricShapeFactory;

    .prologue
    .line 391
    iput-object p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->this$0:Lorg/locationtech/jts/util/GeometricShapeFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getCentre()Lorg/locationtech/jts/geom/Coordinate;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 404
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    iget-object v1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 435
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v0, :cond_0

    .line 436
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    add-double/2addr v4, v6

    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    add-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    .line 442
    :goto_0
    return-object v1

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v0, :cond_1

    .line 439
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    div-double/2addr v4, v12

    sub-double/2addr v2, v4

    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    div-double/2addr v6, v12

    add-double/2addr v4, v6

    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    div-double/2addr v8, v12

    sub-double/2addr v6, v8

    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    goto :goto_0

    .line 442
    :cond_1
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-wide v4, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    iget-wide v8, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    move-wide v6, v2

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    goto :goto_0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 422
    iget-wide v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    return-wide v0
.end method

.method public getMinSize()D
    .locals 4

    .prologue
    .line 418
    iget-wide v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    iget-wide v2, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    return-wide v0
.end method

.method public setBase(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "base"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 398
    iput-object p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    return-void
.end method

.method public setCentre(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "centre"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 401
    iput-object p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    return-void
.end method

.method public setEnvelope(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 6
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 428
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    .line 429
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    .line 430
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->base:Lorg/locationtech/jts/geom/Coordinate;

    .line 431
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->centre()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->centre:Lorg/locationtech/jts/geom/Coordinate;

    .line 432
    return-void
.end method

.method public setHeight(D)V
    .locals 1
    .param p1, "height"    # D

    .prologue
    .line 424
    iput-wide p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    return-void
.end method

.method public setSize(D)V
    .locals 1
    .param p1, "size"    # D

    .prologue
    .line 412
    iput-wide p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->height:D

    .line 413
    iput-wide p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    .line 414
    return-void
.end method

.method public setWidth(D)V
    .locals 1
    .param p1, "width"    # D

    .prologue
    .line 420
    iput-wide p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->width:D

    return-void
.end method
