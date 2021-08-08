.class public abstract Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.super Ljava/lang/Object;
.source "SpeechRecognizerController.java"


# instance fields
.field speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addListener(Lcom/google/appinventor/components/runtime/SpeechListener;)V
    .locals 0
    .param p1, "speechListener"    # Lcom/google/appinventor/components/runtime/SpeechListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    .line 20
    return-void
.end method

.method start()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method stop()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
