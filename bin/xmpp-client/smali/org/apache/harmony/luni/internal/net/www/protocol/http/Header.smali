.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private keyTable:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private props:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    .line 54
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 53
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    return-void

    .line 66
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 67
    .local v3, next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 69
    .local v4, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v2, linkedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 75
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    invoke-interface {v6, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, element:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 90
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 92
    .restart local v0       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    invoke-interface {v1, p1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 103
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 104
    .local v0, clone:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    .line 105
    new-instance v4, Ljava/util/TreeMap;

    .line 106
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 105
    iput-object v4, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    .line 107
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    .line 108
    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 107
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    return-object v0

    .line 108
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 110
    .local v2, next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    .line 109
    check-cast v3, Ljava/util/LinkedList;

    .line 111
    .local v3, v:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v6, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v6, v4, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v0           #clone:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;
    .end local v2           #next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .end local v3           #v:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public get(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 127
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 142
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 143
    .local v0, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFieldMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/util/HashMap;

    .line 160
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    .line 159
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 161
    .local v1, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    .line 162
    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 161
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3

    .line 162
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .local v0, next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 164
    .local v2, v:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 179
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 215
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/SortedMap;

    invoke-interface {v3, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 216
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 217
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_1
    return-void

    .line 219
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 220
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 222
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    .local v2, propKey:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .locals 3
    .parameter "statusLine"

    .prologue
    .line 237
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->statusLine:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 247
    return-void
.end method
