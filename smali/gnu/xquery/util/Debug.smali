.class public Lgnu/xquery/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static traceFilename:Ljava/lang/String;

.field public static tracePort:Lgnu/mapping/OutPort;

.field public static tracePrefix:Ljava/lang/String;

.field public static traceShouldAppend:Z

.field public static traceShouldFlush:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "XQuery-trace: "

    sput-object v0, Lgnu/xquery/util/Debug;->tracePrefix:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;

    .line 9
    const-string v0, "XQuery-trace.log"

    sput-object v0, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/xquery/util/Debug;->traceShouldFlush:Z

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/xquery/util/Debug;->traceShouldAppend:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized trace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 15
    const-class v5, Lgnu/xquery/util/Debug;

    monitor-enter v5

    :try_start_0
    sget-object v1, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .local v1, "out":Lgnu/mapping/OutPort;
    if-nez v1, :cond_0

    .line 20
    :try_start_1
    new-instance v2, Lgnu/mapping/OutPort;

    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v6, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    sget-boolean v7, Lgnu/xquery/util/Debug;->traceShouldAppend:Z

    invoke-direct {v4, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v4}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "out":Lgnu/mapping/OutPort;
    .local v2, "out":Lgnu/mapping/OutPort;
    move-object v1, v2

    .line 28
    .end local v2    # "out":Lgnu/mapping/OutPort;
    .restart local v1    # "out":Lgnu/mapping/OutPort;
    :goto_0
    :try_start_2
    sput-object v1, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;

    .line 30
    :cond_0
    sget-object v4, Lgnu/xquery/util/Debug;->tracePrefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 32
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lgnu/mapping/OutPort;->print(C)V

    .line 33
    new-instance v3, Lgnu/xml/XMLPrinter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 34
    .local v3, "xout":Lgnu/xml/XMLPrinter;
    invoke-virtual {v3, p0}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->println()V

    .line 36
    sget-boolean v4, Lgnu/xquery/util/Debug;->traceShouldFlush:Z

    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :cond_1
    monitor-exit v5

    return-object p0

    .line 23
    .end local v3    # "xout":Lgnu/xml/XMLPrinter;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_3
    new-instance v4, Lgnu/mapping/WrappedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not open \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for fn:trace output"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 15
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "out":Lgnu/mapping/OutPort;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
