.class public Lcom/google/appinventor/components/runtime/util/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# static fields
.field private static final CONTENT_TAG:Ljava/lang/String; = "$content"


# instance fields
.field private currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 20
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 56
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v3, "$content"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 57
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 59
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 76
    :cond_2
    return-void
.end method

.method public getRoot()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 25
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 26
    .local v1, "el":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v4, "$tag"

    invoke-virtual {v1, v4, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v4, "$namespaceUri"

    invoke-virtual {v1, v4, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v4, "$localName"

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object p2, p3

    .end local p2    # "localName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v4, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v4, ":"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    const-string v4, ":"

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "parts":[Ljava/lang/String;
    const-string v4, "$namespace"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v1, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .end local v3    # "parts":[Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 36
    .local v0, "attrs":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 37
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    .end local v0    # "attrs":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v2    # "i":I
    :cond_1
    const-string v4, "$namespace"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    .restart local v0    # "attrs":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .restart local v2    # "i":I
    :cond_2
    const-string v4, "$attributes"

    invoke-virtual {v1, v4, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v4, "$content"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v4, :cond_4

    .line 42
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v5, "$content"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v4, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 44
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p3, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v4, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-interface {v4, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 51
    :goto_2
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 52
    return-void

    .line 49
    :cond_4
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    goto :goto_2
.end method
