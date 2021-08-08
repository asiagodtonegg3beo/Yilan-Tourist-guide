.class public Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileApproximater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileApproximater;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pMapTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 111
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-virtual {v2, p1}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x3

    invoke-static {v1, v2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 117
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
