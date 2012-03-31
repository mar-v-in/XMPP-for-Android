.class public final enum Lorg/jivesoftware/smackx/pubsub/PresenceState;
.super Ljava/lang/Enum;
.source "PresenceState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/PresenceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum away:Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum chat:Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum dnd:Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum online:Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum xa:Lorg/jivesoftware/smackx/pubsub/PresenceState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const-string v1, "chat"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->chat:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const-string v1, "online"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->online:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const-string v1, "away"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->away:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const-string v1, "xa"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->xa:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const-string v1, "dnd"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->dnd:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/PresenceState;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->chat:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->online:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->away:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->xa:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->dnd:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/PresenceState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PresenceState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/PresenceState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/PresenceState;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/PresenceState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
