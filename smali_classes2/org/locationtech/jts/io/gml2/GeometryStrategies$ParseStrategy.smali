.class interface abstract Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;
.super Ljava/lang/Object;
.source "GeometryStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/io/gml2/GeometryStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ParseStrategy"
.end annotation


# virtual methods
.method public abstract parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
