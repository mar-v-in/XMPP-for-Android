.class public final enum Lorg/jivesoftware/smack/packet/Message$Type;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/packet/Message$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final enum chat:Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final enum error:Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final enum groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final enum headline:Lorg/jivesoftware/smack/packet/Message$Type;

.field public static final enum normal:Lorg/jivesoftware/smack/packet/Message$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;I)V

    .line 240
    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 242
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "chat"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;I)V

    .line 245
    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 247
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "groupchat"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;I)V

    .line 250
    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 252
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "headline"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;I)V

    .line 255
    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->headline:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 257
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Type;

    const-string v1, "error"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smack/packet/Message$Type;-><init>(Ljava/lang/String;I)V

    .line 260
    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->error:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 235
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/Message$Type;

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->headline:Lorg/jivesoftware/smack/packet/Message$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->error:Lorg/jivesoftware/smack/packet/Message$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Message$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Type;
    .locals 2
    .parameter "name"

    .prologue
    .line 264
    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smack/packet/Message$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/Message$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->ENUM$VALUES:[Lorg/jivesoftware/smack/packet/Message$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
