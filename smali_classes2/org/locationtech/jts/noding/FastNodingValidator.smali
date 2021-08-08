.class public Lorg/locationtech/jts/noding/FastNodingValidator;
.super Ljava/lang/Object;
.source "FastNodingValidator.java"


# instance fields
.field private findAllIntersections:Z

.field private isValid:Z

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

.field private segStrings:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->findAllIntersections:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->isValid:Z

    .line 68
    iput-object p1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segStrings:Ljava/util/Collection;

    .line 69
    return-void
.end method

.method private checkInteriorIntersections()V
    .locals 3

    .prologue
    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->isValid:Z

    .line 145
    new-instance v1, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    iget-object v2, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    iput-object v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    .line 146
    iget-object v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    iget-boolean v2, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->findAllIntersections:Z

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->setFindAllIntersections(Z)V

    .line 147
    new-instance v0, Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-direct {v0}, Lorg/locationtech/jts/noding/MCIndexNoder;-><init>()V

    .line 148
    .local v0, "noder":Lorg/locationtech/jts/noding/MCIndexNoder;
    iget-object v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/noding/MCIndexNoder;->setSegmentIntersector(Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 149
    iget-object v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segStrings:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/noding/MCIndexNoder;->computeNodes(Ljava/util/Collection;)V

    .line 150
    iget-object v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    invoke-virtual {v1}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->hasIntersection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->isValid:Z

    .line 154
    :cond_0
    return-void
.end method

.method public static computeIntersections(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 48
    new-instance v0, Lorg/locationtech/jts/noding/FastNodingValidator;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/noding/FastNodingValidator;-><init>(Ljava/util/Collection;)V

    .line 49
    .local v0, "nv":Lorg/locationtech/jts/noding/FastNodingValidator;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/noding/FastNodingValidator;->setFindAllIntersections(Z)V

    .line 50
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/FastNodingValidator;->isValid()Z

    .line 51
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/FastNodingValidator;->getIntersections()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private execute()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/noding/FastNodingValidator;->checkInteriorIntersections()V

    goto :goto_0
.end method


# virtual methods
.method public checkValid()V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/locationtech/jts/noding/FastNodingValidator;->execute()V

    .line 126
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->isValid:Z

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/locationtech/jts/geom/TopologyException;

    invoke-virtual {p0}, Lorg/locationtech/jts/noding/FastNodingValidator;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    invoke-virtual {v2}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->getInteriorIntersection()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    iget-boolean v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->isValid:Z

    if-eqz v1, :cond_0

    const-string v1, "no intersections found"

    .line 111
    :goto_0
    return-object v1

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    invoke-virtual {v1}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->getIntersectionSegments()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 111
    .local v0, "intSegs":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found non-noded intersection between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 112
    invoke-static {v2, v3}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    .line 114
    invoke-static {v2, v3}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIntersections()Ljava/util/List;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->segInt:Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    invoke-virtual {v0}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->getIntersections()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/locationtech/jts/noding/FastNodingValidator;->execute()V

    .line 97
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->isValid:Z

    return v0
.end method

.method public setFindAllIntersections(Z)V
    .locals 0
    .param p1, "findAllIntersections"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/locationtech/jts/noding/FastNodingValidator;->findAllIntersections:Z

    .line 74
    return-void
.end method
