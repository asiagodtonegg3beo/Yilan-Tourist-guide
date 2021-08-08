.class public Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SimpleLocationOverlay.java"


# instance fields
.field protected PERSON_HOTSPOT:Landroid/graphics/Point;

.field protected PERSON_ICON:Landroid/graphics/Bitmap;

.field protected mLocation:Lorg/osmdroid/util/GeoPoint;

.field protected final mPaint:Landroid/graphics/Paint;

.field private final screenCoords:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->person:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;-><init>(Landroid/graphics/Bitmap;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "theIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x18

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    .line 38
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    .line 52
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    .line 53
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 79
    if-nez p3, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 81
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 83
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    .end local v0    # "pj":Lorg/osmdroid/views/Projection;
    :cond_0
    return-void
.end method

.method public getMyLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 76
    return-void
.end method

.method public setLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0
    .param p1, "mp"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 61
    return-void
.end method

.method public setPersonIcon(Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "hotspot"    # Landroid/graphics/Point;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    .line 95
    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    .line 96
    return-void
.end method
