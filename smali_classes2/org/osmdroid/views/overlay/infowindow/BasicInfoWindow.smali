.class public Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
.source "BasicInfoWindow.java"


# static fields
.field public static final UNDEFINED_RES_ID:I

.field static mDescriptionId:I

.field static mImageId:I

.field static mSubDescriptionId:I

.field static mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    .line 37
    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    .line 38
    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    .line 39
    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    return-void
.end method

.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 56
    sget v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->setResIds(Landroid/content/Context;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    new-instance v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;-><init>(Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    return-void
.end method

.method private static setResIds(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_title"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_description"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_subdescription"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_image"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    .line 47
    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    if-eqz v1, :cond_0

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    if-eqz v1, :cond_0

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    if-eqz v1, :cond_0

    sget v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    if-nez v1, :cond_1

    .line 49
    :cond_0
    const-string v1, "OsmDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BasicInfoWindow: unable to get res ids in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 9
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 70
    move-object v0, p1

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 71
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "title":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 73
    const-string v6, ""

    .line 74
    :cond_0
    iget-object v7, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    if-nez v7, :cond_1

    .line 75
    const-string v7, "OsmDroid"

    const-string v8, "Error trapped, BasicInfoWindow.open, mView is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v7, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v8, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 80
    .local v5, "temp":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_2
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getSnippet()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "snippet":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 84
    const-string v1, ""

    .line 85
    :cond_3
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 86
    .local v2, "snippetHtml":Landroid/text/Spanned;
    iget-object v7, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v8, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v7, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v8, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    .local v4, "subDescText":Landroid/widget/TextView;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getSubDescription()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "subDesc":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 92
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
