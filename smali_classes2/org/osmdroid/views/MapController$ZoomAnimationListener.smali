.class public Lorg/osmdroid/views/MapController$ZoomAnimationListener;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ZoomAnimationListener"
.end annotation


# instance fields
.field private mMapController:Lorg/osmdroid/views/MapController;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapController;)V
    .locals 0
    .param p1, "mapController"    # Lorg/osmdroid/views/MapController;

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Lorg/osmdroid/views/MapController$ZoomAnimationListener;->mMapController:Lorg/osmdroid/views/MapController;

    .line 552
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 561
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimationListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationEnd()V

    .line 562
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 567
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 556
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimationListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationStart()V

    .line 557
    return-void
.end method
