.class public Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;
.super Ljava/lang/Object;
.source "FacetSequenceTreeBuilder.java"


# static fields
.field private static final FACET_SEQUENCE_SIZE:I = 0x6

.field private static final STR_TREE_NODE_CAPACITY:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/geom/CoordinateSequence;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;->addFacetSequences(Lorg/locationtech/jts/geom/CoordinateSequence;Ljava/util/List;)V

    return-void
.end method

.method private static addFacetSequences(Lorg/locationtech/jts/geom/CoordinateSequence;Ljava/util/List;)V
    .locals 5
    .param p0, "pts"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p1, "sections"    # Ljava/util/List;

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "i":I
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    .line 74
    .local v3, "size":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-gt v1, v4, :cond_1

    .line 75
    add-int/lit8 v4, v1, 0x6

    add-int/lit8 v0, v4, 0x1

    .line 78
    .local v0, "end":I
    add-int/lit8 v4, v3, -0x1

    if-lt v0, v4, :cond_0

    .line 79
    move v0, v3

    .line 80
    :cond_0
    new-instance v2, Lorg/locationtech/jts/operation/distance/FacetSequence;

    invoke-direct {v2, p0, v1, v0}, Lorg/locationtech/jts/operation/distance/FacetSequence;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;II)V

    .line 81
    .local v2, "sect":Lorg/locationtech/jts/operation/distance/FacetSequence;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x6

    .line 83
    goto :goto_0

    .line 84
    .end local v0    # "end":I
    .end local v2    # "sect":Lorg/locationtech/jts/operation/distance/FacetSequence;
    :cond_1
    return-void
.end method

.method public static build(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/index/strtree/STRtree;
    .locals 5
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 35
    new-instance v3, Lorg/locationtech/jts/index/strtree/STRtree;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lorg/locationtech/jts/index/strtree/STRtree;-><init>(I)V

    .line 36
    .local v3, "tree":Lorg/locationtech/jts/index/strtree/STRtree;
    invoke-static {p0}, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;->computeFacetSequences(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v2

    .line 37
    .local v2, "sections":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/distance/FacetSequence;

    .line 39
    .local v1, "section":Lorg/locationtech/jts/operation/distance/FacetSequence;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/locationtech/jts/index/strtree/STRtree;->insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v1    # "section":Lorg/locationtech/jts/operation/distance/FacetSequence;
    :cond_0
    invoke-virtual {v3}, Lorg/locationtech/jts/index/strtree/STRtree;->build()V

    .line 42
    return-object v3
.end method

.method private static computeFacetSequences(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "sections":Ljava/util/List;
    new-instance v1, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder$1;

    invoke-direct {v1, v0}, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 68
    return-object v0
.end method
