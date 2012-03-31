.class public final enum Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
.super Ljava/lang/Enum;
.source "PubSubNamespace.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASIC:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

.field public static final enum ERROR:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

.field public static final enum EVENT:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

.field public static final enum OWNER:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;


# instance fields
.field private fragment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v1, "BASIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->BASIC:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v1, "ERROR"

    const-string v2, "errors"

    invoke-direct {v0, v1, v4, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->ERROR:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v1, "EVENT"

    const-string v2, "event"

    invoke-direct {v0, v1, v5, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->EVENT:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    const-string v1, "OWNER"

    const-string v2, "owner"

    invoke-direct {v0, v1, v6, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->OWNER:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->BASIC:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->ERROR:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->EVENT:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->OWNER:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "fragment"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->fragment:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    return-object v0
.end method

.method public static valueOfFromXmlns(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .locals 4
    .parameter "ns"

    .prologue
    const/16 v3, 0x23

    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 28
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 29
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, suffix:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v2

    .line 32
    .end local v1           #suffix:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->BASIC:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    goto :goto_0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlns()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const-string v0, "http://jabber.org/protocol/pubsub"

    .line 49
    .local v0, ns:Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    return-object v0
.end method
