.class public Lcom/google/appinventor/components/runtime/util/theme/ClassicThemeHelper;
.super Ljava/lang/Object;
.source "ClassicThemeHelper.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasActionBar()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public requestActionBar()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public setActionBarAnimation(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 32
    return-void
.end method

.method public setActionBarVisible(Z)Z
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "black"    # Z

    .prologue
    .line 37
    return-void
.end method
