.class public Lorg/osmdroid/views/MapView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BOTTOM_CENTER:I = 0x8

.field public static final BOTTOM_LEFT:I = 0x7

.field public static final BOTTOM_RIGHT:I = 0x9

.field public static final CENTER:I = 0x5

.field public static final CENTER_LEFT:I = 0x4

.field public static final CENTER_RIGHT:I = 0x6

.field public static final TOP_CENTER:I = 0x2

.field public static final TOP_LEFT:I = 0x1

.field public static final TOP_RIGHT:I = 0x3


# instance fields
.field public alignment:I

.field public geoPoint:Lorg/osmdroid/api/IGeoPoint;

.field public offsetX:I

.field public offsetY:I


# direct methods
.method public constructor <init>(IILorg/osmdroid/api/IGeoPoint;III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "geoPoint"    # Lorg/osmdroid/api/IGeoPoint;
    .param p4, "alignment"    # I
    .param p5, "offsetX"    # I
    .param p6, "offsetY"    # I

    .prologue
    const/4 v1, 0x0

    .line 1581
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1582
    if-eqz p3, :cond_0

    .line 1583
    iput-object p3, p0, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    .line 1587
    :goto_0
    iput p4, p0, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    .line 1588
    iput p5, p0, Lorg/osmdroid/views/MapView$LayoutParams;->offsetX:I

    .line 1589
    iput p6, p0, Lorg/osmdroid/views/MapView$LayoutParams;->offsetY:I

    .line 1590
    return-void

    .line 1585
    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 1603
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1604
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    .line 1605
    const/16 v0, 0x8

    iput v0, p0, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    .line 1606
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1609
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1610
    return-void
.end method
