.class public Lorg/locationtech/jts/geom/util/LinearComponentExtracter;
.super Ljava/lang/Object;
.source "LinearComponentExtracter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# instance fields
.field private isForcedToLineString:Z

.field private lines:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "lines"    # Ljava/util/Collection;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->isForcedToLineString:Z

    .line 172
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->lines:Ljava/util/Collection;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 1
    .param p1, "lines"    # Ljava/util/Collection;
    .param p2, "isForcedToLineString"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->isForcedToLineString:Z

    .line 180
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->lines:Ljava/util/Collection;

    .line 181
    iput-boolean p2, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->isForcedToLineString:Z

    .line 182
    return-void
.end method

.method public static getGeometry(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-static {p0}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static getGeometry(Lorg/locationtech/jts/geom/Geometry;Z)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "forceToLineString"    # Z

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static getLines(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p0, "geoms"    # Ljava/util/Collection;
    .param p1, "lines"    # Ljava/util/Collection;

    .prologue
    .line 47
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 49
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v0, p1}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;Ljava/util/Collection;)Ljava/util/Collection;

    goto :goto_0

    .line 51
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-object p1
.end method

.method public static getLines(Ljava/util/Collection;Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 3
    .param p0, "geoms"    # Ljava/util/Collection;
    .param p1, "lines"    # Ljava/util/Collection;
    .param p2, "forceToLineString"    # Z

    .prologue
    .line 65
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 67
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v0, p1, p2}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;Ljava/util/Collection;Z)Ljava/util/Collection;

    goto :goto_0

    .line 69
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-object p1
.end method

.method public static getLines(Lorg/locationtech/jts/geom/Geometry;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "lines"    # Ljava/util/Collection;

    .prologue
    .line 82
    instance-of v0, p0, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_0
    return-object p1

    .line 86
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    goto :goto_0
.end method

.method public static getLines(Lorg/locationtech/jts/geom/Geometry;Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "lines"    # Ljava/util/Collection;
    .param p2, "forceToLineString"    # Z

    .prologue
    .line 102
    new-instance v0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;-><init>(Ljava/util/Collection;Z)V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 103
    return-object p1
.end method

.method public static getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLines(Lorg/locationtech/jts/geom/Geometry;Z)Ljava/util/List;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "forceToLineString"    # Z

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "lines":Ljava/util/List;
    new-instance v1, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;

    invoke-direct {v1, v0, p1}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;-><init>(Ljava/util/Collection;Z)V

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 134
    return-object v0
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 197
    iget-boolean v1, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->isForcedToLineString:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    check-cast p1, Lorg/locationtech/jts/geom/LinearRing;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    .line 199
    .local v0, "line":Lorg/locationtech/jts/geom/LineString;
    iget-object v1, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->lines:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v0    # "line":Lorg/locationtech/jts/geom/LineString;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v1, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->lines:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setForceToLineString(Z)V
    .locals 0
    .param p1, "isForcedToLineString"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->isForcedToLineString:Z

    .line 193
    return-void
.end method
