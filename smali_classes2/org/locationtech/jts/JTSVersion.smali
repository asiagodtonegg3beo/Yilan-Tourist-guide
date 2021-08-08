.class public Lorg/locationtech/jts/JTSVersion;
.super Ljava/lang/Object;
.source "JTSVersion.java"


# static fields
.field public static final CURRENT_VERSION:Lorg/locationtech/jts/JTSVersion;

.field public static final MAJOR:I = 0x1

.field public static final MINOR:I = 0xe

.field public static final PATCH:I = 0x0

.field private static final releaseInfo:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/locationtech/jts/JTSVersion;

    invoke-direct {v0}, Lorg/locationtech/jts/JTSVersion;-><init>()V

    sput-object v0, Lorg/locationtech/jts/JTSVersion;->CURRENT_VERSION:Lorg/locationtech/jts/JTSVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lorg/locationtech/jts/JTSVersion;->CURRENT_VERSION:Lorg/locationtech/jts/JTSVersion;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getMajor()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0xe

    return v0
.end method

.method public getPatch()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    const-string v0, "1.14.0"

    .line 93
    .local v0, "ver":Ljava/lang/String;
    const-string v1, ""

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .end local v0    # "ver":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
