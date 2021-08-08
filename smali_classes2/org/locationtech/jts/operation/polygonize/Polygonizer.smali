.class public Lorg/locationtech/jts/operation/polygonize/Polygonizer;
.super Ljava/lang/Object;
.source "Polygonizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;
    }
.end annotation


# instance fields
.field protected cutEdges:Ljava/util/List;

.field protected dangles:Ljava/util/Collection;

.field private extractOnlyPolygonal:Z

.field private geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field protected graph:Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

.field protected holeList:Ljava/util/List;

.field protected invalidRingLines:Ljava/util/List;

.field private isCheckingRingsValid:Z

.field private lineStringAdder:Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;

.field protected polyList:Ljava/util/List;

.field protected shellList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;-><init>(Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "extractOnlyPolygonal"    # Z

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;-><init>(Lorg/locationtech/jts/operation/polygonize/Polygonizer;Lorg/locationtech/jts/operation/polygonize/Polygonizer$1;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->lineStringAdder:Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->dangles:Ljava/util/Collection;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->cutEdges:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->invalidRingLines:Ljava/util/List;

    .line 75
    iput-object v1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->holeList:Ljava/util/List;

    .line 76
    iput-object v1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->shellList:Ljava/util/List;

    .line 77
    iput-object v1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polyList:Ljava/util/List;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->isCheckingRingsValid:Z

    .line 82
    iput-object v1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 101
    iput-boolean p1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->extractOnlyPolygonal:Z

    .line 102
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/operation/polygonize/Polygonizer;Lorg/locationtech/jts/geom/LineString;)V
    .locals 0
    .param p0, "x0"    # Lorg/locationtech/jts/operation/polygonize/Polygonizer;
    .param p1, "x1"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->add(Lorg/locationtech/jts/geom/LineString;)V

    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/LineString;)V
    .locals 2
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 141
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 143
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->graph:Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->graph:Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->graph:Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->addEdge(Lorg/locationtech/jts/geom/LineString;)V

    .line 146
    return-void
.end method

.method private static assignHoleToShell(Lorg/locationtech/jts/operation/polygonize/EdgeRing;Ljava/util/List;)V
    .locals 1
    .param p0, "holeER"    # Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .param p1, "shellList"    # Ljava/util/List;

    .prologue
    .line 301
    invoke-static {p0, p1}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->findEdgeRingContaining(Lorg/locationtech/jts/operation/polygonize/EdgeRing;Ljava/util/List;)Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    move-result-object v0

    .line 302
    .local v0, "shell":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->addHole(Lorg/locationtech/jts/operation/polygonize/EdgeRing;)V

    .line 305
    :cond_0
    return-void
.end method

