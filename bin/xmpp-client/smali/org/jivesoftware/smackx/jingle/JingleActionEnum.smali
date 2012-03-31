.class public final enum Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
.super Ljava/lang/Enum;
.source "JingleActionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/jingle/JingleActionEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTENT_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum CONTENT_ADD:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum CONTENT_MODIFY:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum CONTENT_REMOVE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum SESSION_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum SESSION_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum SESSION_INITIATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum SESSION_TERMINATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum TRANSPORT_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field public static final enum UNKNOWN:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;


# instance fields
.field private actionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v4, v2}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->UNKNOWN:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "CONTENT_ACCEPT"

    const-string v2, "content-accept"

    invoke-direct {v0, v1, v5, v2}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "CONTENT_ADD"

    .line 13
    const-string v2, "content-add"

    invoke-direct {v0, v1, v6, v2}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ADD:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "CONTENT_MODIFY"

    const-string v2, "content-modify"

    invoke-direct {v0, v1, v7, v2}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_MODIFY:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "CONTENT_REMOVE"

    .line 14
    const-string v2, "content-remove"

    invoke-direct {v0, v1, v8, v2}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_REMOVE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "SESSION_ACCEPT"

    const/4 v2, 0x5

    const-string v3, "session-accept"

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "SESSION_INFO"

    const/4 v2, 0x6

    .line 15
    const-string v3, "session-info"

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "SESSION_INITIATE"

    const/4 v2, 0x7

    const-string v3, "session-initiate"

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INITIATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "SESSION_TERMINATE"

    const/16 v2, 0x8

    .line 16
    const-string v3, "session-terminate"

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_TERMINATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    const-string v1, "TRANSPORT_INFO"

    const/16 v2, 0x9

    const-string v3, "transport-info"

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->TRANSPORT_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->UNKNOWN:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_ADD:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_MODIFY:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->CONTENT_REMOVE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_INITIATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_TERMINATE:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->TRANSPORT_INFO:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "inActionCode"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->actionCode:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static getAction(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    .locals 5
    .parameter "inActionCode"

    .prologue
    .line 22
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->values()[Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 27
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 22
    :cond_1
    aget-object v0, v2, v1

    .line 23
    .local v0, jingleAction:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    iget-object v4, v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->actionCode:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->ENUM$VALUES:[Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->actionCode:Ljava/lang/String;

    return-object v0
.end method
