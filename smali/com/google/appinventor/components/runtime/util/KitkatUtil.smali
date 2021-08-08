.class public final Lcom/google/appinventor/components/runtime/util/KitkatUtil;
.super Ljava/lang/Object;
.source "KitkatUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 39
    .local v0, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ltz v2, :cond_0

    .line 40
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 42
    :cond_0
    return-object v1
.end method

.method public static getMinHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public static getMinWidth(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    goto :goto_0
.end method
