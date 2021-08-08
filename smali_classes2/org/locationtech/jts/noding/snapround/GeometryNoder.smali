.class public Lorg/locationtech/jts/noding/snapround/GeometryNoder;
.super Ljava/lang/Object;
.source "GeometryNoder.java"


# instance fields
.field private geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

.field private isValidityChecked:Z

.field private pm:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 1
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->isValidityChecked:Z

    .line 60
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->pm:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 61
    return-void
.end method

.method private extractLines(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p1, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, "lines":Ljava/util/List;
    new-instance v2, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v2, "lce":Lorg/locationtech/jts/geom/util/LinearComponentExtracter;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 119
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    goto :goto_0

    .line 121
    .end local v0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-object v3
.end method

.method private toLineStrings(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p1, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "lines":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/noding/SegmentString;

    .line 106
    .local v2, "ss":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {v2}, Lorg/locationtech/jts/noding/SegmentString;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 108
    iget-object v3, p0, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-interface {v2}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v2    # "ss":Lorg/locationtech/jts/noding/SegmentString;
    :cond_1
    return-object v1
.end method

.method private toSegmentStrings(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .param p1, "lines"    # Ljava/util/Collection;

    .prologue
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "segStrings":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    .line 129
    .local v1, "line":Lorg/locationtech/jts/geom/LineString;
    new-instance v3, Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/locationtech/jts/noding/NodedSegmentString;-><init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v1    # "line":Lorg/locationtech/jts/geom/LineString;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public node(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .param p1, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 82
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 83
    .local v0, "geom0":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 85
    invoke-direct {p0, p1}, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->extractLines(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->toSegmentStrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "segStrings":Ljava/util/List;
    new-instance v4, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;

    iget-object v5, p0, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->pm:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {v4, v5}, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 88
    .local v4, "sr":Lorg/locationtech/jts/noding/Noder;
    invoke-interface {v4, v3}, Lorg/locationtech/jts/noding/Noder;->computeNodes(Ljava/util/Collection;)V

    .line 89
    invoke-interface {v4}, Lorg/locationtech/jts/noding/Noder;->getNodedSubstrings()Ljava/util/Collection;

    move-result-object v1

    .line 92
    .local v1, "nodedLines":Ljava/util/Collection;
    iget-boolean v5, p0, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->isValidityChecked:Z

    if-eqz v5, :cond_0

    .line 93
    new-instance v2, Lorg/locationtech/jts/noding/NodingValidator;

    invoke-direct {v2, v1}, Lorg/locationtech/jts/noding/NodingValidator;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v2, "nv":Lorg/locationtech/jts/noding/NodingValidator;
    invoke-virtual {v2}, Lorg/locationtech/jts/noding/NodingValidator;->checkValid()V

    .line 97
    .end local v2    # "nv":Lorg/locationtech/jts/noding/NodingValidator;
    :cond_0
    invoke-direct {p0, v1}, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->toLineStrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public setValidate(Z)V
    .locals 0
    .param p1, "isValidityChecked"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/locationtech/jts/noding/snapround/GeometryNoder;->isValidityChecked:Z

    .line 71
    return-void
.end method
