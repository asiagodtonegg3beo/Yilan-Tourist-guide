.class Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
.super Ljava/lang/Object;
.source "GMLHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/io/gml2/GMLHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Handler"
.end annotation


# instance fields
.field protected attrs:Lorg/xml/sax/Attributes;

.field protected children:Ljava/util/List;

.field protected strategy:Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;

.field protected text:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "strategy"    # Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    .line 75
    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    .line 87
    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0, p2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->strategy:Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;

    .line 73
    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    return-void
.end method

.method public create(Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .locals 1
    .param p1, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->strategy:Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;

    invoke-interface {v0, p0, p1}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;->parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keep(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method
