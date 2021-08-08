.class public Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;
.super Landroid/widget/LinearLayout;
.source "ItemizedOverlayControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;
    }
.end annotation


# instance fields
.field protected mCenterToButton:Landroid/widget/ImageButton;

.field protected mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

.field protected mNavToButton:Landroid/widget/ImageButton;

.field protected mNextButton:Landroid/widget/ImageButton;

.field protected mPreviousButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x2

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    .line 39
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->previous:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    .line 43
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->next:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    .line 46
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    .line 49
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->navto_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->initViewListeners()V

    .line 66
    return-void
.end method

.method private initViewListeners()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$3;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$3;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$4;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$4;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method public setItemizedOverlayControlViewListener(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;)V
    .locals 0
    .param p1, "lis"    # Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    .line 74
    return-void
.end method

.method public setNavToVisible(I)V
    .locals 1
    .param p1, "pVisibility"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public setNextEnabled(Z)V
    .locals 1
    .param p1, "pEnabled"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 78
    return-void
.end method

.method public setPreviousEnabled(Z)V
    .locals 1
    .param p1, "pEnabled"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 82
    return-void
.end method
