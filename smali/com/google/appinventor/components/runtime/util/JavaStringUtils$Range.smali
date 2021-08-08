.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
.super Ljava/lang/Object;
.source "JavaStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field end:I

.field start:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->start:I

    .line 128
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    .line 129
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->text:Ljava/lang/String;

    .line 130
    return-void
.end method
