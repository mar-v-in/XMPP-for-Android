.class public final enum Lorg/jivesoftware/smack/packet/Presence$Type;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/packet/Presence$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final enum available:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final enum error:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final enum subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final enum subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final enum unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final enum unsubscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

.field public static final enum unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "available"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 114
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "unavailable"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;I)V

    .line 117
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 119
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "subscribe"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;I)V

    .line 122
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 124
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "subscribed"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;I)V

    .line 127
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 129
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "unsubscribe"

    invoke-direct {v0, v1, v7}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;I)V

    .line 132
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 134
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "unsubscribed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;I)V

    .line 137
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 139
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, "error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence$Type;-><init>(Ljava/lang/String;I)V

    .line 142
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->error:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 107
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/Presence$Type;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->error:Lorg/jivesoftware/smack/packet/Presence$Type;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Presence$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/Presence$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Presence$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
