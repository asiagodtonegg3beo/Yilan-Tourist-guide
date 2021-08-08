.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final out:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    .line 530
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/PrintStream;Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/PrintStream;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method private static hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 4
    .param p0, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 756
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeColorProperty(Ljava/lang/String;I)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 559
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, ",\""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "\":\"&H"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 562
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "unpadded":Ljava/lang/String;
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 563
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private writeLineGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"LineString\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 624
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 625
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method private writeMultipolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 7
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 629
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "\"geometry\":{\"type\":\"MultiPolygon\",\"coordinates\":["

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 630
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 631
    .local v3, "pointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 632
    .local v1, "holePointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    const/4 v0, 0x1

    .line 633
    .local v0, "first":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 634
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 635
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 636
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 638
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 639
    .local v2, "holePoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 640
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    goto :goto_1

    .line 643
    .end local v2    # "holePoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 644
    const/4 v0, 0x0

    goto :goto_0

    .line 646
    :cond_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "]}"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method private writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V
    .locals 4
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Point\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 575
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method private writePoints(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v0, 0x1

    .line 607
    .local v0, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 608
    .local v1, "p":Lorg/osmdroid/util/GeoPoint;
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(C)V

    .line 609
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(D)V

    .line 611
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 612
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(D)V

    .line 613
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(D)V

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x0

    .line 619
    goto :goto_0

    .line 620
    .end local v1    # "p":Lorg/osmdroid/util/GeoPoint;
    :cond_2
    return-void
.end method

.method private writePolygonGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 662
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 663
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeMultipolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    goto :goto_0
.end method

.method private writePolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 4
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    const/4 v3, 0x0

    .line 650
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, "\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 651
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 652
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 654
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 655
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    goto :goto_0

    .line 658
    .end local v0    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .prologue
    .line 601
    const-string v0, "fill"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeColorProperty(Ljava/lang/String;I)V

    .line 602
    const-string v0, "fill-opacity"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillOpacity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    .prologue
    .line 595
    const-string v0, "stroke"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeColorProperty(Ljava/lang/String;I)V

    .line 596
    const-string v0, "stroke-opacity"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeOpacity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    const-string v0, "stroke-width"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 587
    const-string v0, "description"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "draggable"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    const-string v0, "infobox"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->EnableInfobox()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    const-string v0, "title"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v0, "visible"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    return-void
.end method

.method private writePropertiesHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "runtimeType"    # Ljava/lang/String;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",\"properties\":{\"$Type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method private writeProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 540
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, ",\""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 542
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "GeoJSONUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to serialize the value of \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" as JSON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 551
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"type\":\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 536
    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 718
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 720
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V

    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 722
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 723
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 724
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 691
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 693
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeLineGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 694
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 695
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 697
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 698
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 672
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 674
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V

    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 676
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 679
    const-string v0, "anchorHorizontal"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 680
    const-string v0, "anchorVertical"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    const-string v0, "height"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    const-string v0, "image"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "width"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 704
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 706
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePolygonGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 707
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 710
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 711
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 4
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 732
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 741
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 742
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 743
    const-string v0, "NorthLatitude"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    const-string v0, "WestLongitude"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    const-string v0, "SouthLatitude"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    const-string v0, "EastLongitude"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    return-object v0
.end method
