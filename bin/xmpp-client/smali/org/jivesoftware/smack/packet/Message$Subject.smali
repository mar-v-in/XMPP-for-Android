.class public Lorg/jivesoftware/smack/packet/Message$Subject;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subject"
.end annotation


# instance fields
.field private final language:Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "language"
    .parameter "subject"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Language cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    if-nez p2, :cond_1

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Subject cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Subject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/packet/Message$Subject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    if-ne p0, p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 192
    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 195
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 197
    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 199
    .local v0, other:Lorg/jivesoftware/smack/packet/Message$Subject;
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 200
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 199
    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 223
    const/16 v0, 0x1f

    .line 224
    .local v0, prime:I
    const/4 v1, 0x1

    .line 225
    .local v1, result:I
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 226
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 227
    return v1
.end method
