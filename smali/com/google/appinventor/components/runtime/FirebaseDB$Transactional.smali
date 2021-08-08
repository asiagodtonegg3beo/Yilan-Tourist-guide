.class abstract Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
.super Ljava/lang/Object;
.source "FirebaseDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Transactional"
.end annotation


# instance fields
.field final arg1:Ljava/lang/Object;

.field final arg2:Ljava/lang/Object;

.field final retv:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "retv"    # Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->arg1:Ljava/lang/Object;

    .line 115
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->arg2:Ljava/lang/Object;

    .line 116
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->retv:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    .line 117
    return-void
.end method


# virtual methods
.method getResult()Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->retv:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    return-object v0
.end method

.method abstract run(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
.end method
