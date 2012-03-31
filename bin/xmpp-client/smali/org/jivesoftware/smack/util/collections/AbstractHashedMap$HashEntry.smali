.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
.super Ljava/lang/Object;
.source "AbstractHashedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/jivesoftware/smack/util/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Lorg/jivesoftware/smack/util/collections/KeyValue",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected hashCode:I

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "hashCode"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;ITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p3, key:Ljava/lang/Object;,"TK;"
    .local p4, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 155
    iput p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    .line 156
    iput-object p3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 157
    iput-object p4, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashEntry<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    if-ne p1, p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    move v1, v2

    .line 166
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 168
    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    .local v0, other:Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 171
    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 169
    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 188
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 187
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 198
    .local v0, old:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 199
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    .local p0, this:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,"Lorg/jivesoftware/smack/util/collections/AbstractHashedMap<TK;TV;>.HashEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method
