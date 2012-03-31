.class public Lorg/jivesoftware/smack/packet/Message$Body;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private final language:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "language"
    .parameter "message"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Language cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Body;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/packet/Message$Body;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 129
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 131
    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Body;

    .line 133
    .local v0, other:Lorg/jivesoftware/smack/packet/Message$Body;
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 133
    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 157
    const/16 v0, 0x1f

    .line 158
    .local v0, prime:I
    const/4 v1, 0x1

    .line 159
    .local v1, result:I
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 160
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 161
    return v1
.end method
