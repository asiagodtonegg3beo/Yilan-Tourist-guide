.class Lkawa/ReplDocument$4;
.super Ljava/lang/Object;
.source "ReplDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument;->checkingPendingInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplDocument;


# direct methods
.method constructor <init>(Lkawa/ReplDocument;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 171
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v1, v3, Lkawa/ReplDocument;->outputMark:I

    .line 172
    .local v1, "inputStart":I
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->endMark:I

    if-gt v1, v3, :cond_2

    .line 174
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    iget-object v0, v3, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 175
    .local v0, "b":Lgnu/lists/CharBuffer;
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v2

    .line 176
    .local v2, "lineAfter":I
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->endMark:I

    if-ne v2, v3, :cond_0

    .line 177
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    const/4 v4, -0x1

    iput v4, v3, Lkawa/ReplDocument;->endMark:I

    .line 178
    :cond_0
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->outputMark:I

    if-ne v1, v3, :cond_1

    .line 179
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    add-int/lit8 v4, v2, 0x1

    iput v4, v3, Lkawa/ReplDocument;->outputMark:I

    .line 180
    :cond_1
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v4, v3, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    monitor-enter v4

    .line 182
    :try_start_0
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v0, v1, v5}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    .line 183
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v4

    .line 187
    .end local v0    # "b":Lgnu/lists/CharBuffer;
    .end local v2    # "lineAfter":I
    :cond_2
    return-void

    .line 184
    .restart local v0    # "b":Lgnu/lists/CharBuffer;
    .restart local v2    # "lineAfter":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
