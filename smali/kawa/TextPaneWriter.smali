.class Lkawa/TextPaneWriter;
.super Ljava/io/Writer;
.source "ReplPaneOutPort.java"


# instance fields
.field document:Lkawa/ReplDocument;

.field str:Ljava/lang/String;

.field style:Ljavax/swing/text/AttributeSet;


# direct methods
.method public constructor <init>(Lkawa/ReplDocument;Ljavax/swing/text/AttributeSet;)V
    .locals 1
    .param p1, "document"    # Lkawa/ReplDocument;
    .param p2, "style"    # Ljavax/swing/text/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lkawa/TextPaneWriter;->document:Lkawa/ReplDocument;

    .line 83
    iput-object p2, p0, Lkawa/TextPaneWriter;->style:Ljavax/swing/text/AttributeSet;

    .line 84
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lkawa/TextPaneWriter;->flush()V

    .line 118
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 108
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, ""

    iput-object v1, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v0}, Lkawa/TextPaneWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    .end local v0    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized write(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 89
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lkawa/TextPaneWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lkawa/TextPaneWriter;->document:Lkawa/ReplDocument;

    iget-object v1, p0, Lkawa/TextPaneWriter;->style:Ljavax/swing/text/AttributeSet;

    invoke-virtual {v0, p1, v1}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 96
    return-void
.end method

.method public declared-synchronized write([CII)V
    .locals 1
    .param p1, "data"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkawa/TextPaneWriter;->flush()V

    .line 101
    if-eqz p3, :cond_0

    .line 102
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lkawa/TextPaneWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
