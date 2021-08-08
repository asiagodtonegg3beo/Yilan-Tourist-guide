.class public Lcom/google/appinventor/components/runtime/NearField;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NearField.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnNewIntentListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component to provide NFC capabilities.  For now this component supports the reading and writing of text tags only (if supported by the device)</p><p>In order to read and write text tags, the component must have its <code>ReadMode</code> property set to True or False respectively.</p><p><strong>Note:</strong> This component will only work on Screen1 of any App Inventor app.</p>"
    iconName = "images/nearfield.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.NFC"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nearfield"


# instance fields
.field private activity:Landroid/app/Activity;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private readMode:Z

.field protected requestCode:I

.field private tagContent:Ljava/lang/String;

.field private textToWrite:Ljava/lang/String;

.field private writeType:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->tagContent:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    .line 71
    iput v1, p0, Lcom/google/appinventor/components/runtime/NearField;->writeType:I

    .line 72
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    .line 73
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 80
    const-string v0, "nearfield"

    const-string v1, "Nearfield component created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public LastMessage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 115
    const-string v0, "nearfield"

    const-string v1, "String message method stared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->tagContent:Ljava/lang/String;

    return-object v0
.end method

.method public ReadMode(Z)V
    .locals 3
    .param p1, "newMode"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the NFC hardware should operate in read or write mode."
    .end annotation

    .prologue
    .line 156
    const-string v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read mode set to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    .line 158
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public ReadMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 127
    const-string v0, "nearfield"

    const-string v1, "boolean method stared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    return v0
.end method

.method public TagRead(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 94
    const-string v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag read: got message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NearField;->tagContent:Ljava/lang/String;

    .line 96
    const-string v0, "TagRead"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public TagWritten()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 104
    const-string v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag written: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "TagWritten"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public TextToWrite()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 136
    const-string v0, "nearfield"

    const-string v1, "String message method stared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    return-object v0
.end method

.method public TextToWrite(Ljava/lang/String;)V
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the content that will be written to the tag when in write mode. This method has no effect if ReadMode is true."
    .end annotation

    .prologue
    .line 171
    const-string v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text to write set to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    .line 173
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/NearField;->writeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public WriteType()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 146
    iget v0, p0, Lcom/google/appinventor/components/runtime/NearField;->writeType:I

    return v0
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    const-string v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nearfield on onNewIntent.  Intent is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NearField;->resolveIntent(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "nearfield"

    const-string v1, "OnPause method started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->disableNFCAdapter(Landroid/app/Activity;Landroid/nfc/NfcAdapter;)V

    .line 212
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nearfield"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nearfield on onResume.  Intent is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method resolveIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    const-string v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolve intent. Intent is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 199
    invoke-static {p1, p0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->resolveNFCIntent(Landroid/content/Intent;Lcom/google/appinventor/components/runtime/NearField;)V

    .line 201
    :cond_0
    return-void
.end method
