.class public final enum Lorg/jivesoftware/smack/packet/Presence$Mode;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/packet/Presence$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum available:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum away:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum chat:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum dnd:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum xa:Lorg/jivesoftware/smack/packet/Presence$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "chat"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    .line 76
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->chat:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 78
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "available"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    .line 81
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 83
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "away"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    .line 86
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->away:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 88
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "xa"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    .line 91
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->xa:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 93
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "dnd"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    .line 96
    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->dnd:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->chat:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->away:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->xa:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->dnd:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Presence$Mode;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
