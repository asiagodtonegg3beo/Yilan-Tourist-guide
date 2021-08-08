.class public Lgnu/xquery/util/XQException;
.super Ljava/lang/RuntimeException;
.source "XQException.java"


# static fields
.field public static FOER0000_QNAME:Lgnu/mapping/Symbol;


# instance fields
.field public code:Lgnu/mapping/Symbol;

.field public description:Ljava/lang/String;

.field public errorValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-string v0, "http://www.w3.org/2005/xqt-errors"

    const-string v1, "FOER0000"

    const-string v2, "err"

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "code"    # Lgnu/mapping/Symbol;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "errorValue"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    .line 15
    iput-object p2, p0, Lgnu/xquery/util/XQException;->description:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public static error()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Lgnu/xquery/util/XQException;

    sget-object v1, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    invoke-direct {v0, v1, v2, v2}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public static error(Lgnu/mapping/Symbol;)V
    .locals 2
    .param p0, "error"    # Lgnu/mapping/Symbol;

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lgnu/xquery/util/XQException;

    invoke-direct {v0, p0, v1, v1}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/Object;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_1

    .line 35
    :cond_0
    sget-object p0, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    .line 36
    .end local p0    # "error":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lgnu/xquery/util/XQException;

    check-cast p0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "error"    # Ljava/lang/Object;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "errorValue"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_1

    .line 42
    :cond_0
    sget-object p0, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    .line 43
    .end local p0    # "error":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lgnu/xquery/util/XQException;

    check-cast p0, Lgnu/mapping/Symbol;

    invoke-direct {v0, p0, p1, p2}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 49
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgnu/xquery/util/XQException;->description:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 50
    const-string v2, "XQuery-error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :goto_0
    iget-object v2, p0, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    .line 55
    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-object v2, p0, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    :cond_0
    iget-object v2, p0, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_2

    .line 67
    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v2, p0, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 52
    :cond_3
    iget-object v2, p0, Lgnu/xquery/util/XQException;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
