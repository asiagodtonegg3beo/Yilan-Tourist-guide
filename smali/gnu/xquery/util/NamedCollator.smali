.class public Lgnu/xquery/util/NamedCollator;
.super Ljava/text/Collator;
.source "NamedCollator.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final UNICODE_CODEPOINT_COLLATION:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/collation/codepoint"

.field public static final codepointCollation:Lgnu/xquery/util/NamedCollator;


# instance fields
.field collator:Ljava/text/Collator;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    invoke-direct {v0}, Lgnu/xquery/util/NamedCollator;-><init>()V

    sput-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 38
    sget-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    iput-object v1, v0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    return-void
.end method

.method public static codepointCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v2, 0x0

    .local v2, "i1":I
    const/4 v4, 0x0

    .line 56
    .local v4, "i2":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 57
    .local v6, "len1":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "len2":I
    move v5, v4

    .end local v4    # "i2":I
    .local v5, "i2":I
    move v3, v2

    .line 60
    .end local v2    # "i1":I
    .local v3, "i1":I
    :goto_0
    if-ne v3, v6, :cond_1

    .line 61
    if-ne v5, v7, :cond_0

    const/4 v8, 0x0

    :goto_1
    move v4, v5

    .end local v5    # "i2":I
    .restart local v4    # "i2":I
    move v2, v3

    .line 73
    .end local v3    # "i1":I
    .restart local v2    # "i1":I
    :goto_2
    return v8

    .line 61
    .end local v2    # "i1":I
    .end local v4    # "i2":I
    .restart local v3    # "i1":I
    .restart local v5    # "i2":I
    :cond_0
    const/4 v8, -0x1

    goto :goto_1

    .line 62
    :cond_1
    if-ne v5, v7, :cond_2

    .line 63
    const/4 v8, 0x1

    move v4, v5

    .end local v5    # "i2":I
    .restart local v4    # "i2":I
    move v2, v3

    .end local v3    # "i1":I
    .restart local v2    # "i1":I
    goto :goto_2

    .line 64
    .end local v2    # "i1":I
    .end local v4    # "i2":I
    .restart local v3    # "i1":I
    .restart local v5    # "i2":I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i1":I
    .restart local v2    # "i1":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 65
    .local v0, "c1":I
    const v8, 0xd800

    if-lt v0, v8, :cond_3

    const v8, 0xdc00

    if-ge v0, v8, :cond_3

    if-ge v2, v6, :cond_3

    .line 66
    const v8, 0xd800

    sub-int v8, v0, v8

    mul-int/lit16 v8, v8, 0x400

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i1":I
    .restart local v3    # "i1":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v10, 0xdc00

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    const/high16 v9, 0x10000

    add-int v0, v8, v9

    move v2, v3

    .line 68
    .end local v3    # "i1":I
    .restart local v2    # "i1":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i2":I
    .restart local v4    # "i2":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 69
    .local v1, "c2":I
    const v8, 0xd800

    if-lt v1, v8, :cond_4

    const v8, 0xdc00

    if-ge v1, v8, :cond_4

    if-ge v4, v7, :cond_4

    .line 70
    const v8, 0xd800

    sub-int v8, v1, v8

    mul-int/lit16 v8, v8, 0x400

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i2":I
    .restart local v5    # "i2":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v10, 0xdc00

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    const/high16 v9, 0x10000

    add-int v1, v8, v9

    move v4, v5

    .line 72
    .end local v5    # "i2":I
    .restart local v4    # "i2":I
    :cond_4
    if-eq v0, v1, :cond_6

    .line 73
    if-ge v0, v1, :cond_5

    const/4 v8, -0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    move v5, v4

    .end local v4    # "i2":I
    .restart local v5    # "i2":I
    move v3, v2

    .line 74
    .end local v2    # "i1":I
    .restart local v3    # "i1":I
    goto :goto_0
.end method

.method public static find(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    invoke-direct {v0}, Lgnu/xquery/util/NamedCollator;-><init>()V

    .line 22
    .local v0, "coll":Lgnu/xquery/util/NamedCollator;
    iput-object p0, v0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lgnu/xquery/util/NamedCollator;->resolve()V

    .line 24
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    invoke-virtual {v0, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    invoke-virtual {v0}, Ljava/text/Collator;->hashCode()I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lgnu/xquery/util/NamedCollator;->resolve()V

    .line 112
    return-void
.end method

.method public resolve()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown collation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 105
    return-void
.end method
