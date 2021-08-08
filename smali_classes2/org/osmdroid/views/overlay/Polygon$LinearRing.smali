.class Lorg/osmdroid/views/overlay/Polygon$LinearRing;
.super Ljava/lang/Object;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/Polygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinearRing"
.end annotation


# instance fields
.field mConvertedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalPoints:[[I

.field mPrecomputed:Z

.field final synthetic this$0:Lorg/osmdroid/views/overlay/Polygon;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "this$0"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    const/4 v2, 0x0

    .line 55
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    .line 58
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    .line 59
    return-void
.end method


# virtual methods
.method protected buildPathPortion(Lorg/osmdroid/views/Projection;)V
    .locals 11
    .param p1, "pj"    # Lorg/osmdroid/views/Projection;

    .prologue
    const/4 v10, 0x1

    .line 90
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 91
    .local v6, "size":I
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 129
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-boolean v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    if-nez v7, :cond_2

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 97
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 98
    .local v3, "pt":Landroid/graphics/Point;
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v7, v8, v3}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v3    # "pt":Landroid/graphics/Point;
    :cond_1
    iput-boolean v10, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    .line 103
    .end local v0    # "i":I
    :cond_2
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 106
    .local v1, "projectedPoint0":Landroid/graphics/Point;
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v7}, Lorg/osmdroid/views/overlay/Polygon;->access$000(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 109
    .local v4, "screenPoint0":Landroid/graphics/Point;
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v7}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 111
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v6, :cond_4

    .line 113
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 114
    .local v2, "projectedPoint1":Landroid/graphics/Point;
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v7}, Lorg/osmdroid/views/overlay/Polygon;->access$200(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 116
    .local v5, "screenPoint1":Landroid/graphics/Point;
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    if-gt v7, v10, :cond_3

    .line 111
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 121
    :cond_3
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v7}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object v7

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    move-object v1, v2

    .line 125
    iget v7, v5, Landroid/graphics/Point;->x:I

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 126
    iget v7, v5, Landroid/graphics/Point;->y:I

    iput v7, v4, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 128
    .end local v2    # "projectedPoint1":Landroid/graphics/Point;
    .end local v5    # "screenPoint1":Landroid/graphics/Point;
    :cond_4
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v7}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0
.end method

.method getPoints()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    array-length v3, v4

    .line 63
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 65
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {v0, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 66
    .local v0, "gp":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "gp":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    return-object v2
.end method

.method setPoints(Ljava/util/List;)V
    .locals 9
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
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v8, 0x0

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 73
    .local v2, "size":I
    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 77
    .local v1, "p":Lorg/osmdroid/util/GeoPoint;
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v4, v4, v0

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v5

    aput v5, v4, v8

    .line 78
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v6

    aput v6, v4, v5

    .line 79
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    goto :goto_0

    .line 82
    .end local v1    # "p":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    iput-boolean v8, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    .line 83
    return-void
.end method
