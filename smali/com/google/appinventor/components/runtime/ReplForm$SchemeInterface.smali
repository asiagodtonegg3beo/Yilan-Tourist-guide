.class public Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;
.super Ljava/lang/Object;
.source "ReplForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ReplForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SchemeInterface"
.end annotation


# instance fields
.field scheme:Lgnu/expr/Language;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ReplForm;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ReplForm;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "scheme"

    invoke-static {v0}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->scheme:Lgnu/expr/Language;

    .line 92
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->adoptMainThreadClassLoader()V

    return-void
.end method

.method private adoptMainThreadClassLoader()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 97
    .local v0, "mainClassLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 98
    .local v1, "myThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/String;)V
    .locals 2
    .param p1, "sexp"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    new-instance v1, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method
