.class public Lorg/jivesoftware/smack/util/collections/ReferenceMap;
.super Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1594ca03984908d7L


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .local p0, this:Lorg/jivesoftware/smack/util/collections/ReferenceMap;,"Lorg/jivesoftware/smack/util/collections/ReferenceMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x1

    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    move-object v0, p0

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"

    .prologue
    .line 97
    .local p0, this:Lorg/jivesoftware/smack/util/collections/ReferenceMap;,"Lorg/jivesoftware/smack/util/collections/ReferenceMap<TK;TV;>;"
    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 136
    .local p0, this:Lorg/jivesoftware/smack/util/collections/ReferenceMap;,"Lorg/jivesoftware/smack/util/collections/ReferenceMap<TK;TV;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 137
    return-void
.end method

.method public constructor <init>(IIIFZ)V
    .locals 0
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"
    .parameter "purgeValues"

    .prologue
    .line 159
    .local p0, this:Lorg/jivesoftware/smack/util/collections/ReferenceMap;,"Lorg/jivesoftware/smack/util/collections/ReferenceMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"
    .parameter "purgeValues"

    .prologue
    .line 115
    .local p0, this:Lorg/jivesoftware/smack/util/collections/ReferenceMap;,"Lorg/jivesoftware/smack/util/collections/ReferenceMap<TK;TV;>;"
    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 116
    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 117
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lorg/jivesoftware/smack/util/collections/ReferenceMap;,"Lorg/jivesoftware/smack/util/collections/ReferenceMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 168
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/ReferenceMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 169
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Lorg/jivesoftware/smack/util/collections/ReferenceMap;,"Lorg/jivesoftware/smack/util/collections/ReferenceMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 177
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/ReferenceMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 178
    return-void
.end method
