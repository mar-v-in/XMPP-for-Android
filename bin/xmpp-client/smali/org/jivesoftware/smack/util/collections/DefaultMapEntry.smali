.class public final Lorg/jivesoftware/smack/util/collections/DefaultMapEntry;
.super Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;
.source "DefaultMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lorg/jivesoftware/smack/util/collections/DefaultMapEntry;,"Lorg/jivesoftware/smack/util/collections/DefaultMapEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lorg/jivesoftware/smack/util/collections/DefaultMapEntry;,"Lorg/jivesoftware/smack/util/collections/DefaultMapEntry<TK;TV;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/util/collections/KeyValue;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/KeyValue",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lorg/jivesoftware/smack/util/collections/DefaultMapEntry;,"Lorg/jivesoftware/smack/util/collections/DefaultMapEntry<TK;TV;>;"
    .local p1, pair:Lorg/jivesoftware/smack/util/collections/KeyValue;,"Lorg/jivesoftware/smack/util/collections/KeyValue<TK;TV;>;"
    invoke-interface {p1}, Lorg/jivesoftware/smack/util/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/jivesoftware/smack/util/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    return-void
.end method
