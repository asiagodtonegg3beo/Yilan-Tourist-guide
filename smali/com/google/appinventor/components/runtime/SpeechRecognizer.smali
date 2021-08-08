.class public Lcom/google/appinventor/components/runtime/SpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SpeechRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;
.implements Lcom/google/appinventor/components/runtime/SpeechListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using Voice Recognition to convert from speech to text"
    iconName = "images/speechRecognizer.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECORD_AUDIO,android.permission.INTERNET"
.end annotation


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private recognizerIntent:Landroid/content/Intent;

.field private result:Ljava/lang/String;

.field private speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

.field private useLegacy:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    .line 56
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->useLegacy:Z

    .line 65
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->useLegacy:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->UseLegacy(Z)V

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/SpeechRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    return p1
.end method


# virtual methods
.method public AfterGettingText(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "partial"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 149
    const-string v0, "AfterGettingText"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public BeforeGettingText()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 135
    const-string v0, "BeforeGettingText"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public GetText()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 90
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    if-nez v1, :cond_0

    .line 91
    move-object v0, p0

    .line 92
    .local v0, "me":Lcom/google/appinventor/components/runtime/SpeechRecognizer;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;-><init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Lcom/google/appinventor/components/runtime/SpeechRecognizer;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    .end local v0    # "me":Lcom/google/appinventor/components/runtime/SpeechRecognizer;
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->BeforeGettingText()V

    .line 112
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->addListener(Lcom/google/appinventor/components/runtime/SpeechListener;)V

    .line 113
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->start()V

    goto :goto_0
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    return-object v0
.end method

.method public Stop()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->stop()V

    .line 127
    :cond_0
    return-void
.end method

.method public UseLegacy(Z)V
    .locals 3
    .param p1, "useLegacy"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, a separate dialog is used to recognize speech (the default). If false, speech is recognized in the background and partial results are also provided."
    .end annotation

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->useLegacy:Z

    .line 210
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->Stop()V

    .line 211
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 212
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    goto :goto_0
.end method

.method public UseLegacy()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, an app can retain their older behaviour."
    .end annotation

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->useLegacy:Z

    return v0
.end method

.method public onClear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->Stop()V

    .line 182
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    .line 183
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    .line 184
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "errorNumber"    # I

    .prologue
    .line 175
    const-string v0, "GetText"

    .line 176
    .local v0, "functionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public onPartialResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->AfterGettingText(Ljava/lang/String;Z)V

    .line 159
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->AfterGettingText(Ljava/lang/String;Z)V

    .line 168
    return-void
.end method
