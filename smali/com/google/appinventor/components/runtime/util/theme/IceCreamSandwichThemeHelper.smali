.class public Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;
.super Ljava/lang/Object;
.source "IceCreamSandwichThemeHelper.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;


# instance fields
.field private final activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    .line 23
    return-void
.end method


# virtual methods
.method public hasActionBar()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestActionBar()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 28
    return-void
.end method

.method public setActionBarAnimation(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public setActionBarVisible(Z)Z
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-nez v0, :cond_1

    .line 34
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    check-cast v1, Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    check-cast v2, Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "ActionBar"

    const/16 v5, 0x38b

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    move v1, v3

    .line 43
    :goto_0
    return v1

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 43
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "black"    # Z

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 71
    if-eqz p2, :cond_1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\"black\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    goto :goto_0
.end method
