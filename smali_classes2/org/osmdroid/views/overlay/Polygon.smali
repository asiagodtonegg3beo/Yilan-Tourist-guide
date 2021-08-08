.class public Lorg/osmdroid/views/overlay/Polygon;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Polygon$OnDragListener;,
        Lorg/osmdroid/views/overlay/Polygon$OnClickListener;,
        Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    }
.end annotation


# instance fields
.field protected mDragMatrix:Landroid/graphics/Matrix;

.field protected mDragStartPoint:Landroid/view/MotionEvent;

.field protected mDraggable:Z

.field protected mFillPaint:Landroid/graphics/Paint;

.field private mHoles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/views/overlay/Polygon$LinearRing;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsDragged:Z

.field protected mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

.field protected mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

.field private mOutline:Lorg/osmdroid/views/overlay/Polygon$LinearRing;

.field protected mOutlinePaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTempPoint2:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 140
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    .line 142
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint1:Landroid/graphics/Point;

    .line 143
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint2:Landroid/graphics/Point;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 147
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragMatrix:Landroid/graphics/Matrix;

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    .line 165
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    .line 168
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/Polygon$LinearRing;-><init>(Lorg/osmdroid/views/overlay/Polygon;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutline:Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/ArrayList;

    .line 174
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint1:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$200(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint2:Landroid/graphics/Point;

    return-object v0
.end method

.method public static pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;
    .locals 5
    .param p0, "center"    # Lorg/osmdroid/util/GeoPoint;
    .param p1, "radiusInMeters"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/GeoPoint;",
            "D)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0x3c

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    .local v0, "circlePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    const/16 v3, 0x168

    if-ge v1, v3, :cond_0

    .line 275
    int-to-float v3, v1

    invoke-virtual {p0, p1, p2, v3}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    .line 276
    .local v2, "onCircle":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 278
    .end local v2    # "onCircle":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    return-object v0
.end method

.method public static pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "rectangle"    # Lorg/osmdroid/util/BoundingBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/api/IGeoPoint;>;"
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    return-object v0
.end method

.method public static pointsAsRect(Lorg/osmdroid/util/BoundingBoxE6;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "rectangle"    # Lorg/osmdroid/util/BoundingBoxE6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBoxE6;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/api/IGeoPoint;>;"
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    return-object v0
.end method

.method public static pointsAsRect(Lorg/osmdroid/util/GeoPoint;DD)Ljava/util/List;
    .locals 13
    .param p0, "center"    # Lorg/osmdroid/util/GeoPoint;
    .param p1, "lengthInMeters"    # D
    .param p3, "widthInMeters"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/GeoPoint;",
            "DD)",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, p1

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p0, v8, v9, v5}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 315
    .local v0, "east":Lorg/osmdroid/util/GeoPoint;
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, p3

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p0, v8, v9, v5}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 316
    .local v4, "south":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    sub-double v6, v8, v10

    .line 317
    .local v6, "westLon":D
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    sub-double v2, v8, v10

    .line 318
    .local v2, "northLat":D
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v5, v2, v3, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v2, v3, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    return-object v1
.end method

.method private shiftRing(Lorg/osmdroid/views/overlay/Polygon$LinearRing;FFLorg/osmdroid/views/Projection;)V
    .locals 8
    .param p1, "ring"    # Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "proj"    # Lorg/osmdroid/views/Projection;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 404
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v4, v5, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 405
    .local v0, "gp":Lorg/osmdroid/util/GeoPoint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 406
    iget-object v3, p1, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 407
    .local v2, "pt":Landroid/graphics/Point;
    iget-object v3, p1, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v3, v3, v1

    aget v3, v3, v6

    iget-object v4, p1, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {p4, v3, v4, v5}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 408
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint1:Landroid/graphics/Point;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {p4, v3, v4}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 409
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint2:Landroid/graphics/Point;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 410
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon;->mTempPoint2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, v3, v4, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    .line 412
    iget-object v3, p1, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v4

    aput v4, v3, v6

    .line 413
    iget-object v3, p1, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v4

    aput v4, v3, v7

    .line 415
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {p4, v3, v4, v2}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v2    # "pt":Landroid/graphics/Point;
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;

    .prologue
    .line 484
    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;->visit(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 485
    return-void
.end method

.method public contains(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 359
    :goto_0
    return v2

    .line 353
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 354
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 355
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 357
    .local v1, "region":Landroid/graphics/Region;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Region;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 327
    if-eqz p3, :cond_0

    .line 343
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 332
    .local v1, "pj":Lorg/osmdroid/views/Projection;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 334
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutline:Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    invoke-virtual {v2, v1}, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->buildPathPortion(Lorg/osmdroid/views/Projection;)V

    .line 336
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    .line 337
    .local v0, "hole":Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->buildPathPortion(Lorg/osmdroid/views/Projection;)V

    goto :goto_1

    .line 340
    .end local v0    # "hole":Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 341
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 342
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 7
    .param p1, "start"    # Landroid/view/MotionEvent;
    .param p2, "end"    # Landroid/view/MotionEvent;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v6, 0x0

    .line 392
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    .line 393
    .local v3, "proj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 394
    .local v0, "dX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v1, v4, v5

    .line 395
    .local v1, "dY":F
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutline:Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    invoke-direct {p0, v4, v0, v1, v3}, Lorg/osmdroid/views/overlay/Polygon;->shiftRing(Lorg/osmdroid/views/overlay/Polygon$LinearRing;FFLorg/osmdroid/views/Projection;)V

    .line 396
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    .line 397
    .local v2, "hole":Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    invoke-direct {p0, v2, v0, v1, v3}, Lorg/osmdroid/views/overlay/Polygon;->shiftRing(Lorg/osmdroid/views/overlay/Polygon$LinearRing;FFLorg/osmdroid/views/Projection;)V

    goto :goto_0

    .line 399
    .end local v2    # "hole":Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    :cond_0
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 400
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 401
    return-void
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getHoles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    .line 254
    .local v0, "hole":Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v0    # "hole":Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    :cond_0
    return-object v1
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutline:Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mDraggable:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polygon;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "start"    # Landroid/view/MotionEvent;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 385
    .local v0, "dX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 386
    .local v1, "dY":F
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 387
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 388
    return-void
.end method

.method protected onClickDefault(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "eventPos"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 471
    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutline:Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    .line 478
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 479
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polygon;->onDestroy()V

    .line 480
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 421
    .local v0, "touched":Z
    if-eqz v0, :cond_1

    .line 422
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mDraggable:Z

    if-eqz v1, :cond_2

    .line 423
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mIsDragged:Z

    .line 424
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polygon;->closeInfoWindow()V

    .line 425
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 426
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 429
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v1, p2}, Lorg/osmdroid/views/overlay/Polygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 436
    :cond_1
    :goto_0
    return v0

    .line 430
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-eqz v1, :cond_1

    .line 431
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 432
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 432
    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 431
    invoke-interface {v2, p0, p2, v1}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 370
    .local v2, "tapped":Z
    if-eqz v2, :cond_0

    .line 371
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 372
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 373
    .local v1, "position":Lorg/osmdroid/util/GeoPoint;
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-nez v3, :cond_1

    .line 374
    invoke-virtual {p0, p0, p2, v1}, Lorg/osmdroid/views/overlay/Polygon;->onClickDefault(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v2

    .line 379
    .end local v0    # "pj":Lorg/osmdroid/views/Projection;
    .end local v1    # "position":Lorg/osmdroid/util/GeoPoint;
    .end local v2    # "tapped":Z
    :cond_0
    :goto_0
    return v2

    .line 376
    .restart local v0    # "pj":Lorg/osmdroid/views/Projection;
    .restart local v1    # "position":Lorg/osmdroid/util/GeoPoint;
    .restart local v2    # "tapped":Z
    :cond_1
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    invoke-interface {v3, p0, p2, v1}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 440
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mDraggable:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mIsDragged:Z

    if-eqz v2, :cond_2

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 442
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mIsDragged:Z

    .line 443
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, v1, p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 444
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 449
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v1, p2}, Lorg/osmdroid/views/overlay/Polygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 450
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDrag(Lorg/osmdroid/views/overlay/Polygon;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 456
    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Polygon;->mDraggable:Z

    .line 208
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    return-void
.end method

.method public setHoles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/ArrayList;

    .line 244
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 245
    .local v1, "sourceHole":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/Polygon$LinearRing;-><init>(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 246
    .local v0, "newHole":Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->setPoints(Ljava/util/List;)V

    .line 247
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v0    # "newHole":Lorg/osmdroid/views/overlay/Polygon$LinearRing;
    .end local v1    # "sourceHole":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .prologue
    .line 260
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 261
    return-void
.end method

.method public setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 265
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
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
    .line 239
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutline:Lorg/osmdroid/views/overlay/Polygon$LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->setPoints(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 228
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setEnabled(Z)V

    .line 233
    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v0, :cond_0

    .line 492
    :cond_0
    return-void
.end method

.method public showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2
    .param p1, "position"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0, p0, p1, v1, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    goto :goto_0
.end method
