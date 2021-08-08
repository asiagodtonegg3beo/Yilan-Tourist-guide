.class Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;
.super Ljava/lang/Object;
.source "InteriorPointArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/algorithm/InteriorPointArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeBisectorFinder"
.end annotation


# instance fields
.field private centreY:D

.field private hiY:D

.field private loY:D

.field private poly:Lorg/locationtech/jts/geom/Polygon;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 4
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->hiY:D

    .line 205
    const-wide v0, -0x10000000000001L

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->loY:D

    .line 208
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->poly:Lorg/locationtech/jts/geom/Polygon;

    .line 211
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->hiY:D

    .line 212
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->loY:D

    .line 213
    iget-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->loY:D

    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->hiY:D

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->access$000(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->centreY:D

    .line 214
    return-void
.end method

.method public static getBisectorY(Lorg/locationtech/jts/geom/Polygon;)D
    .locals 4
    .param p0, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 197
    new-instance v0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;-><init>(Lorg/locationtech/jts/geom/Polygon;)V

    .line 198
    .local v0, "finder":Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->getBisectorY()D

    move-result-wide v2

    return-wide v2
.end method

.method private process(Lorg/locationtech/jts/geom/LineString;)V
    .locals 5
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 227
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    .line 228
    .local v1, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 229
    invoke-interface {v1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v2

    .line 230
    .local v2, "y":D
    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->updateInterval(D)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "y":D
    :cond_0
    return-void
.end method

.method private updateInterval(D)V
    .locals 3
    .param p1, "y"    # D

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->centreY:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_1

    .line 236
    iget-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->loY:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 237
    iput-wide p1, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->loY:D

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->centreY:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 240
    iget-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->hiY:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 241
    iput-wide p1, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->hiY:D

    goto :goto_0
.end method


# virtual methods
.method public getBisectorY()D
    .locals 8

    .prologue
    .line 218
    iget-object v3, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->poly:Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->process(Lorg/locationtech/jts/geom/LineString;)V

    .line 219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->poly:Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 220
    iget-object v3, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->poly:Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->process(Lorg/locationtech/jts/geom/LineString;)V

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->hiY:D

    iget-wide v6, p0, Lorg/locationtech/jts/algorithm/InteriorPointArea$SafeBisectorFinder;->loY:D

    invoke-static {v4, v5, v6, v7}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->access$000(DD)D

    move-result-wide v0

    .line 223
    .local v0, "bisectY":D
    return-wide v0
.end method
