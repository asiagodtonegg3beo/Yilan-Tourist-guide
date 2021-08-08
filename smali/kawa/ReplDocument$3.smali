.class Lkawa/ReplDocument$3;
.super Ljava/lang/Object;
.source "ReplDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplDocument;

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$style:Ljavax/swing/text/AttributeSet;


# direct methods
.method constructor <init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iput-object p2, p0, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    iput-object p3, p0, Lkawa/ReplDocument$3;->val$style:Ljavax/swing/text/AttributeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 148
    iget-object v2, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v2, v2, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v2, v2, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    invoke-virtual {v2}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v2

    iget-object v3, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->outputMark:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 150
    .local v1, "moveCaret":Z
    :goto_0
    iget-object v2, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v3, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->outputMark:I

    iget-object v4, p0, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    iget-object v5, p0, Lkawa/ReplDocument$3;->val$style:Ljavax/swing/text/AttributeSet;

    invoke-virtual {v2, v3, v4, v5}, Lkawa/ReplDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 151
    iget-object v2, p0, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    .local v0, "len":I
    iget-object v2, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v3, v2, Lkawa/ReplDocument;->outputMark:I

    add-int/2addr v3, v0

    iput v3, v2, Lkawa/ReplDocument;->outputMark:I

    .line 153
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v2, v2, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    iget-object v3, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {v2, v3}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 155
    :cond_0
    return-void

    .line 148
    .end local v0    # "len":I
    .end local v1    # "moveCaret":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
