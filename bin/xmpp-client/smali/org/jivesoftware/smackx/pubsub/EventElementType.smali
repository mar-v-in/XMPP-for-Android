.class public final enum Lorg/jivesoftware/smackx/pubsub/EventElementType;
.super Ljava/lang/Enum;
.source "EventElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/EventElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum collection:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum configuration:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum delete:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum purge:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum subscription:Lorg/jivesoftware/smackx/pubsub/EventElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const-string v1, "collection"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->collection:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const-string v1, "configuration"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->configuration:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const-string v1, "delete"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->delete:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 32
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const-string v1, "items"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const-string v1, "purge"

    invoke-direct {v0, v1, v7}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->purge:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 38
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const-string v1, "subscription"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->subscription:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/EventElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->collection:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->configuration:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->delete:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->purge:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/EventElementType;->subscription:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/EventElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/EventElementType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/EventElementType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/EventElementType;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
