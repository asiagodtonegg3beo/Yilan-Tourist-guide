.class public Lorg/osmdroid/views/overlay/OverlayItem;
.super Ljava/lang/Object;
.source "OverlayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    }
.end annotation


# static fields
.field protected static final DEFAULT_MARKER_SIZE:Landroid/graphics/Point;

.field public static final ITEM_STATE_FOCUSED_MASK:I = 0x4

.field public static final ITEM_STATE_PRESSED_MASK:I = 0x1

.field public static final ITEM_STATE_SELECTED_MASK:I = 0x2


# instance fields
.field protected final mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

.field protected mHotspotPlace:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field protected mMarker:Landroid/graphics/drawable/Drawable;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;

.field protected final mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x1a

    const/16 v2, 0x5e

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem;->DEFAULT_MARKER_SIZE:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V
    .locals 0
    .param p1, "aUid"    # Ljava/lang/String;
    .param p2, "aTitle"    # Ljava/lang/String;
    .param p3, "aDescription"    # Ljava/lang/String;
    .param p4, "aGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mTitle:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mSnippet:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

    .line 70
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mUid:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V
    .locals 1
    .param p1, "aTitle"    # Ljava/lang/String;
    .param p2, "aSnippet"    # Ljava/lang/String;
    .param p3, "aGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    .line 63
    return-void
.end method

.method public static setState(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "stateBitset"    # I

    .prologue
    .line 141
    const/4 v3, 0x3

    new-array v2, v3, [I

    .line 142
    .local v2, "states":[I
    const/4 v0, 0x0

    .line 143
    .local v0, "index":I
    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_2

    .line 144
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    const v3, 0x10100a7

    aput v3, v2, v0

    .line 145
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_0

    .line 146
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const v3, 0x10100a1

    aput v3, v2, v1

    move v1, v0

    .line 147
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_0
    and-int/lit8 v3, p1, 0x4

    if-lez v3, :cond_1

    .line 148
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const v3, 0x101009c

    aput v3, v2, v1

    .line 150
    :goto_1
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 151
    return-void

    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_1
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1

    :cond_2
    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "stateBitset"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/osmdroid/views/overlay/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 112
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mHotspotPlace:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-object v0
.end method

.method public getPoint()Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    .line 117
    return-void
.end method

.method public setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V
    .locals 0
    .param p1, "place"    # Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .prologue
    .line 120
    if-nez p1, :cond_0

    sget-object p1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .end local p1    # "place":Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayItem;->mHotspotPlace:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 121
    return-void
.end method
