.class Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SpeechRecognizer;->GetText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/SpeechRecognizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Lcom/google/appinventor/components/runtime/SpeechRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->val$me:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.RECORD_AUDIO"

    new-instance v2, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;-><init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 107
    return-void
.end method
