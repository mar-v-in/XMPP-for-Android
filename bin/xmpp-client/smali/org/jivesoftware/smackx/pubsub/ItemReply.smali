.class public final enum Lorg/jivesoftware/smackx/pubsub/ItemReply;
.super Ljava/lang/Enum;
.source "ItemReply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/ItemReply;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemReply;

.field public static final enum owner:Lorg/jivesoftware/smackx/pubsub/ItemReply;

.field public static final enum publisher:Lorg/jivesoftware/smackx/pubsub/ItemReply;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;

    const-string v1, "owner"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ItemReply;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;->owner:Lorg/jivesoftware/smackx/pubsub/ItemReply;

    .line 27
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;

    const-string v1, "publisher"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/ItemReply;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;->publisher:Lorg/jivesoftware/smackx/pubsub/ItemReply;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/ItemReply;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ItemReply;->owner:Lorg/jivesoftware/smackx/pubsub/ItemReply;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ItemReply;->publisher:Lorg/jivesoftware/smackx/pubsub/ItemReply;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemReply;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ItemReply;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/ItemReply;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemReply;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/ItemReply;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
