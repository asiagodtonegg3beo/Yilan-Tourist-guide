.class Lcom/google/appinventor/components/runtime/PhoneStatus$1;
.super Ljava/lang/Object;
.source "PhoneStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PhoneStatus;->setHmacSeedReturnCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneStatus;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PhoneStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/PhoneStatus;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneStatus;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PhoneStatus;->access$000(Lcom/google/appinventor/components/runtime/PhoneStatus;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 158
    return-void
.end method
