.class public Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.source "ServiceBasedSpeechRecognizer.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private recognizerIntent:Landroid/content/Intent;

.field private result:Ljava/lang/String;

.field private speech:Landroid/speech/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    .line 26
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 27
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    .line 28
    return-void
.end method

.method private getErrorMessage(I)I
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "errCode":I
    packed-switch p1, :pswitch_data_0

    .line 133
    :goto_0
    return v0

    .line 106
    :pswitch_0
    const/16 v0, 0xed9

    .line 107
    goto :goto_0

    .line 109
    :pswitch_1
    const/16 v0, 0xeda

    .line 110
    goto :goto_0

    .line 112
    :pswitch_2
    const/16 v0, 0xedb

    .line 113
    goto :goto_0

    .line 115
    :pswitch_3
    const/16 v0, 0xedc

    .line 116
    goto :goto_0

    .line 118
    :pswitch_4
    const/16 v0, 0xedd

    .line 119
    goto :goto_0

    .line 121
    :pswitch_5
    const/16 v0, 0xede

    .line 122
    goto :goto_0

    .line 124
    :pswitch_6
    const/16 v0, 0xedf

    .line 125
    goto :goto_0

    .line 127
    :pswitch_7
    const/16 v0, 0xee0

    .line 128
    goto :goto_0

    .line 130
    :pswitch_8
    const/16 v0, 0xee1

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 62
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->getErrorMessage(I)I

    move-result v0

    .line 72
    .local v0, "errorNumber":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/SpeechListener;->onError(I)V

    .line 73
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/SpeechListener;->onPartialResult(Ljava/lang/String;)V

    .line 95
    return-void

    .line 91
    :cond_0
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    goto :goto_0
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/SpeechListener;->onResult(Ljava/lang/String;)V

    .line 84
    return-void

    .line 80
    :cond_0
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    goto :goto_0
.end method

.method public onRmsChanged(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 57
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 42
    :cond_0
    return-void
.end method
