.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;
.super Landroid/graphics/Point;
.source "SimpleFastPointOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LabelledPoint"
.end annotation


# instance fields
.field private mlabel:Ljava/lang/String;

.field final synthetic this$0:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;Landroid/graphics/Point;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->this$0:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;

    .line 47
    invoke-direct {p0, p2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 48
    iput-object p3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->mlabel:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->mlabel:Ljava/lang/String;

    return-object v0
.end method
