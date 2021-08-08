.class public abstract Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;
.super Ljava/lang/Object;
.source "AsyncCallbackFacade.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<TS;>;"
    }
.end annotation


# instance fields
.field protected final callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade<TS;TT;>;"
    .local p1, "target":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    .line 23
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade<TS;TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 28
    return-void
.end method
