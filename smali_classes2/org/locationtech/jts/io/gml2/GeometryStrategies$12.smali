.class final Lorg/locationtech/jts/io/gml2/GeometryStrategies$12;
.super Ljava/lang/Object;
.source "GeometryStrategies.java"

# interfaces
.implements Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/io/gml2/GeometryStrategies;->loadStrategies()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg"    # Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    .param p2, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 445
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
