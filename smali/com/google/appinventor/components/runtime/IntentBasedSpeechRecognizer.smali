.class public Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.source "IntentBasedSpeechRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private recognizerIntent:Landroid/content/Intent;

.field private requestCode:I

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V
    .locals 0
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 27
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget v1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->requestCode:I

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 46
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->result:Ljava/lang/String;

    .line 52
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->result:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/SpeechListener;->onResult(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void

    .line 50
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->result:Ljava/lang/String;

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 32
    iget v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->requestCode:I

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->requestCode:I

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
