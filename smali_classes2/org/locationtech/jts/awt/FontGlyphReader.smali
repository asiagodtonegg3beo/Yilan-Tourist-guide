.class public Lorg/locationtech/jts/awt/FontGlyphReader;
.super Ljava/lang/Object;
.source "FontGlyphReader.java"


# static fields
.field private static final FLATNESS_FACTOR:D = 400.0

.field public static final FONT_MONOSPACED:Ljava/lang/String; = "Monospaced"

.field public static final FONT_SANSERIF:Ljava/lang/String; = "SansSerif"

.field public static final FONT_SANSSERIF:Ljava/lang/String; = "SansSerif"

.field public static final FONT_SERIF:Ljava/lang/String; = "Serif"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/awt/Font;DLorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "font"    # Ljava/awt/Font;
    .param p2, "flatness"    # D
    .param p4, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 112
    .local v0, "chs":[C
    new-instance v1, Ljava/awt/font/FontRenderContext;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v1, v7, v8, v9}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    .line 113
    .local v1, "fontContext":Ljava/awt/font/FontRenderContext;
    invoke-virtual {p1, v1, v0}, Ljava/awt/Font;->createGlyphVector(Ljava/awt/font/FontRenderContext;[C)Ljava/awt/font/GlyphVector;

    move-result-object v3

    .line 114
    .local v3, "gv":Ljava/awt/font/GlyphVector;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v6, "polys":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/awt/font/GlyphVector;->getNumGlyphs()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 116
    invoke-virtual {v3, v4}, Ljava/awt/font/GlyphVector;->getGlyphOutline(I)Ljava/awt/Shape;

    move-result-object v7

    invoke-static {v7, p2, p3, p4}, Lorg/locationtech/jts/awt/ShapeReader;->read(Ljava/awt/Shape;DLorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 117
    .local v2, "geom":Lorg/locationtech/jts/geom/Geometry;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 118
    invoke-virtual {v2, v5}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 115
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {p4, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v7

    return-object v7
.end method

.method public static read(Ljava/lang/String;Ljava/awt/Font;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "font"    # Ljava/awt/Font;
    .param p2, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    div-double v0, v2, v4

    .line 97
    .local v0, "flatness":D
    invoke-static {p0, p1, v0, v1, p2}, Lorg/locationtech/jts/awt/FontGlyphReader;->read(Ljava/lang/String;Ljava/awt/Font;DLorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    return-object v2
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;ILorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "pointSize"    # I
    .param p3, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 82
    new-instance v0, Ljava/awt/Font;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-static {p0, v0, p3}, Lorg/locationtech/jts/awt/FontGlyphReader;->read(Ljava/lang/String;Ljava/awt/Font;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method
