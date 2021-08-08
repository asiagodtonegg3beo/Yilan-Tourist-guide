.class Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
.super Ljava/lang/Object;
.source "Ev3BinaryParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatLiteral"
.end annotation


# instance fields
.field public size:I

.field public symbol:C


# direct methods
.method public constructor <init>(CI)V
    .locals 0
    .param p1, "symbol"    # C
    .param p2, "size"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-char p1, p0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->symbol:C

    .line 50
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    .line 51
    return-void
.end method