.method private static assignHolesToShells(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "holeList"    # Ljava/util/List;
    .param p1, "shellList"    # Ljava/util/List;

    .prologue
    .line 288
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 290
    .local v0, "holeER":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-static {v0, p1}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->assignHoleToShell(Lorg/locationtech/jts/operation/polygonize/EdgeRing;Ljava/util/List;)V

    goto :goto_0

    .line 297
    .end local v0    # "holeER":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    :cond_0
    return-void
.end method

.method private static extractPolygons(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .param p0, "shellList"    # Ljava/util/List;
    .param p1, "includeAll"    # Z

    .prologue
    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, "polyList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 347
    .local v0, "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncluded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v0    # "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    :cond_2
    return-object v2
.end method

.method private static findDisjointShells(Ljava/util/List;)V
    .locals 4
    .param p0, "shellList"    # Ljava/util/List;

    .prologue
    .line 308
    invoke-static {p0}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->findOuterShells(Ljava/util/List;)V

    .line 312
    :cond_0
    const/4 v2, 0x0

    .line 313
    .local v2, "isMoreToScan":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 315
    .local v0, "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncludedSet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 317
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->updateIncluded()V

    .line 318
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isIncludedSet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    const/4 v2, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    :cond_2
    if-nez v2, :cond_0

    .line 323
    return-void
.end method

.method private static findOuterShells(Ljava/util/List;)V
    .locals 5
    .param p0, "shellList"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    .line 333
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 335
    .local v0, "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getOuterHole()Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    move-result-object v2

    .line 336
    .local v2, "outerHoleER":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isProcessed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    invoke-virtual {v0, v4}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->setIncluded(Z)V

    .line 338
    invoke-virtual {v2, v4}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->setProcessed(Z)V

    goto :goto_0

    .line 341
    .end local v0    # "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .end local v2    # "outerHoleER":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    :cond_1
    return-void
.end method

.method private findShellsAndHoles(Ljava/util/List;)V
    .locals 3
    .param p1, "edgeRingList"    # Ljava/util/List;

    .prologue
    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->holeList:Ljava/util/List;

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->shellList:Ljava/util/List;

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 278
    .local v0, "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->computeHole()V

    .line 279
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isHole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->holeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->shellList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v0    # "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    :cond_1
    return-void
.end method

.method private findValidRings(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "edgeRingList"    # Ljava/util/List;
    .param p2, "validEdgeRingList"    # Ljava/util/List;
    .param p3, "invalidRingList"    # Ljava/util/List;

    .prologue
    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 265
    .local v0, "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->getLineString()Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v0    # "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    :cond_1
    return-void
.end method

.method private polygonize()V
    .locals 5

    .prologue
    .line 224
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polyList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polyList:Ljava/util/List;

    .line 228
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->graph:Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->graph:Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->deleteDangles()Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->dangles:Ljava/util/Collection;

    .line 231
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->graph:Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->deleteCutEdges()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->cutEdges:Ljava/util/List;

    .line 232
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->graph:Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->getEdgeRings()Ljava/util/List;

    move-result-object v0

    .line 236
    .local v0, "edgeRingList":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v2, "validEdgeRingList":Ljava/util/List;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->invalidRingLines:Ljava/util/List;

    .line 238
    iget-boolean v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->isCheckingRingsValid:Z

    if-eqz v3, :cond_3

    .line 239
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->invalidRingLines:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->findValidRings(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 246
    :goto_1
    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->findShellsAndHoles(Ljava/util/List;)V

    .line 247
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->holeList:Ljava/util/List;

    iget-object v4, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->shellList:Ljava/util/List;

    invoke-static {v3, v4}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->assignHolesToShells(Ljava/util/List;Ljava/util/List;)V

    .line 249
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->shellList:Ljava/util/List;

    new-instance v4, Lorg/locationtech/jts/operation/polygonize/EdgeRing$EnvelopeComparator;

    invoke-direct {v4}, Lorg/locationtech/jts/operation/polygonize/EdgeRing$EnvelopeComparator;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 253
    const/4 v1, 0x1

    .line 254
    .local v1, "includeAll":Z
    iget-boolean v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->extractOnlyPolygonal:Z

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->shellList:Ljava/util/List;

    invoke-static {v3}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->findDisjointShells(Ljava/util/List;)V

    .line 256
    const/4 v1, 0x0

    .line 258
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->shellList:Ljava/util/List;

    invoke-static {v3, v1}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->extractPolygons(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polyList:Ljava/util/List;

    goto :goto_0

    .line 242
    .end local v1    # "includeAll":Z
    :cond_3
    move-object v2, v0

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/util/Collection;)V
    .locals 3
    .param p1, "geomList"    # Ljava/util/Collection;

    .prologue
    .line 114
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 116
    .local v0, "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->add(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0

    .line 118
    .end local v0    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->lineStringAdder:Lorg/locationtech/jts/operation/polygonize/Polygonizer$LineStringAdder;

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 131
    return-void
.end method

.method public getCutEdges()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polygonize()V

    .line 205
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->cutEdges:Ljava/util/List;

    return-object v0
.end method

.method public getDangles()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polygonize()V

    .line 195
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->dangles:Ljava/util/Collection;

    return-object v0
.end method

.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    if-nez v0, :cond_0

    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 180
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polygonize()V

    .line 181
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->extractOnlyPolygonal:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polyList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polyList:Ljava/util/List;

    invoke-static {v1}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometryArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v0

    goto :goto_0
.end method

.method public getInvalidRingLines()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polygonize()V

    .line 215
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->invalidRingLines:Ljava/util/List;

    return-object v0
.end method

.method public getPolygons()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polygonize()V

    .line 168
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->polyList:Ljava/util/List;

    return-object v0
.end method

.method public setCheckRingsValid(Z)V
    .locals 0
    .param p1, "isCheckingRingsValid"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lorg/locationtech/jts/operation/polygonize/Polygonizer;->isCheckingRingsValid:Z

    .line 159
    return-void
.end method
